unit uTexLogParser;

interface

uses System.RegularExpressions, System.SysUtils, System.Classes, Vcl.ComCtrls;

type
  TLogSeverity = (lsError, lsWarning, lsBadBox, lsDebug, lsNone);

  TTexLogLine = record
    Severity: TLogSeverity;
    FileName: string;
    Row: integer;
    Description: string;
  public
    procedure Clear;
  end;

  TTexLogLines = array of TTexLogLine;

  TTexLogErrorCount = record
    Error, Warning, BadBox, Debug: integer;
  public
    procedure Clear;
  end;

  TCallback = function(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;

  TPatterns = record
    Regex: TRegEx;
    Callback: TCallback;
  end;

type
  TTexLogParser = class
  public
    class function Parse(output: string; out Res: TTexLogLines; out ResCount: TTexLogErrorCount)
      : Boolean; overload; static;
    class function Parse(output: string; lv: TListView; out ResCount: TTexLogErrorCount): Boolean;
      overload; static;
  end;

implementation

{ TTexLogLine }

procedure TTexLogLine.Clear;
begin
  self.Severity := lsNone;
  self.FileName := '';
  self.Row := 0;
  self.Description := '';
end;

{ TTexLogErrorCount }

procedure TTexLogErrorCount.Clear;
begin
  self.Error := 0;
  self.Warning := 0;
  self.BadBox := 0;
  self.Debug := 0;
end;

function Callback1(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;
begin
  Result := false;
  Res.Clear;
  if aMatch.Groups.item[4].length = aMatch.Groups.item[2].length then
  begin
    Res.Severity := lsError;
    Res.FileName := aFileName;
    Res.Row := strtoint(aMatch.Groups.item[3].Value);
    Res.Description := aMatch.Groups.item[1].Value;
    Result := true;
  end;
end;

function Callback2(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;
begin
  Result := false;
  Res.Clear;
  Res.Severity := lsError;
  Res.FileName := aFileName;
  Res.Row := strtoint(aMatch.Groups.item[2].Value);
  Res.Description := aMatch.Groups.item[1].Value;
  Result := true;
end;

function Callback3(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;
begin
  Result := false;
  Res.Clear;
  Res.Severity := lsError;
  Res.FileName := aFileName;
  Res.Row := 0;
  Res.Description := aMatch.Groups.item[1].Value;
  Result := true;
end;

function Callback4(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;
var
  desc: string;
  matchRow: TMatch;
begin
  Result := false;
  Res.Clear;

  // We remove "\n(<name>) " from description:
  desc := TRegEx.Replace(aMatch.Value, '\\(' + aMatch.Groups.item[1].Value + '\\)\s(.+)\n', ' $1',
    [roIgnoreCase]);
  desc := TRegEx.Replace(desc, '\n', '', [roIgnoreCase]);
  desc := TRegEx.Replace(desc, '\s+', ' ', [roIgnoreCase]);
  desc := Trim(desc);

  matchRow := TRegEx.Match(desc, 'on input line (\d+)\.', []);

  Res.Severity := lsWarning;
  Res.FileName := aFileName;
  if matchRow.Success then
    Res.Row := strtoint(matchRow.Groups.item[1].Value);
  Res.Description := desc;
  Result := true;
end;

function Callback5(aMatch: TMatch; aFileName: string; out Res: TTexLogLine): Boolean;
var
  desc: string;
  matchRow: TMatch;
begin
  Result := false;
  Res.Clear;

  desc := TRegEx.Replace(aMatch.Value, '\n', '', [roIgnoreCase]);
  desc := TRegEx.Replace(desc, '\s+', ' ', [roIgnoreCase]);
  desc := Trim(desc);

  matchRow := TRegEx.Match(desc, 'on input line (\d+)\.', []);

  Res.Severity := lsWarning;
  Res.FileName := aFileName;
  if matchRow.Success then
    Res.Row := strtoint(matchRow.Groups.item[1].Value);
  Res.Description := desc;
  Result := true;
end;

procedure Sort(var aRes: TTexLogLines);
var
  i, j: integer;
  line: TTexLogLine;
begin
  for j := low(aRes) to High(aRes) do
    for i := Low(aRes) to High(aRes) - 1 do
      if aRes[i].Severity > aRes[i + 1].Severity then
      begin
        line := aRes[i];
        aRes[i] := aRes[i + 1];
        aRes[i + 1] := line;
      end;

end;

function MatchNewFile(var aOutput: string; out aFileName: string): Boolean;
var
  fileRegEx: TRegEx;
  Match: TMatch;
begin
  // –аботаем пока только с расчетом на то, что именна€ файлов вз€ты в ковычки
  // ¬ Windows в большинстве случаев так и должно быть
  // потому что MikTex ставить по умолчанию в Program Files, а тут уже есть пробелы
  // значит именна будут в ковычках
  fileRegEx := TRegEx.Create('^\("((?:[a-zA-Z]:[\\/]|\/|\.{1,2}[\\/]|\\{2})(?:[^"]|\n)+)"');
  if fileRegEx.IsMatch(aOutput) then
  begin
    Match := fileRegEx.Match(aOutput);
    // ”дал€ем переходы на новую строку
    aFileName := TRegEx.Replace(Match.Groups.item[1].Value, '\n', '', []);
    // ѕочему компилируемый файл пишет с обратными слешами
    aFileName := TRegEx.Replace(aFileName, '\/', '\', []);
    delete(aOutput, 1, Match.length);
    Result := true;
  end;
end;

{ TTexLogParser }

class function TTexLogParser.Parse(output: string; lv: TListView;
  out ResCount: TTexLogErrorCount): Boolean;
var
  Res: TTexLogLines;
  i: integer;
  item: TListItem;
begin
  Result := Parse(output, Res, ResCount);

  lv.Items.BeginUpdate;
  lv.Items.Clear;
  for i := low(Res) to High(Res) do
  begin
    item := lv.Items.Add;
    case Res[i].Severity of
      lsBadBox:
        item.Caption := 'BodBox';
      lsWarning:
        item.Caption := 'Warning';
      lsError:
        item.Caption := 'Error';
      lsDebug:
        item.Caption := 'Debug';
    end;
    item.SubItems.Add(ExtractFileName(Res[i].FileName));
    if Res[i].Row > 0 then
      item.SubItems.Add(inttostr(Res[i].Row))
    else
      item.SubItems.Add('');
    item.SubItems.Add(Res[i].Description);
  end;
  lv.Items.EndUpdate;

end;

class function TTexLogParser.Parse(output: string; out Res: TTexLogLines;
  out ResCount: TTexLogErrorCount): Boolean;

  procedure DeleteCR;
  var
    crRegEx: TRegEx;
  begin
    crRegEx := TRegEx.Create('\r', [roIgnoreCase]);
    output := crRegEx.Replace(output, '');
  end;

  procedure AddItem(Row: TTexLogLine);
  begin
    SetLength(Res, length(Res) + 1);
    Res[length(Res) - 1].Severity := Row.Severity;
    Res[length(Res) - 1].FileName := Row.FileName;
    Res[length(Res) - 1].Row := Row.Row;
    Res[length(Res) - 1].Description := Row.Description;
  end;

var
  skipRegexp: TRegEx;
  Match: TMatch;
  extraParens: integer;
  fileStack: TStringList;
  currentFile, newFile: string;
  Patterns: array [1 .. 5] of TPatterns;
  LogLine: TTexLogLine;
  i: integer;
begin
  Res := nil;
  ResCount.Clear;

  DeleteCR;

  extraParens := 0;
  fileStack := TStringList.Create;
  currentFile := '--';

  skipRegexp := TRegEx.Create('^[^\n\r()]+', []);

  // This pattern is similar to the next one: this reads another
  // line after "l.\d" (for errors such as "Undefined control sequence").
  Patterns[1].Regex := TRegEx.Create('^!\s+((?:.*\n)+?(l\.(\d+).*)\n(\s+).*)\n');
  Patterns[1].Callback := Callback1;

  // This pattern recognizes all errors generated with \errmessage,
  // that is, starting with "!" and containing "l.\d+".
  // The macro \GenericError uses \errmessage internally.
  // Macros \@latex@error and \(Class|Package)Error use \GenericError.
  Patterns[2].Regex := TRegEx.Create('^!\s+((?:.*\n)+?l\.(\d+)\s(?:.*\S.*\n)?)');
  Patterns[2].Callback := Callback2;

  // This pattern matches critical errors:
  // "File ended while scanning use|definition of ...",
  // "Missing \begin{document}.", "Emergency stop."
  Patterns[3].Regex := TRegEx.Create('^!\s+(.+)\n');
  Patterns[3].Callback := Callback3;

  // This pattern matches all warnings generated with \(Class|Package)(Warning|WarningNoLine).
  // Additionally, it recognizes other warnings like "LaTeX Font Warning: ...\n(Font) ...".
  // The macro \GenericWarning does not produce formatted output, so it is impossible
  // to match it. We need to look for output generated by higher level commands.
  Patterns[4].Regex := TRegEx.Create
    ('^(?:Class|Package|LaTeX) ([^\s]+) Warning: (?:(?:\\(\1\\)\s.+)+|.+\n)*.*\.\n', []);
  Patterns[4].Callback := Callback4;

  // This pattern matches all warnings generated using \@latex@warning and  \@latex@warning@no@line
  // (which add a little formatting before resorting to \GenericWarning).
  // Warnings generated this way should use \MessageBreak, but sometimes they don't, so we read until we find
  // a dot followed by a newline.
  Patterns[5].Regex := TRegEx.Create('^LaTeX Warning: (?:(?!\.\n).|\n)+\.\n');
  Patterns[5].Callback := Callback5;

  while (output.length > 0) do
  begin
    output := output.trimLeft();

    i := 1;
    while i <= length(Patterns) do
    begin
      if Patterns[i].Regex.IsMatch(output) then
      begin
        Match := Patterns[i].Regex.Match(output);
        if Patterns[i].Callback(Match, currentFile, LogLine) then
        begin
          AddItem(LogLine);
          delete(output, 1, Match.length);
          output := output.trimLeft;
          i := 1;
          continue;
        end;
      end;
      inc(i);
    end;

    if skipRegexp.IsMatch(output) then
    begin
      Match := skipRegexp.Match(output);
      delete(output, 1, Match.length);
    end;

    if output.length = 0 then
      Break;

    if output[1] = ')' then
    begin
      if (extraParens > 0) then
        dec(extraParens)
      else if (fileStack.Count > 0) then
      begin
        currentFile := fileStack.Strings[fileStack.Count - 1];
        fileStack.delete(fileStack.Count - 1);
      end;
      delete(output, 1, 1);
    end
    else if output[1] = '(' then
    begin
      if MatchNewFile(output, newFile) then
      begin
        fileStack.Add(currentFile);
        currentFile := newFile;
        extraParens := 0;
      end
      else
      begin
        inc(extraParens);
        delete(output, 1, 1);
      end;
    end;
  end;

  Sort(Res);

  // ≈сли есть ошибки, возвращаем true, что бы знать
  // открывать документ или нет
  Result := false;
  for i := Low(Res) to High(Res) do
    case Res[i].Severity of
      lsError:
        inc(ResCount.Error);
      lsWarning:
        inc(ResCount.Warning);
      lsBadBox:
        inc(ResCount.BadBox);
      lsDebug:
        inc(ResCount.Debug);
    end;

  if ResCount.Error > 0 then
    Result := true;

end;

end.

unit uLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnColorMaps, System.IniFiles, uTypes,
  uTexLogParser;

type
  TLogForm = class(TForm)
    lvLog: TListView;
    mLog: TMemo;
    ActListLog: TActionList;
    ilLog: TImageList;
    ActMngLog: TActionManager;
    ActLogConsole: TAction;
    ActLogMessage: TAction;
    ActLogClear: TAction;
    ActionToolBar1: TActionToolBar;
    ActLogMsgError: TAction;
    ActLogMsgWarning: TAction;
    ActlogMsgBadBox: TAction;

    procedure SaveSettings;
    procedure LoadSettings;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActLogConsoleExecute(Sender: TObject);
    procedure ActLogMessageExecute(Sender: TObject);
    procedure ActLogClearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLogMsgErrorExecute(Sender: TObject);
    procedure ActLogMsgWarningExecute(Sender: TObject);
    procedure ActlogMsgBadBoxExecute(Sender: TObject);

    procedure Clear;
    procedure ShowMsg;
    function GetParsingLine(): string;
    procedure lvLogDblClick(Sender: TObject);
  private
    procedure ShowMsgLines;
  public
    MsgLines: TTexLogLines;
    MsgCount: TTexLogErrorCount;
  end;

var
  FLog: TLogForm;

resourcestring
  rsLogCaption = 'Log';

implementation

{$R *.dfm}

uses uLanguage, uMain;

procedure TLogForm.FormCreate(Sender: TObject);
begin
  mLog.Align := alClient;
  mLog.ReadOnly := true;

  lvLog.Align := alClient;

  Clear;
end;

procedure TLogForm.FormShow(Sender: TObject);
begin
  LoadSettings;

  UpdateLanguage(Self, lngRus);

  SendMessage(lvLog.Handle, WM_UPDATEUISTATE, MakeLong(UIS_SET, UISF_HIDEFOCUS), 0);
end;

procedure TLogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettings;
  Hide; // что бы не моргала форма в левом верхнем углу по ManualFloat
  ManualFloat(rect(0, 0, 0, 0)); // что бы вызвалось UnDock

  Action := caFree;
  FLog := nil;
end;

procedure TLogForm.SaveSettings;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  // Лог
  IniFile.WriteBool('Log', 'ShowConsole', ActLogConsole.Checked);
  // IniFile.WriteInteger('Log', 'Height', fLog.Height + 23);

  // Отображение ошибок
  IniFile.WriteBool('Log', 'ShowMsgError', ActLogMsgError.Checked);
  IniFile.WriteBool('Log', 'ShowMsgWarning', ActLogMsgWarning.Checked);
  IniFile.WriteBool('Log', 'ShowMsgBadBox', ActlogMsgBadBox.Checked);

  IniFile.Free;
end;

function TLogForm.GetParsingLine: string;
begin
  Result := 'Error: ' + IntToStr(MsgCount.Error) + // ошибок
    ' Warning: ' + IntToStr(MsgCount.Warning) + // предупреждений
    ' BadBox: ' + IntToStr(MsgCount.BadBox);
end;

procedure TLogForm.ShowMsg;
begin
  ActLogMsgError.Caption := IntToStr(MsgCount.Error);
  ActLogMsgWarning.Caption := IntToStr(MsgCount.Warning);
  ActlogMsgBadBox.Caption := IntToStr(MsgCount.BadBox);

  Self.Caption := GetParsingLine;
  ShowMsgLines;
end;

procedure TLogForm.ShowMsgLines;
var
  i: integer;
  Item: TListItem;
begin
  lvLog.Items.BeginUpdate;
  lvLog.Items.Clear;
  for i := low(MsgLines) to High(MsgLines) do
  begin
    if (MsgLines[i].Severity = lsError) and (not ActLogMsgError.Checked) then
      Continue;

    if (MsgLines[i].Severity = lsWarning) and (not ActLogMsgWarning.Checked) then
      Continue;

    if (MsgLines[i].Severity = lsBadBox) and (not ActlogMsgBadBox.Checked) then
      Continue;

    Item := lvLog.Items.Add;
    case MsgLines[i].Severity of
      lsBadBox:
        Item.Caption := 'BodBox';
      lsWarning:
        Item.Caption := 'Warning';
      lsError:
        Item.Caption := 'Error';
      lsDebug:
        Item.Caption := 'Debug';
    end;
    Item.SubItems.Add(ExtractFileName(MsgLines[i].FileName));
    if MsgLines[i].Row > 0 then
      Item.SubItems.Add(IntToStr(MsgLines[i].Row))
    else
      Item.SubItems.Add('');
    Item.SubItems.Add(MsgLines[i].Description);
    Item.Data := PChar(MsgLines[i].FileName);
  end;
  lvLog.Items.EndUpdate;
end;

procedure TLogForm.LoadSettings;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  // Лог
  if IniFile.ReadBool('Log', 'ShowConsole', false) then
    ActLogConsoleExecute(ActLogConsole)
  else
    ActLogMessageExecute(ActLogMessage);

  // Отображение ошибок
  ActLogMsgError.Checked := IniFile.ReadBool('Log', 'ShowMsgError', true);
  ActLogMsgWarning.Checked := IniFile.ReadBool('Log', 'ShowMsgWarning', true);
  ActlogMsgBadBox.Checked := IniFile.ReadBool('Log', 'ShowMsgBadBox', true);

  IniFile.Free;
end;

procedure TLogForm.lvLogDblClick(Sender: TObject);
var
  LFileName, LRow, ll: string;
begin
  // LFileName := lvLog.Items[lvLog.ItemIndex].SubItems[0];
  LFileName := String(lvLog.Items[lvLog.ItemIndex].Data);
  LRow := lvLog.Items[lvLog.ItemIndex].SubItems[1];

  if not FileExists(LFileName) then
    exit;

  // открываем только файлы .tex предупреждения могут быть в файлах TeX
  if AnsiCompareStr(ExtractFileExt(LFileName), '.tex') <> 0 then
    exit;

  // Если активный файл не тот, на который хотим перейти, переходим
  if AnsiCompareStr(LFileName, main.ActiveEditor.FileNameFull) <> 0 then
    main.ProcessParam(1, LFileName);

  try
    main.ActiveEditor.GoToLine(strtoint(LRow));
    main.ActiveEditor.Editor.SetFocus;
  except
    on E: Exception do
  end;
end;

procedure TLogForm.ActLogClearExecute(Sender: TObject);
begin
  Clear;
end;

procedure TLogForm.ActLogConsoleExecute(Sender: TObject);
begin
  if not ActLogConsole.Checked then
  begin
    lvLog.Visible := false;
    mLog.Visible := true;
    ActLogConsole.Checked := true;
  end;
  ActLogMsgError.Enabled := ActLogMessage.Checked;
  ActLogMsgWarning.Enabled := ActLogMessage.Checked;
  ActlogMsgBadBox.Enabled := ActLogMessage.Checked;
end;

procedure TLogForm.ActLogMessageExecute(Sender: TObject);
begin
  if not ActLogMessage.Checked then
  begin
    lvLog.Visible := true;
    mLog.Visible := false;
    ActLogMessage.Checked := true;
  end;
  ActLogMsgError.Enabled := ActLogMessage.Checked;
  ActLogMsgWarning.Enabled := ActLogMessage.Checked;
  ActlogMsgBadBox.Enabled := ActLogMessage.Checked;
end;

procedure TLogForm.ActLogMsgErrorExecute(Sender: TObject);
begin
  ActLogMsgError.Checked := not ActLogMsgError.Checked;
  ShowMsgLines;
end;

procedure TLogForm.ActLogMsgWarningExecute(Sender: TObject);
begin
  ActLogMsgWarning.Checked := not ActLogMsgWarning.Checked;
  ShowMsgLines;
end;

procedure TLogForm.Clear;
begin
  mLog.Lines.Clear;
  lvLog.Items.Clear;
  MsgCount.Clear;
  MsgLines := nil;
  ShowMsg;
  Self.Caption := rsLogCaption;
end;

procedure TLogForm.ActlogMsgBadBoxExecute(Sender: TObject);
begin
  ActlogMsgBadBox.Checked := not ActlogMsgBadBox.Checked;
  ShowMsgLines;
end;

end.

unit uLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, CommCtrl,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnColorMaps, System.IniFiles, uTypes,
  uTexLogParser, Vcl.ExtCtrls, Vcl.Menus, Vcl.ActnPopup, clipbrd;

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
    ActMsgError: TAction;
    ActMsgWarning: TAction;
    ActMsgBadBox: TAction;
    eSend: TEdit;
    pConsole: TPanel;
    PMessage: TPanel;
    ActMsgCopyError: TAction;

    procedure SaveSettings;
    procedure LoadSettings;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActLogConsoleExecute(Sender: TObject);
    procedure ActLogMessageExecute(Sender: TObject);
    procedure ActLogClearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActMsgErrorExecute(Sender: TObject);
    procedure ActMsgWarningExecute(Sender: TObject);
    procedure ActMsgBadBoxExecute(Sender: TObject);

    procedure Clear;
    procedure ShowMsg;
    function GetParsingLine(): string;
    procedure lvLogDblClick(Sender: TObject);
    procedure lvLogMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lvLogMouseLeave(Sender: TObject);
    procedure ActMsgCopyErrorExecute(Sender: TObject);
  private
    procedure ShowMsgLines;
    procedure CreateActionMenu;
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

uses uLanguage, uMain, System.RegularExpressions, uLogLineHint;

procedure TLogForm.FormCreate(Sender: TObject);
begin
  CreateActionMenu;

  eSend.Visible := false;

  pConsole.Align := alClient;
  pConsole.Visible := true;
  pConsole.BevelOuter := bvNone;
  mLog.Align := alClient;
  mLog.ReadOnly := true;

  PMessage.Align := alClient;
  PMessage.Visible := false;
  PMessage.BevelOuter := bvNone;
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
  Clear;
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

  // Отображение ошибок
  IniFile.WriteBool('Log', 'ShowMsgError', ActMsgError.Checked);
  IniFile.WriteBool('Log', 'ShowMsgWarning', ActMsgWarning.Checked);
  IniFile.WriteBool('Log', 'ShowMsgBadBox', ActMsgBadBox.Checked);

  IniFile.Free;
end;

function TLogForm.GetParsingLine: string;
begin
  Result := 'Error: ' + IntToStr(MsgCount.Error) + ';' + // ошибок
    ' Warning: ' + IntToStr(MsgCount.Warning) + ';' + // предупреждений
    ' BadBox: ' + IntToStr(MsgCount.BadBox);
end;

procedure TLogForm.ShowMsg;
begin
  ActMsgError.Caption := IntToStr(MsgCount.Error);
  ActMsgWarning.Caption := IntToStr(MsgCount.Warning);
  ActMsgBadBox.Caption := IntToStr(MsgCount.BadBox);

  Self.Caption := GetParsingLine;
  ShowMsgLines;
end;

procedure TLogForm.ShowMsgLines;
var
  i: Integer;
  LItem: TListItem;
  LTop: Integer;
  LLine: string;
begin
  lvLog.Items.BeginUpdate;
  lvLog.Items.Clear;
  LTop := 0;
  for i := low(MsgLines) to High(MsgLines) do
  begin
    if (MsgLines[i].Severity = lsError) and (not ActMsgError.Checked) then
      Continue;

    if (MsgLines[i].Severity = lsWarning) and (not ActMsgWarning.Checked) then
      Continue;

    if (MsgLines[i].Severity = lsBadBox) and (not ActMsgBadBox.Checked) then
      Continue;

    LItem := lvLog.Items.Add;
    LItem.ImageIndex := -1;

    case MsgLines[i].Severity of
      lsBadBox:
        LLine := '[BodBox]';
      lsWarning:
        LLine := '[Warning]';
      lsError:
        LLine := '[Error]';
      lsDebug:
        LLine := '[Debug]';
    end;

    LLine := LLine + ' ' + ExtractFileName(MsgLines[i].FileName);
    LLine := LLine + '(' + IntToStr(MsgLines[i].Row) + ')';
    LLine := LLine + ': ' + MsgLines[i].Description;

    LItem.Caption := LLine;
    LItem.Data := @MsgLines[i];

    { case MsgLines[i].Severity of
      lsBadBox:
      Item.Caption := 'BodBox';
      // Item.ImageIndex := 6;
      lsWarning:
      Item.Caption := 'Warning';
      // Item.ImageIndex := 5;
      lsError:
      Item.Caption := 'Error';
      // Item.ImageIndex := 4;
      lsDebug:
      Item.Caption := 'Debug';
      end;

      Item.SubItems.Add(ExtractFileName(MsgLines[i].FileName));
      if MsgLines[i].Row > 0 then
      Item.SubItems.Add(IntToStr(MsgLines[i].Row))
      else
      Item.SubItems.Add('');
      Item.SubItems.Add(MsgLines[i].Description); }

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
  ActMsgError.Checked := IniFile.ReadBool('Log', 'ShowMsgError', true);
  ActMsgWarning.Checked := IniFile.ReadBool('Log', 'ShowMsgWarning', true);
  ActMsgBadBox.Checked := IniFile.ReadBool('Log', 'ShowMsgBadBox', true);

  IniFile.Free;
end;

procedure TLogForm.lvLogDblClick(Sender: TObject);
var
  LLine: ^TTexLogLine;
begin
  LLine := lvLog.Items[lvLog.ItemIndex].Data;

  if not FileExists(LLine.FileName) then
    exit;

  // открываем только файлы .tex предупреждения могут быть в файлах TeX
  if AnsiCompareStr(ExtractFileExt(LLine.FileName), '.tex') <> 0 then
    exit;

  // Если активный файл не тот, на который хотим перейти, переходим
  if AnsiCompareStr(LLine.FileName, main.ActiveEditor.FileNameFull) <> 0 then
    main.ProcessParam(1, LLine.FileName);

  try
    main.ActiveEditor.GoToLine(LLine.Row);
    main.ActiveEditor.Editor.SetFocus;
  except
    on E: Exception do
  end;
end;

procedure TLogForm.lvLogMouseLeave(Sender: TObject);
begin
  LogLineHintForm.CustomHide;
end;

procedure TLogForm.lvLogMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  pt: TPoint;
  LItem: TListItem;
  LHitInfo: TLVHitTestInfo;
  LColor: TColor;
  LLine: ^TTexLogLine;
begin
  pt := lvLog.ScreenToClient(Mouse.CursorPos);
  LItem := lvLog.GetItemAt(pt.X, pt.Y);
  if LItem = nil then
  begin
    FillChar(LHitInfo, SizeOf(LHitInfo), 0);
    LHitInfo.pt := pt;
    if -1 <> lvLog.Perform(LVM_SUBITEMHITTEST, 0, LParam(@LHitInfo)) then
      LItem := lvLog.Items[LHitInfo.iItem];
  end;

  try
    if (main.ActiveEditor <> nil) and (main.ActiveEditor.Active) then
      if LItem = nil then
        LogLineHintForm.CustomHide
      else
      begin
        LLine := LItem.Data;
        case LLine.Severity of
          lsBadBox:
            LColor := clBlue;
          lsWarning:
            LColor := clYellow;
          lsError:
            LColor := clRed;
          lsDebug:
            LColor := clBlack;
        end;
        LogLineHintForm.CustomShow(LItem.Index, LLine.Description, LColor);
      end;

  except

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
    PMessage.Visible := false;
    pConsole.Visible := true;
    ActLogConsole.Checked := true;
  end;
  ActMsgError.Enabled := ActLogMessage.Checked;
  ActMsgWarning.Enabled := ActLogMessage.Checked;
  ActMsgBadBox.Enabled := ActLogMessage.Checked;
end;

procedure TLogForm.ActLogMessageExecute(Sender: TObject);
begin
  if not ActLogMessage.Checked then
  begin
    PMessage.Visible := true;
    pConsole.Visible := false;
    ActLogMessage.Checked := true;
  end;
  ActMsgError.Enabled := ActLogMessage.Checked;
  ActMsgWarning.Enabled := ActLogMessage.Checked;
  ActMsgBadBox.Enabled := ActLogMessage.Checked;
  ActMsgCopyError.Enabled := ActLogMessage.Checked;
end;

procedure TLogForm.ActMsgErrorExecute(Sender: TObject);
begin
  ActMsgError.Checked := not ActMsgError.Checked;
  ShowMsgLines;
end;

procedure TLogForm.ActMsgWarningExecute(Sender: TObject);
begin
  ActMsgWarning.Checked := not ActMsgWarning.Checked;
  ShowMsgLines;
end;

procedure TLogForm.ActMsgCopyErrorExecute(Sender: TObject);
begin
  if lvLog.Selected <> nil then
    Clipboard.AsText := lvLog.Selected.SubItems[2];
end;

procedure TLogForm.Clear;
var
  i: Integer;
begin
  // for i := 0 to lvLog.Items.Count - 1 do
  // Dispose(lvLog.Items[i].Data);

  mLog.Lines.Clear;
  lvLog.Items.Clear;

  MsgCount.Clear;
  MsgLines := nil;
  ShowMsg;
  Self.Caption := rsLogCaption;
end;

procedure TLogForm.CreateActionMenu;
var
  LItem, LItemGlobal, LItemSub: TActionClientItem;
  LActionBarIndex: Integer;
begin
  { ActionToolBar1 }
  with ActMngLog.ActionBars[0] do
  begin
    LItem := Items.Add;
    LItem.Action := ActLogConsole;

    LItem := Items.Add;
    LItem.Action := ActLogMessage;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActMsgError;

    LItem := Items.Add;
    LItem.Action := ActMsgWarning;

    LItem := Items.Add;
    LItem.Action := ActMsgBadBox;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActLogClear;
    LItem.ShowCaption := false;

    LItem := Items.Add;
    LItem.Action := ActMsgCopyError;
    LItem.ShowCaption := false;

    // Так должна быть обявлена именно последяя черта
    LItem := Items.Add;
    LItem.Caption := '-';
    LItem.CommandStyle := csSeparator;
  end;
end;

procedure TLogForm.ActMsgBadBoxExecute(Sender: TObject);
begin
  ActMsgBadBox.Checked := not ActMsgBadBox.Checked;
  ShowMsgLines;
end;

end.

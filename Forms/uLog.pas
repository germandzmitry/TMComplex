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
    ActLogMsgError: TAction;
    ActLogMsgWarning: TAction;
    ActlogMsgBadBox: TAction;
    eSend: TEdit;
    pConsole: TPanel;
    PMessage: TPanel;
    ActLogMsgCopyError: TAction;

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
    procedure lvLogMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lvLogMouseLeave(Sender: TObject);
    procedure ActLogMsgCopyErrorExecute(Sender: TObject);
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
  i: Integer;
  Item: TListItem;
  LTop: Integer;
begin
  lvLog.Items.BeginUpdate;
  lvLog.Items.Clear;
  LTop := 0;
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

    Item.Data := @MsgLines[i];
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
        LogLineHintForm.CustomShow(LItem.Index, LItem.SubItems[2], LColor);
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
  ActLogMsgError.Enabled := ActLogMessage.Checked;
  ActLogMsgWarning.Enabled := ActLogMessage.Checked;
  ActlogMsgBadBox.Enabled := ActLogMessage.Checked;
end;

procedure TLogForm.ActLogMessageExecute(Sender: TObject);
begin
  if not ActLogMessage.Checked then
  begin
    PMessage.Visible := true;
    pConsole.Visible := false;
    ActLogMessage.Checked := true;
  end;
  ActLogMsgError.Enabled := ActLogMessage.Checked;
  ActLogMsgWarning.Enabled := ActLogMessage.Checked;
  ActlogMsgBadBox.Enabled := ActLogMessage.Checked;
  ActLogMsgCopyError.Enabled := ActLogMessage.Checked;
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

procedure TLogForm.ActLogMsgCopyErrorExecute(Sender: TObject);
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
    LItem.Action := ActLogMsgError;

    LItem := Items.Add;
    LItem.Action := ActLogMsgWarning;

    LItem := Items.Add;
    LItem.Action := ActlogMsgBadBox;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActLogClear;
    LItem.ShowCaption := false;

    LItem := Items.Add;
    LItem.Action := ActLogMsgCopyError;
    LItem.ShowCaption := false;

    // Так должна быть обявлена именно последяя черта
    LItem := Items.Add;
    LItem.Caption := '-';
    LItem.CommandStyle := csSeparator;
  end;
end;

procedure TLogForm.ActlogMsgBadBoxExecute(Sender: TObject);
begin
  ActlogMsgBadBox.Checked := not ActlogMsgBadBox.Checked;
  ShowMsgLines;
end;

end.

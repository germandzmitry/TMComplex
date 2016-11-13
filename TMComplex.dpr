program TMComplex;

uses
  Vcl.Forms,
  Windows,
  System.SysUtils,
  Winapi.Messages,
  uMain in 'Forms\uMain.pas' {Main},
  uEditor in 'Forms\uEditor.pas' {EditorForm},
  uTypes in 'Units\uTypes.pas',
  uAbout in 'Forms\uAbout.pas' {AboutForm},
  uCustomPageControl in 'Customs\uCustomPageControl.pas',
  uTexGuiSymbols in 'Tex\uTexGuiSymbols.pas',
  uTexCompile in 'Tex\uTexCompile.pas',
  uTexLogParser in 'Tex\uTexLogParser.pas',
  uLog in 'Forms\uLog.pas' {LogForm},
  uCustomCaptionedDockTree in 'Customs\uCustomCaptionedDockTree.pas',
  uProcess in 'Units\uProcess.pas',
  uEditorGoToLine in 'Forms\uEditorGoToLine.pas' {EditorGoToLineForm},
  uSettings in 'Forms\uSettings.pas' {SettingsForm},
  uEncoding in 'Units\uEncoding.pas',
  uCustomMDIMenuButton in 'Customs\uCustomMDIMenuButton.pas',
  uEditorEncoding in 'Forms\uEditorEncoding.pas' {EditorEncodingForm},
  uCustomTabSet in 'Customs\uCustomTabSet.pas',
  uLanguage in 'Units\uLanguage.pas',
  uInsertList in 'Forms\uInsertList.pas' {InsertListForm};

{$R *.res}

var
  MutexHandle: THandle;
  MainHandle: HWND;

const
  MutexName = 'TMComplex';

function SendParamsToPrevInst(Wdw: HWND): Boolean;
var
  CopyData: TCopyDataStruct;
  I: Integer;
  CharCount: Integer;
  Data: PChar;
  PData: PChar;
begin
  Assert(Wdw <> 0);
  if ParamCount = 0 then
    exit;

  CharCount := 0;
  for I := 1 to ParamCount do
    Inc(CharCount, Length(ParamStr(I)) + 1);
  Inc(CharCount);
  Data := StrAlloc(CharCount);
  try
    PData := Data;
    for I := 1 to ParamCount do
    begin
      StrPCopy(PData, ParamStr(I));
      Inc(PData, Length(ParamStr(I)) + 1);
    end;
    PData^ := #0;
    CopyData.lpData := Data;
    CopyData.cbData := CharCount * SizeOf(Char);
    CopyData.dwData := cCopyDataWaterMark;
    Result := SendMessage(Wdw, WM_COPYDATA, 0, LPARAM(@CopyData)) = 1;
  finally
    StrDispose(Data);
  end;
end;

begin
  MutexHandle := OpenMutex(MUTEX_ALL_ACCESS, false, MutexName);
  if MutexHandle <> 0 then
  begin
    MainHandle := FindWindow('TMain', nil);
    SendParamsToPrevInst(MainHandle);
    if IsIconic(MainHandle) then
      ShowWindow(MainHandle, SW_RESTORE);
    Windows.SetForegroundWindow(MainHandle);
    exit;
  end;

  MutexHandle := CreateMutex(nil, false, MutexName); // Создание Mutex

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TM complex';
  Application.CreateForm(TMain, Main);
  Application.Run;

  CloseHandle(MutexHandle); // Уничтожаем Mutex

end.

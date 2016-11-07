program TMComplex;

uses
  Vcl.Forms,
  Windows,
  System.SysUtils,
  Winapi.Messages,
  uMain in 'uMain.pas' {Main},
  uEditor in 'uEditor.pas' {fEditor},
  uTypes in 'uTypes.pas',
  uAbout in 'uAbout.pas' {fAbout},
  uCustomPageControl in 'uCustomPageControl.pas',
  uTexGuiSymbols in 'uTexGuiSymbols.pas',
  uTexCompile in 'uTexCompile.pas',
  uTexLogParser in 'uTexLogParser.pas',
  uLog in 'uLog.pas' {fLog},
  uCustomCaptionedDockTree in 'uCustomCaptionedDockTree.pas',
  uProcess in 'uProcess.pas',
  uEditorGoToLine in 'uEditorGoToLine.pas' {fEditorGoToLine};

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

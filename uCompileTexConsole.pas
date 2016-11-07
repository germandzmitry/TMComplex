unit uCompileTexConsole;

// Можно вставлять консоль в panel

interface

uses
  Winapi.Windows, System.SysUtils;

type
  TCompileTexConsole = class
  private
    function RunApp(const ACmdLine: string; Visible: boolean = true): HWND;
  public
    procedure Run(Command: string);
    procedure Stop();
  end;

var
  CompileConsole: TCompileTexConsole;
  FStartupInfo: TStartupInfo;
  FProcessInfo: TProcessInformation;

implementation

{ TCompileTexConsole }

function GetConsoleWindow: HWND; stdcall; external kernel32 name 'GetConsoleWindow';
function AttachConsole(dwProcessId: DWORD): BOOL; stdcall; external kernel32 name 'AttachConsole';

procedure TCompileTexConsole.Run(Command: string);
var
  ConsoleHandle: HWND;
begin
  ConsoleHandle := RunApp(Command);

  // if ConsoleHandle <> 0 then
  // begin
  // SetWindowLong(ConsoleHandle, GWL_STYLE, GetWindowLong(ConsoleHandle, GWL_STYLE) and
  // not(WS_BORDER or WS_THICKFRAME or WS_DLGFRAME or WS_CAPTION or WS_MINIMIZEBOX or
  // WS_MAXIMIZEBOX));
  //
  // Winapi.Windows.SetParent(ConsoleHandle, PanelLog.Handle);
  // SetWindowPos(ConsoleHandle, HWND_TOP, 0, 0, PanelLog.Width, PanelLog.Height, SWP_FRAMECHANGED);
  // ShowWindow(ConsoleHandle, SW_SHOW);
  // end;
end;

procedure TCompileTexConsole.Stop;
var
  ExitCode: Cardinal;
begin
  GetExitCodeProcess(FProcessInfo.hProcess, ExitCode);
  // Если процес не завершен, завершаем его
  if ExitCode = STILL_ACTIVE then
  begin
    TerminateProcess(FProcessInfo.hProcess, NO_ERROR);
    CloseHandle(FProcessInfo.hThread);
    CloseHandle(FProcessInfo.hProcess);
    sleep(100);
  end;
end;

function TCompileTexConsole.RunApp(const ACmdLine: string; Visible: boolean): HWND;
var
  CmdLine: string;
  Attempt: Integer;
begin
  Stop;

  Result := 0;
  FillChar(FStartupInfo, SizeOf(TStartupInfo), 0);
  FillChar(FProcessInfo, SizeOf(TProcessInformation), 0);
  FStartupInfo.cb := SizeOf(TStartupInfo);
  FStartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  if Visible then
    FStartupInfo.wShowWindow := SW_SHOWNORMAL
  else
    FStartupInfo.wShowWindow := SW_HIDE;
  CmdLine := ACmdLine;
  UniqueString(CmdLine);
  if CreateProcess(nil, PChar(CmdLine), nil, nil, false, CREATE_NEW_CONSOLE, nil, nil, FStartupInfo,
    FProcessInfo) then
  begin
    Attempt := 100;
    while (Attempt > 0) do
    begin
      if AttachConsole(FProcessInfo.dwProcessId) then
      begin
        Result := GetConsoleWindow;
        FreeConsole;
        Break;
      end;
      sleep(10);
      Dec(Attempt);
    end;
    // CloseHandle(ProcessInfo.hThread);
    // CloseHandle(ProcessInfo.hProcess);
  end
  else
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

end.

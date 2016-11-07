unit uProcess;

interface

uses
  Winapi.Windows, Vcl.Dialogs, System.SysUtils;

procedure RunProcess(Command: string);

implementation

procedure RunProcess(Command: string);
var
  StartupInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  StartupInfo.wShowWindow := SW_SHOWNORMAL;

  UniqueString(Command);
  if CreateProcess(nil, PChar(Command), nil, nil, False, NORMAL_PRIORITY_CLASS, nil, nil,
    StartupInfo, ProcInfo) then
  begin
    CloseHandle(ProcInfo.hThread); // закрываем дескриптор процесса
    CloseHandle(ProcInfo.hProcess); // закрываем дескриптор потока
  end
  else
    ShowMessage(SysErrorMessage(GetLastError));
end;

end.

unit uProcess;

interface

uses
  Winapi.Windows, Vcl.Dialogs, System.SysUtils, SHELLAPI;

procedure RunProcess(Command: string);
procedure RunProcessDefault(FileName: string);

implementation

function FindDefaultApplication(const aFileName: string): string;
var
  Buffer: array [0 .. 1024] of Char;
begin
  Result := '';
  FillChar(Buffer, SizeOf(Buffer), #0);
  if (SHELLAPI.FindExecutable(PChar(aFileName), nil, Buffer) > 32) then
    Result := Buffer;
end;

procedure RunProcess(Command: string);
var
  StartupInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  AsocApplication: string;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  StartupInfo.wShowWindow := SW_SHOWNORMAL;

  UniqueString(Command);
  if CreateProcess(nil, PChar(Command), nil, nil, false, NORMAL_PRIORITY_CLASS, nil, nil,
    StartupInfo, ProcInfo) then
  begin
    CloseHandle(ProcInfo.hThread); // ��������� ���������� ��������
    CloseHandle(ProcInfo.hProcess); // ��������� ���������� ������
  end
  else
    ShowMessage(SysErrorMessage(GetLastError));
end;

procedure RunProcessDefault(FileName: string);
var
  defApplication: string;
begin
  defApplication := FindDefaultApplication(FileName);
  if FileExists(defApplication) then
    RunProcess('"' + defApplication + '" "' + FileName + '"');
end;

end.

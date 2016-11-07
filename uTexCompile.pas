unit uTexCompile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Classes, System.SysUtils, Vcl.StdCtrls;

type
  TThreadCompile = class(TThread)
  private
    FCommandLine: string;
    FShowCommand: boolean;
    FOutput: TMemo;

    FSecAtr: TSecurityAttributes;
    FStartupInfo: TStartupInfo;
    FProcInfo: TProcessInformation;

    FInWrite, FInRead: THandle;
    FOutWrite, FOutRead: THandle;
    FErrWrite, FErrRead: THandle;

    FStr: string;
  protected
    procedure LogOut;
    procedure Execute; override;
  public
    constructor Create(const Command: string; output: TMemo; ShowCommand: boolean = false;
      ShowConsole: boolean = false);
    procedure Send(Command: string);
  end;

implementation

{ TThreadCompile }

uses uMain;

constructor TThreadCompile.Create(const Command: string; output: TMemo;
  ShowCommand: boolean = false; ShowConsole: boolean = false);
var
  CreationFlags: DWORD;
begin
  inherited Create(true);
  FreeOnTerminate := false;

  FCommandLine := Command;
  FShowCommand := ShowCommand;
  FOutput := output;

  FillChar(FSecAtr, SizeOf(FSecAtr), #0);
  FSecAtr.nLength := SizeOf(FSecAtr);
  FSecAtr.lpSecurityDescriptor := nil;
  FSecAtr.bInheritHandle := true;

  if not CreatePipe(FInRead, FInWrite, @FSecAtr, 0) then
    raise Exception.Create('CreatePipe In');

  if not CreatePipe(FOutRead, FOutWrite, @FSecAtr, 0) then
    raise Exception.Create('CreatePipe Out');

  FillChar(FStartupInfo, SizeOf(FStartupInfo), 0);
  FStartupInfo.cb := SizeOf(FStartupInfo);
  FStartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  FStartupInfo.wShowWindow := SW_SHOW;

  if ShowConsole then
  begin
    CreationFlags := NORMAL_PRIORITY_CLASS;
  end
  else
  begin
    FStartupInfo.hStdInput := FInRead;
    FStartupInfo.hStdOutput := FOutWrite;
    FStartupInfo.hStdError := FOutWrite;
    CreationFlags := CREATE_NO_WINDOW;
  end;

  UniqueString(FCommandLine);

  if not CreateProcess(nil, PChar(FCommandLine), nil, nil, true, CreationFlags, nil, nil,
    FStartupInfo, FProcInfo) then
    raise Exception.Create('CreateProcess');

end;

procedure TThreadCompile.Execute;
var
  Buffer: array [0 .. 1024] of AnsiChar;
  BufferEnd: array [0 .. 100] of AnsiChar;
  BytesRead, BufSize: Cardinal;
  ExitCode: Cardinal;
begin
  if FShowCommand then
  begin
    FStr := FCommandLine + #13 + #10 + '*************************************' + #13 + #10;
    Synchronize(LogOut);
  end;

  while not Terminated do
  begin
    // �������� ��������� ��������� ��������
    GetExitCodeProcess(FProcInfo.hProcess, ExitCode);
    // ���� ������ ��������, ��������� �����
    if ExitCode <> STILL_ACTIVE then
    begin
      Terminate;
      Sleep(50);
      // Continue;
    end;

    // ������� ������� ������ ������ ���������
    if PeekNamedPipe(FOutRead, nil, 0, nil, @BufSize, nil) then
    begin
      // ���� ���� ��� ������, ������
      if BufSize > 0 then
      begin
        FillChar(Buffer, 1024, #0);

        if BufSize > 1024 then
          BufSize := 1024;

        // ������ ������ �� �������
        ReadFile(FOutRead, Buffer, BufSize, BytesRead, nil);

        FStr := UTF8ToString(Buffer);
        Synchronize(LogOut);
      end
      // ���� ������ ������, ����, ����� ����� ������� 25-30% ���������
      else
        Sleep(10);
    end;
  end;

  GetExitCodeProcess(FProcInfo.hProcess, ExitCode);
  // ���� ������ �� ��������, ��������� ���
  if ExitCode = STILL_ACTIVE then
    TerminateProcess(FProcInfo.hProcess, NO_ERROR);

  CloseHandle(FProcInfo.hThread);
  CloseHandle(FProcInfo.hProcess);
  CloseHandle(FInRead);
  CloseHandle(FInWrite);
  CloseHandle(FOutRead);
  CloseHandle(FOutWrite);

  if FShowCommand then
  begin
    FStr := #13 + #10 + 'exit';
    Synchronize(LogOut);
  end;
end;

procedure TThreadCompile.Send(Command: string);
var
  dwWritten, BufSize: DWORD;
  Buf: array of AnsiChar;
  i: integer;
begin
  BufSize := Length(Command) + 2;
  SetLength(Buf, BufSize);

  for i := 1 to BufSize - 2 do
    Buf[i - 1] := AnsiChar(Command[i]);

  Buf[BufSize - 2] := #13;
  Buf[BufSize - 1] := #10;

  WriteFile(FInWrite, PAnsiChar(Buf)^, BufSize, dwWritten, nil);
end;

procedure TThreadCompile.LogOut;
begin
  SendMessage(FOutput.Handle, EM_REPLACESEL, 0, integer(PChar(FStr)));
end;

end.

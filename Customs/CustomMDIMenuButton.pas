unit CustomMDIMenuButton;

interface

implementation

uses
  System.SysUtils,
  Winapi.Windows,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.ActnMenus;

type
  TCustomMDIMenuButtonClass= class(TCustomMDIMenuButton);

  TJumpOfs = Integer;
  PPointer = ^Pointer;

  PXRedirCode = ^TXRedirCode;
  TXRedirCode = packed record
    Jump: Byte;
    Offset: TJumpOfs;
  end;

  PAbsoluteIndirectJmp = ^TAbsoluteIndirectJmp;
  TAbsoluteIndirectJmp = packed record
    OpCode: Word;
    Addr: PPointer;
  end;

var
  PaintMethodBackup   : TXRedirCode;

function GetActualAddr(Proc: Pointer): Pointer;
begin
  if Proc <> nil then
  begin
    if (Win32Platform = VER_PLATFORM_WIN32_NT) and (PAbsoluteIndirectJmp(Proc).OpCode = $25FF) then
      Result := PAbsoluteIndirectJmp(Proc).Addr^
    else
      Result := Proc;
  end
  else
    Result := nil;
end;

procedure HookProc(Proc, Dest: Pointer; var BackupCode: TXRedirCode);
var
  n: NativeUInt;
  Code: TXRedirCode;
begin
  Proc := GetActualAddr(Proc);
  Assert(Proc <> nil);
  if ReadProcessMemory(GetCurrentProcess, Proc, @BackupCode, SizeOf(BackupCode), n) then
  begin
    Code.Jump := $E9;
    Code.Offset := PAnsiChar(Dest) - PAnsiChar(Proc) - SizeOf(Code);
    WriteProcessMemory(GetCurrentProcess, Proc, @Code, SizeOf(Code), n);
  end;
end;

procedure UnhookProc(Proc: Pointer; var BackupCode: TXRedirCode);
var
  n: NativeUInt;
begin
  if (BackupCode.Jump <> 0) and (Proc <> nil) then
  begin
    Proc := GetActualAddr(Proc);
    Assert(Proc <> nil);
    WriteProcessMemory(GetCurrentProcess, Proc, @BackupCode, SizeOf(BackupCode), n);
    BackupCode.Jump := 0;
  end;
end;


procedure PaintPatch(Self: TObject);
const
  ButtonStyles: array[TMDIButtonStyle] of TThemedWindow = (twMDIMinButtonNormal, twMDIRestoreButtonNormal, twMDICloseButtonNormal);
var
  LButton : TCustomMDIMenuButtonClass;
  LDetails: TThemedElementDetails;
begin
  LButton:=TCustomMDIMenuButtonClass(Self);
  LDetails := StyleServices.GetElementDetails(ButtonStyles[LButton.ButtonStyle]);
  StyleServices.DrawElement(LButton.Canvas.Handle, LDetails, LButton.ClientRect);
end;

procedure HookPaint;
begin
  HookProc(@TCustomMDIMenuButtonClass.Paint, @PaintPatch, PaintMethodBackup);
end;

procedure UnHookPaint;
begin
  UnhookProc(@TCustomMDIMenuButtonClass.Paint, PaintMethodBackup);
end;


initialization
 HookPaint;
finalization
 UnHookPaint;
end.


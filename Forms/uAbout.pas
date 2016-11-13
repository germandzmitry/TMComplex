unit uAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, ShellAPI, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  DateUtils;

type
  TAboutForm = class(TForm)
    lVersion: TLabel;
    lHistory: TLinkLabel;
    BtnOK: TButton;
    Image1: TImage;
    lCaption: TLabel;
    lName: TLabel;
    lVersionDate: TLabel;
    lDeveloper: TLabel;
    lEmail: TLabel;
    eEmail: TEdit;
    mMiKTeX: TMemo;
    lMiKTeX: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lHistoryClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

resourcestring
  rsAboutVersion = '';

implementation

{$R *.dfm}

uses uTexCompile, uLanguage;

function FileVersion(AMask: string; const FileName: TFileName; out Release: Word;
  out Build: Word): String;
var
  VerInfoSize: Cardinal;
  VerValueSize: Cardinal;
  Dummy: Cardinal;
  PVerInfo: Pointer;
  PVerValue: PVSFixedFileInfo;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  GetMem(PVerInfo, VerInfoSize);
  try
    if GetFileVersionInfo(PChar(FileName), 0, VerInfoSize, PVerInfo) then
      if VerQueryValue(PVerInfo, '\', Pointer(PVerValue), VerValueSize) then
        with PVerValue^ do
        begin
          Release := HiWord(dwFileVersionLS);
          Build := LoWord(dwFileVersionLS);
          Result := Format(AMask, // Mask
            [HiWord(dwFileVersionMS), // Major
            LoWord(dwFileVersionMS), // Minor
            HiWord(dwFileVersionLS), // Release
            LoWord(dwFileVersionLS)]); // Build
        end;
  finally
    FreeMem(PVerInfo, VerInfoSize);
  end;
end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  lName.Font.Color := RGB(90, 140, 130);
  // lDeveloper.Font.Color := RGB(90, 140, 130);

end;

procedure TAboutForm.FormShow(Sender: TObject);
var
  LRelease, LBuild: Word;
  LCap: string;
  TexCompile: TThreadCompile;
begin
  UpdateLanguage(Self, lngRus);

  {
    Release = number of days since Jan 1 2000
    Build = number of seconds since midnight (00:00:00), divided by 2
  }
  LCap := lVersion.Caption;
  lVersion.Caption := FileVersion(LCap, Application.ExeName, LRelease, LBuild);

  lVersionDate.Caption := Format(lVersionDate.Caption,
    [DateToStr(IncDay(EncodeDate(2000, 01, 01), LRelease))]);

  mMiKTeX.Lines.Clear;
  mMiKTeX.ReadOnly := true;
  mMiKTeX.BorderStyle := bsNone;

  try
    TexCompile := TThreadCompile.Create('tex -version', mMiKTeX, false);
    TexCompile.Priority := tpLowest;
    TexCompile.Start;
  except
    on E: Exception do
      mMiKTeX.Lines.Add('Ошибка чтения информации о версии MikTex.' + #13#10 +
        'Возможно MiKTeX не установен.')
  end;
end;

procedure TAboutForm.lHistoryClick(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'history.txt') then
    ShellExecute(Handle, nil, PChar('notepad.exe'),
      PChar(ExtractFilePath(Application.ExeName) + 'history.txt'), nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.BtnOKClick(Sender: TObject);
begin
  Close;
end;

end.

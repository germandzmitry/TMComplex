unit uInsertImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Samples.Spin, Vcl.Mask;

type
  TInsertImageForm = class(TForm)
    BtnCancel: TButton;
    BtnOk: TButton;
    eImageFileName: TEdit;
    btnOpenImage: TSpeedButton;
    Image: TImage;
    cbCopyToProjectFolder: TCheckBox;
    rbScale: TRadioButton;
    rbWidth: TRadioButton;
    eScale: TEdit;
    udScale: TUpDown;
    rbHeight: TRadioButton;
    eWidth: TEdit;
    eHeight: TEdit;
    Bevel1: TBevel;
    eAngle: TEdit;
    udAngle: TUpDown;
    cbAngle: TCheckBox;
    gbSize: TGroupBox;
    gbOption: TGroupBox;
    eInsertImageFileName: TEdit;
    cbTrim: TCheckBox;
    iTrim: TImage;
    eTrimTop: TEdit;
    udTrimTop: TUpDown;
    eTrimRight: TEdit;
    udTrimRight: TUpDown;
    eTrimLeft: TEdit;
    eTrimBottom: TEdit;
    udTrimBottom: TUpDown;
    udTrimLeft: TUpDown;
    sbParam: TScrollBox;
    pImage: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure eAngleChange(Sender: TObject);
    procedure eScaleChange(Sender: TObject);
    procedure cbCopyToProjectFolderClick(Sender: TObject);
    procedure cbOption(Sender: TObject);
    procedure rbSize(Sender: TObject);
  private
    { Private declarations }
    FFolderProject: string;
    FIncludeGraphics: string;

    procedure UpdateSizeFieldEnable;
    procedure UpdateOptionFieldEnable;
  public
    { Public declarations }
    property FolderProject: string read FFolderProject write FFolderProject;
    property IncludeGraphics: string read FIncludeGraphics;
  end;

var
  InsertImageForm: TInsertImageForm;

implementation

{$R *.dfm}

uses uLanguage;

procedure TInsertImageForm.FormCreate(Sender: TObject);
begin
  Image.Align := alClient;
  eImageFileName.Text := '';
  eInsertImageFileName.Text := '';
  eWidth.Text := '';
  eHeight.Text := '';

  UpdateSizeFieldEnable;
  UpdateOptionFieldEnable;
end;

procedure TInsertImageForm.FormShow(Sender: TObject);
begin
  UpdateLanguage(Self, lngRus);
end;

procedure TInsertImageForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TInsertImageForm.BtnOkClick(Sender: TObject);
const
  cIncludeGraphics: string = '\includegraphics[%s]{%s}';
  cScale: string = 'scale=%s';
  cWidth: string = 'width=%smm';
  cHeight: string = 'height=%smm';
  cAngle: string = 'angle=%s';
  cTrim: string = 'trim = %smm %smm %smm %smm, clip';

  cFileNotExists: string = 'Файл "%s" не найден!';
  cFileCopyError: string = 'Ошибка копирования: %s.';
var
  LParam, LFileName: string;
begin
  if not FileExists(eImageFileName.Text) then
  begin
    MessageBox(Handle, PChar(Format(cFileNotExists, [eImageFileName.Text])), PChar(Self.Caption),
      MB_ICONWARNING + MB_OK);
    exit;
  end;

  if ExtractFilePath(eImageFileName.Text) = FFolderProject then
    LFileName := ExtractFileName(eImageFileName.Text)
  else
  begin
    if cbCopyToProjectFolder.Checked then
    begin
      LFileName := ExtractFileName(eInsertImageFileName.Text);
      if not CopyFile(pwidechar(eImageFileName.Text), pwidechar(eInsertImageFileName.Text), true)
      then
      begin
        MessageBox(Handle, PChar(Format(cFileCopyError, [SysErrorMessage(GetLastError)])),
          PChar(Self.Caption), MB_ICONERROR + MB_OK);
        exit;
      end;
    end
    else
      LFileName := StringReplace(eImageFileName.Text, '\', '/', [rfReplaceAll]);
  end;

  if rbScale.Checked then
  begin
    LParam := Format(cScale, [StringReplace(FloatToStr(strtoint(eScale.Text) / 100), ',',
      '.', [])]);
  end
  else if rbWidth.Checked then
  begin
    LParam := Format(cWidth, [eWidth.Text]);
  end
  else if rbHeight.Checked then
  begin
    LParam := Format(cHeight, [eHeight.Text]);
  end;

  if cbAngle.Checked then
    LParam := LParam + ', ' + Format(cAngle, [eAngle.Text]);

  if cbTrim.Checked then
    LParam := LParam + ', ' + Format(cTrim, [eTrimLeft.Text, eTrimBottom.Text, eTrimRight.Text,
      eTrimTop.Text]);

  FIncludeGraphics := Format(cIncludeGraphics, [LParam, LFileName]);

  ModalResult := mrOk;
end;

procedure TInsertImageForm.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TInsertImageForm.btnOpenImageClick(Sender: TObject);
var
  i: Integer;
  LOpenDialogImage: TOpenDialog;
begin

  LOpenDialogImage := TOpenDialog.Create(Self);
  try
    LOpenDialogImage.Filter :=
      'Все поддерживаемые файлы|*.jpg;*.jpeg;*.png|JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|PNG (*.png)|*.png';
    LOpenDialogImage.FilterIndex := 1;
    // LOpenDialogImage.DefaultExt := '';
    // LOpenDialogImage.InitialDir := FFolderProject;
    // LOpenDialogImage.Options := LOpenDialogTex.Options + [ofAllowMultiSelect];
    if LOpenDialogImage.Execute then
    begin
      Image.Picture.LoadFromFile(LOpenDialogImage.FileName);
      eImageFileName.Text := LOpenDialogImage.FileName;

      eWidth.Text := IntToStr(Image.Picture.Width);
      eHeight.Text := IntToStr(Image.Picture.Height);

      eInsertImageFileName.Text := FolderProject +
        StringReplace(ExtractFileName(eImageFileName.Text), ' ', '_', [rfReplaceAll]);
    end;
  finally
    LOpenDialogImage.Free;
  end;
end;

procedure TInsertImageForm.rbSize(Sender: TObject);
begin
  UpdateSizeFieldEnable;
end;

procedure TInsertImageForm.cbOption(Sender: TObject);
begin
  UpdateOptionFieldEnable;
end;

procedure TInsertImageForm.cbCopyToProjectFolderClick(Sender: TObject);
var
  LFileName: string;
begin
  eInsertImageFileName.Enabled := cbCopyToProjectFolder.Checked;
end;

procedure TInsertImageForm.eAngleChange(Sender: TObject);
begin
  if (eAngle.Text <> '') and (strtoint(eAngle.Text) > 360) then
    eAngle.Text := '360';
end;

procedure TInsertImageForm.eScaleChange(Sender: TObject);
begin
  if (eScale.Text <> '') and (strtoint(eScale.Text) > 100) then
    eScale.Text := '100';
end;

procedure TInsertImageForm.UpdateSizeFieldEnable;
begin
  eScale.Enabled := rbScale.Checked;
  udScale.Enabled := rbScale.Checked;

  eWidth.Enabled := rbWidth.Checked;
  eHeight.Enabled := rbHeight.Checked;
end;

procedure TInsertImageForm.UpdateOptionFieldEnable;
begin
  eAngle.Enabled := cbAngle.Checked;
  udAngle.Enabled := cbAngle.Checked;

  eTrimTop.Enabled := cbTrim.Checked;
  eTrimLeft.Enabled := cbTrim.Checked;
  eTrimRight.Enabled := cbTrim.Checked;
  eTrimBottom.Enabled := cbTrim.Checked;
  udTrimTop.Enabled := cbTrim.Checked;
  udTrimLeft.Enabled := cbTrim.Checked;
  udTrimRight.Enabled := cbTrim.Checked;
  udTrimBottom.Enabled := cbTrim.Checked;
end;

end.

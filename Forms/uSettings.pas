unit uSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, IniFiles;

type
  TSettingTex = record
    OpenDocAfterCompile: boolean;
  public
    procedure Load(aIni: TIniFile);
    procedure Save(aIni: TIniFile);
  end;

  TSettingPDFViewer = record
    Default: boolean;
    Sumatra: boolean;
    SumatraPath: string;
    SumatraFirstPage: boolean;
    SumatraLastOpenPage: boolean;
    SumatraSynctex: boolean;
    Other: boolean;
    OtherPath: string;
  public
    procedure Load(aIni: TIniFile);
    procedure Save(aIni: TIniFile);
  end;

  TAllSetting = record
    PDFViewer: TSettingPDFViewer;
    Tex: TSettingTex;
  public
    procedure Load;
    procedure Save;
  end;

type
  TSettingsForm = class(TForm)
    pcSettings: TPageControl;
    pBottom: TPanel;
    BtnOK: TButton;
    BtnCancel: TButton;
    tvSettings: TTreeView;
    TabPDFViewer: TTabSheet;
    btnPDFViewerOther: TSpeedButton;
    rbPDFViewerDefault: TRadioButton;
    rbPDFViewerOther: TRadioButton;
    rbPDFViewerSumatra: TRadioButton;
    btnPDFViewerSumatra: TSpeedButton;
    ePDFViewerSumatra: TEdit;
    ePDFViewerOther: TEdit;
    TabApplication: TTabSheet;
    TabTex: TTabSheet;
    TabTexPdflatex: TTabSheet;
    cbTexOpenDocAfterCompile: TCheckBox;
    lTexPDFlatexInteraction: TLabel;
    ComboBox1: TComboBox;
    pPDFViewerSumatra: TPanel;
    rbPDFViewerSumatraFirstPage: TRadioButton;
    rbPDFViewerSumatraLastOpenPage: TRadioButton;
    rbPDFViewerSumatraSynctex: TRadioButton;
    pClient: TPanel;
    bClientBottom: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure tvSettingsClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure rbPDFViewer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure btnPDFViewerOtherClick(Sender: TObject);
    procedure btnPDFViewerSumatraClick(Sender: TObject);
  private
    { Private declarations }
    FAllSetting: TAllSetting;

    procedure InitialSetting;
    procedure UpdateSetting;
  public
  end;

implementation

{$R *.dfm}

uses uTypes, uLanguage;

{ TSetting }

procedure TAllSetting.Load;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  try
    self.PDFViewer.Load(ini);
    self.Tex.Load(ini);
  finally
    ini.Free;
  end;
end;

procedure TAllSetting.Save;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  try
    self.PDFViewer.Save(ini);
    self.Tex.Save(ini);
  finally
    ini.Free;
  end;
end;

{ TSettingPDFViewer }

procedure TSettingPDFViewer.Load(aIni: TIniFile);
begin
  self.Default := aIni.ReadBool('PDFViewer', 'Default', true);
  self.Sumatra := aIni.ReadBool('PDFViewer', 'Sumatra', false);
  self.SumatraPath := aIni.ReadString('PDFViewer', 'SumatraPath', '');
  self.SumatraFirstPage := aIni.ReadBool('PDFViewer', 'SumatraFirstPage', false);
  self.SumatraLastOpenPage := aIni.ReadBool('PDFViewer', 'SumatraLastOpenPage', true);
  self.SumatraSynctex := aIni.ReadBool('PDFViewer', 'SumatraSynctex', false);
  self.Other := aIni.ReadBool('PDFViewer', 'Other', false);
  self.OtherPath := aIni.ReadString('PDFViewer', 'OtherPath', '');
end;

procedure TSettingPDFViewer.Save(aIni: TIniFile);
begin
  aIni.WriteBool('PDFViewer', 'Default', self.Default);
  aIni.WriteBool('PDFViewer', 'Sumatra', self.Sumatra);
  aIni.WriteString('PDFViewer', 'SumatraPath', self.SumatraPath);
  aIni.WriteBool('PDFViewer', 'SumatraFirstPage', self.SumatraFirstPage);
  aIni.WriteBool('PDFViewer', 'SumatraLastOpenPage', self.SumatraLastOpenPage);
  aIni.WriteBool('PDFViewer', 'SumatraSynctex', self.SumatraSynctex);
  aIni.WriteBool('PDFViewer', 'Other', self.Other);
  aIni.WriteString('PDFViewer', 'OtherPath', self.OtherPath);
end;

{ TSettingTex }

procedure TSettingTex.Load(aIni: TIniFile);
begin
  self.OpenDocAfterCompile := aIni.ReadBool('Tex', 'OpenDocAfterCompile', true);
end;

procedure TSettingTex.Save(aIni: TIniFile);
begin
  aIni.WriteBool('Tex', 'OpenDocAfterCompile', self.OpenDocAfterCompile);
end;

{ TSettingForm }

procedure TSettingsForm.FormCreate(Sender: TObject);
var
  i: integer;
  node: TTreeNode;
begin
  bClientBottom.Height := 2;
  pcSettings.Align := alClient;

  UpdateLanguage(self, lngRus);

  tvSettings.Items.Clear;
  tvSettings.Items.BeginUpdate;
  node := tvSettings.Items.AddObject(nil, TabApplication.Caption, Pointer(TabApplication));
  node := tvSettings.Items.AddObject(nil, TabPDFViewer.Caption, Pointer(TabPDFViewer));
  node := tvSettings.Items.AddObject(nil, TabTex.Caption, Pointer(TabTex));
  tvSettings.Items.AddChildObject(node, TabTexPdflatex.Caption, Pointer(TabTexPdflatex));

  tvSettings.Items.EndUpdate;
  tvSettings.FullExpand;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TEdit then
      (self.Components[i] as TEdit).Text := '';
    if Components[i] is TPanel then
    begin
      (Components[i] as TPanel).BevelOuter := bvNone;
      (Components[i] as TPanel).Caption := '';
    end;
  end;

  for i := 0 to pcSettings.PageCount - 1 do
    pcSettings.Pages[i].TabVisible := false;
end;

procedure TSettingsForm.FormShow(Sender: TObject);
begin
  FAllSetting.Load;
  InitialSetting;
end;

procedure TSettingsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TSettingsForm.tvSettingsClick(Sender: TObject);
begin
  pcSettings.ActivePage := TTabSheet(tvSettings.Selected.Data);
end;

procedure TSettingsForm.BtnOKClick(Sender: TObject);
begin
  UpdateSetting;
  FAllSetting.Save;
  close;
end;

procedure TSettingsForm.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSettingsForm.btnPDFViewerSumatraClick(Sender: TObject);
var
  open: TOpenDialog;
begin
  open := TOpenDialog.Create(self);
  try
    open.Filter := 'Приложения|*.exe';
    open.DefaultExt := 'exe';
    if FileExists(ePDFViewerSumatra.Text) then
      open.InitialDir := ExtractFilePath(ePDFViewerSumatra.Text);
    if open.Execute then
      ePDFViewerSumatra.Text := open.FileName;
  finally
    open.Free;
  end;
end;

procedure TSettingsForm.btnPDFViewerOtherClick(Sender: TObject);
var
  open: TOpenDialog;
begin
  open := TOpenDialog.Create(self);
  try
    open.Filter := 'Приложения|*.exe';
    open.DefaultExt := 'exe';
    if FileExists(ePDFViewerOther.Text) then
      open.InitialDir := ExtractFilePath(ePDFViewerOther.Text);
    if open.Execute then
      ePDFViewerOther.Text := open.FileName;
  finally
    open.Free;
  end;
end;

procedure TSettingsForm.rbPDFViewer(Sender: TObject);
begin
  ePDFViewerSumatra.Enabled := rbPDFViewerSumatra.Checked;
  btnPDFViewerSumatra.Enabled := rbPDFViewerSumatra.Checked;
  rbPDFViewerSumatraFirstPage.Enabled := rbPDFViewerSumatra.Checked;
  rbPDFViewerSumatraLastOpenPage.Enabled := rbPDFViewerSumatra.Checked;
  rbPDFViewerSumatraSynctex.Enabled := rbPDFViewerSumatra.Checked;

  ePDFViewerOther.Enabled := rbPDFViewerOther.Checked;
  btnPDFViewerOther.Enabled := rbPDFViewerOther.Checked;
end;

procedure TSettingsForm.InitialSetting;
begin
  { PDFViewer }
  rbPDFViewerDefault.Checked := FAllSetting.PDFViewer.Default;
  rbPDFViewerSumatra.Checked := FAllSetting.PDFViewer.Sumatra;
  rbPDFViewerSumatraFirstPage.Checked := FAllSetting.PDFViewer.SumatraFirstPage;
  rbPDFViewerSumatraLastOpenPage.Checked := FAllSetting.PDFViewer.SumatraLastOpenPage;
  rbPDFViewerSumatraSynctex.Checked := FAllSetting.PDFViewer.SumatraSynctex;
  rbPDFViewerOther.Checked := FAllSetting.PDFViewer.Other;
  ePDFViewerSumatra.Text := FAllSetting.PDFViewer.SumatraPath;
  ePDFViewerOther.Text := FAllSetting.PDFViewer.OtherPath;

  { TeX }
  cbTexOpenDocAfterCompile.Checked := FAllSetting.Tex.OpenDocAfterCompile;
end;

procedure TSettingsForm.UpdateSetting;
begin
  { PDFViewer }
  FAllSetting.PDFViewer.Default := rbPDFViewerDefault.Checked;
  FAllSetting.PDFViewer.Sumatra := rbPDFViewerSumatra.Checked;
  FAllSetting.PDFViewer.SumatraFirstPage := rbPDFViewerSumatraFirstPage.Checked;
  FAllSetting.PDFViewer.SumatraLastOpenPage := rbPDFViewerSumatraLastOpenPage.Checked;
  FAllSetting.PDFViewer.SumatraSynctex := rbPDFViewerSumatraSynctex.Checked;
  FAllSetting.PDFViewer.Other := rbPDFViewerOther.Checked;
  FAllSetting.PDFViewer.SumatraPath := ePDFViewerSumatra.Text;
  FAllSetting.PDFViewer.OtherPath := ePDFViewerOther.Text;

  { TeX }
  FAllSetting.Tex.OpenDocAfterCompile := cbTexOpenDocAfterCompile.Checked;
end;

end.

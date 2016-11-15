unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, UCustomPageControl,
  Winapi.CommCtrl, uEditor, Vcl.ComCtrls, System.ImageList, Vcl.ImgList,
  IniFiles, uTypes, Vcl.OleCtrls, Vcl.ActnMenus,
  Vcl.Samples.Gauges, Vcl.StdCtrls, Vcl.Buttons, pngimage, uTexGuiSymbols,
  BCEditor.Encoding, BCEditor.Editor.KeyCommands, BCEditor.Consts,
  BCEditor.Types, uTexCompile, Vcl.StdStyleActnCtrls, Vcl.ActnColorMaps,
  Winapi.UxTheme, Vcl.Themes, uTexLogParser, uLog, Vcl.Tabs, Vcl.DockTabSet,
  uCustomCaptionedDockTree, Vcl.Menus, Vcl.ActnPopup, uSettings, Vcl.AppEvnts,
  uEditorEncoding, uCustomTabSet;

Const
  STATUS_BAR_CARET = 0;
  STATUS_BAR_ENCODING = 1;
  STATUS_BAR_PATH = 2;

  cCopyDataWaterMark = $DE1F1DAB;

type
  TMain = class(TForm)
    ActListCommand: TActionList;
    ActTexPdfLaTeX: TAction;
    ilCode: TImageList;
    StatusBar: TStatusBar;
    ActFileNew: TAction;
    ActFileOpen: TAction;
    ActFileSave: TAction;
    ActFileSaveAs: TAction;
    ActHelpAbout: TAction;
    ilAction: TImageList;
    ActionMainMenuBar: TActionMainMenuBar;
    ActAlignLeft: TAction;
    ActAlignCenter: TAction;
    ActAlignRight: TAction;
    ActAlignJustify: TAction;
    ActFontBold: TAction;
    ActFontItalic: TAction;
    ActFontUnderline: TAction;
    ActTextSubSize: TAction;
    ActFileSetting: TAction;
    ActFileExit: TAction;
    ActFontColor: TAction;
    ActTexStop: TAction;
    sDockBottom: TSplitter;
    pAction: TPanel;
    PanelActionLeft: TPanel;
    PanelActionClient: TPanel;
    Bevel1: TBevel;
    ActInsertImage: TAction;
    ActEditUndo: TAction;
    ActEditRedo: TAction;
    ActEditCut: TAction;
    ActEditCopy: TAction;
    ActEditPaste: TAction;
    ActEditSelectAll: TAction;
    ActTextShowSpecialChars: TAction;
    ActMiKTeXOption: TAction;
    ActMiKTeXPackageManager: TAction;
    ActMiKTeXUpdateWizard: TAction;
    ActMiKTeXTeXworks: TAction;
    ActTexSysCmd: TAction;
    pDockBottom: TPanel;
    ActViewLog: TAction;
    PopupActionEditor: TPopupActionBar;
    ActEditGoToLine: TAction;
    ActEditUndo1: TMenuItem;
    ActEditRedo1: TMenuItem;
    ActEditCut1: TMenuItem;
    ActEditCopy1: TMenuItem;
    ActEditPaste1: TMenuItem;
    ActEditSelectAll1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ActionToolBar1: TActionToolBar;
    ApplicationEvents: TApplicationEvents;
    ActWindowCascade: TAction;
    ActWindowTileHorizontal: TAction;
    ActWindowTileVertical: TAction;
    ActWindowMaximize: TAction;
    ActEditEncoding: TAction;
    ActMngCommand: TActionManager;
    ActTextSubFont: TAction;
    ActTextSubAlign: TAction;
    ActionToolBar2: TActionToolBar;
    ActInsertSubList: TAction;
    ActListItemize: TAction;
    ActListEnumerate: TAction;
    ActListDescription: TAction;
    ActFile: TAction;
    ActEdit: TAction;
    ActText: TAction;
    ActInsert: TAction;
    ActView: TAction;
    ActTex: TAction;
    ActMiKTeX: TAction;
    ActWindow: TAction;
    ActHelp: TAction;
    ActInsertSubTables: TAction;
    ActListCases: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure SaveSettings;
    procedure LoadSettings;

    { File }
    procedure ActFileExecute(Sender: TObject);
    procedure ActFileNewExecute(Sender: TObject);
    procedure ActFileOpenExecute(Sender: TObject);
    procedure ActFileSaveExecute(Sender: TObject);
    procedure ActFileSaveAsExecute(Sender: TObject);
    procedure ActFileSettingExecute(Sender: TObject);
    procedure ActFileExitExecute(Sender: TObject);

    { Edit }
    procedure ActEditExecute(Sender: TObject);
    procedure ActEditUndoExecute(Sender: TObject);
    procedure ActEditRedoExecute(Sender: TObject);
    procedure ActEditCutExecute(Sender: TObject);
    procedure ActEditCopyExecute(Sender: TObject);
    procedure ActEditPasteExecute(Sender: TObject);
    procedure ActEditSelectAllExecute(Sender: TObject);
    procedure ActEditGoToLineExecute(Sender: TObject);
    procedure ActEditEncodingExecute(Sender: TObject);

    { Text }
    procedure ActTextExecute(Sender: TObject);
    procedure ActTextSubSizeExecute(Sender: TObject);
    procedure ActTextSubFontExecute(Sender: TObject);
    procedure ActTextSubAlignExecute(Sender: TObject);
    procedure ActTextShowSpecialCharsExecute(Sender: TObject);

    { Text-Font }
    procedure ActFontBoldExecute(Sender: TObject);
    procedure ActFontItalicExecute(Sender: TObject);
    procedure ActFontUnderlineExecute(Sender: TObject);
    procedure ActFontColorExecute(Sender: TObject);

    { Text-Align }
    procedure ActAlignLeftExecute(Sender: TObject);
    procedure ActAlignCenterExecute(Sender: TObject);
    procedure ActAlignRightExecute(Sender: TObject);
    procedure ActAlignJustifyExecute(Sender: TObject);

    { Insert }
    procedure ActInsertExecute(Sender: TObject);
    procedure ActInsertImageExecute(Sender: TObject);
    procedure ActInsertSubListExecute(Sender: TObject);

    { Insert-List }
    procedure ActListItemizeExecute(Sender: TObject);
    procedure ActListEnumerateExecute(Sender: TObject);
    procedure ActListDescriptionExecute(Sender: TObject);
    procedure ActListCasesExecute(Sender: TObject);

    { View }
    procedure ActViewExecute(Sender: TObject);
    procedure ActViewLogExecute(Sender: TObject);

    { TeX }
    procedure ActTexExecute(Sender: TObject);
    procedure ActTexPdfLaTeXExecute(Sender: TObject);
    procedure ActTexStopExecute(Sender: TObject);
    procedure ActTexSysCmdExecute(Sender: TObject);

    { MiKTeX }
    procedure ActMiKTeXExecute(Sender: TObject);
    procedure ActMiKTeXOptionExecute(Sender: TObject);
    procedure ActMiKTeXPackageManagerExecute(Sender: TObject);
    procedure ActMiKTeXUpdateWizardExecute(Sender: TObject);
    procedure ActMiKTeXTeXworksExecute(Sender: TObject);

    { Window }
    procedure ActWindowExecute(Sender: TObject);
    procedure ActWindowCascadeExecute(Sender: TObject);
    procedure ActWindowTileHorizontalExecute(Sender: TObject);
    procedure ActWindowTileVerticalExecute(Sender: TObject);
    procedure ActWindowMaximizeExecute(Sender: TObject);

    { Help }
    procedure ActHelpExecute(Sender: TObject);
    procedure ActHelpAboutExecute(Sender: TObject);

    procedure memoLogKeyPress(Sender: TObject; var Key: Char);

    procedure pDockBottomUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
      var Allow: Boolean);
    procedure pDockBottomDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
    procedure StatusBarDblClick(Sender: TObject);

    procedure TabEditorChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
    procedure TabEditorGetImageIndex(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer);
  private
    { Private declarations }
    FAllSetting: TAllSetting;
    FTabEditor: TCustomTabSet;
    FPageSymbols: TCustomPageControl;
    // FLog: TLogForm;
    FPageLog: TCustomPageControl;
    FActiveEditor: TEditorForm;
    FCurDoc: Integer;
    FFolderProject: string;
    FTexGuiSymbols: TTexGuiSymbols;
    FTexCompile: TThreadCompile;
    FSendString: string;

    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;

    procedure AddPageCode(const PageCaption, PageFileName: string);
    procedure SetStatusBarCaption();
    function OpenDocument(AFileName: string): Boolean;
    function SaveDocument(AFileName: string): Boolean; overload;
    procedure ThreadEndGenerate(Sender: TObject);

    procedure TexGuiSymbolClick(Sender: TObject; const Symbol: TSymbol);
    procedure InsertTemplate(const cmName: string; moveX: Integer);
    procedure InsertTemplateBlock(const cmBegin: string; const cmEnd: string);
    procedure InsertTemplateList(cmBegin, cmItem, cmEnd: string);

    procedure ProcessParam(Index: Integer; param: string);
  public
    { Public declarations }
    function SaveDocument(): Boolean; overload;
    property ActiveEditor: TEditorForm read FActiveEditor;
    property TabEditor: TCustomTabSet read FTabEditor write FTabEditor;
  end;

var
  Main: TMain;

implementation

{$R *.dfm}
{$R 'Image\TexGuiSymbols\1. Math.res'}
{$R 'Image\TexGuiSymbols\2. Greek.res'}
{$R 'Image\TexGuiSymbols\3. Symbols.res'}
{$R 'Image\TexGuiSymbols\4. International.res'}
{$R 'Image\TexGuiSymbols\5. Typeface.res'}
{$R 'Image\TexGuiSymbols\6. Functions.res'}
{$R 'Image\TexGuiSymbols\7.res'}
{$R 'Image\TexGuiSymbols\8.res'}
{$R 'Image\TexGuiSymbols\9.res'}
{$R 'Image\TexGuiSymbols\10.res'}
{$R 'Image\TexGuiSymbols\11.res'}
{$R 'Image\TexGuiSymbols\12.res'}
{$R 'Image\TexGuiSymbols\13.res'}

uses uAbout, uProcess, uEditorGoToLine, uEncoding, uLanguage, uInsertList;

procedure TMain.ProcessParam(Index: Integer; param: string);
begin
  case index of
    1:
      begin
        if FileExists(param) then
          OpenDocument(param);
      end;
    2:
      begin
        if (Main.FActiveEditor <> nil) and (param <> '') then
        begin
          FActiveEditor.Editor.DisplayCaretX := 1;
          FActiveEditor.Editor.DisplayCaretY := StrToInt(param) - 1;
        end;
      end;
  end;
end;

procedure TMain.WMCopyData(var Msg: TWMCopyData);
var
  PData: PChar;
  param: string;
  ind: Integer;
begin
  if Msg.CopyDataStruct.dwData <> cCopyDataWaterMark then
    raise Exception.Create('Invalid data structure passed in WM_COPYDATA');
  ind := 1;
  PData := Msg.CopyDataStruct.lpData;
  while PData^ <> #0 do
  begin
    param := PData;
    ProcessParam(ind, param);
    Inc(PData, Length(param) + 1);
    Inc(ind);
    Application.ProcessMessages;
  end;
  FActiveEditor.Editor.SetFocus;
  // Main.SetFocus;
  Msg.Result := 1;
end;

procedure TMain.SaveSettings;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);

  // ����
  if WindowState = wsMaximized then
    IniFile.WriteBool('Window', 'Maximized', True)
  else
  begin
    IniFile.WriteBool('Window', 'Maximized', False);
    IniFile.WriteInteger('Window', 'Left', Main.Left);
    IniFile.WriteInteger('Window', 'Top', Main.Top);
    IniFile.WriteInteger('Window', 'Width', Main.Width);
    IniFile.WriteInteger('Window', 'Height', Main.Height);
  end;

  // ���
  IniFile.WriteBool('Log', 'Show', (FLog <> nil));

  IniFile.Free;
end;

procedure TMain.LoadSettings;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  // �����
  Main.Left := IniFile.ReadInteger('Window', 'Left', 10);
  Main.Top := IniFile.ReadInteger('Window', 'Top', 10);
  Main.Width := IniFile.ReadInteger('Window', 'Width', 1000);
  Main.Height := IniFile.ReadInteger('Window', 'Height', 640);
  if IniFile.ReadBool('Window', 'Maximized', True) then
    WindowState := wsMaximized;

  // ���
  if IniFile.ReadBool('Log', 'Show', True) then
  begin
    ActViewLogExecute(ActViewLog);
  end;

  IniFile.Free;

  FFolderProject := ExtractFilePath(Application.ExeName) + 'Project';
end;

procedure TMain.FormCreate(Sender: TObject);

  function CreateTab(aPage: TCustomPageControl; aCaption: string): TTabSheet;
  begin
    Result := TTabSheet.Create(aPage);
    Result.PageControl := aPage;
    Result.Caption := aCaption;
    Result.DoubleBuffered := True;
  end;

var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TPanel then
    begin
      (Components[i] as TPanel).BevelOuter := bvNone;
      (Components[i] as TPanel).Caption := '';
    end;

  pDockBottom.Height := 0;
  sDockBottom.Height := 0;
  sDockBottom.Enabled := False;

  pAction.Height := 103;

  Bevel1.Width := 3;

  ActTexPdfLaTeX.Enabled := True;
  ActTexStop.Enabled := False;

  FTabEditor := TCustomTabSet.Create(self);
  with FTabEditor do
  begin
    Left := 0;
    Top := ActionMainMenuBar.Height + pAction.Height;
    Width := 50;
    Height := ActionToolBar1.Height;
    parent := Main;
    align := alTop;
    TabPosition := tpTop;
    style := tsModernTabs;

    OnChange := TabEditorChange;
    OnGetImageIndex := TabEditorGetImageIndex;
  end;

  // ������ � ��������� TeX
  FPageSymbols := TCustomPageControl.Create(self);
  with FPageSymbols do
  begin
    Left := 10;
    Top := 10;
    Width := 20;
    Height := 20;
    parent := PanelActionClient;

    Visible := True;
    align := alClient;
    OwnerDraw := True;
    TabHeight := 23;
    TextFormat := [tfCenter];
    DoubleBuffered := True;

    style := tsButtons;
  end;
  SendMessage(FPageSymbols.Handle, WM_UPDATEUISTATE, MakeLong(UIS_SET, UISF_HIDEFOCUS), 0);
  // SendMessage(FPageSymbols.Handle, TCM_SETPADDING, 0, MAKELPARAM(7, FPageSymbols.TabHeight + 3));

  FTexGuiSymbols := TTexGuiSymbols.Create;
  FTexGuiSymbols.OnSymbolClick := TexGuiSymbolClick;

  FTexGuiSymbols.DrawMath(CreateTab(FPageSymbols, 'Math'));
  FTexGuiSymbols.DrawGreek(CreateTab(FPageSymbols, 'Greek'));
  FTexGuiSymbols.DrawSymbols(CreateTab(FPageSymbols, 'Symbols'));
  FTexGuiSymbols.DrawInternational(CreateTab(FPageSymbols, 'International'));
  FTexGuiSymbols.DrawTypefase(CreateTab(FPageSymbols, 'Typeface'));
  FTexGuiSymbols.DrawFunctions(CreateTab(FPageSymbols, 'Functions'));
  FTexGuiSymbols.Draw7(CreateTab(FPageSymbols, '{ || } ...'));
  FTexGuiSymbols.Draw8(CreateTab(FPageSymbols, '+ / - ...'));
  FTexGuiSymbols.Draw9(CreateTab(FPageSymbols, '---> ...'));
  FTexGuiSymbols.Draw10(CreateTab(FPageSymbols, '< > = ...'));
  FTexGuiSymbols.Draw11(CreateTab(FPageSymbols, 'AMS ...'));
  FTexGuiSymbols.Draw12(CreateTab(FPageSymbols, 'AMS <>='));
  FTexGuiSymbols.Draw13(CreateTab(FPageSymbols, 'AMS NOT < > ='));

  UpdateLanguage(self, lngRus);
end;

procedure TMain.FormShow(Sender: TObject);
begin
  LoadSettings;
  FAllSetting.Load;

  ProcessParam(1, ParamStr(1));
  ProcessParam(2, ParamStr(2));
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
// var
// i: Integer;
begin
  // for i := 0 to Main.MDIChildCount - 1 do
  // Main.MDIChildren[i].Close;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ActTexStopExecute(ActTexStop);

  SaveSettings;

  // ��� �� ����������� �������� � ����� ����, �������� ������ �����
  // SaveSetting ��������� ����
  if FLog <> nil then
    FLog.Close;

  FTexGuiSymbols.Free;
  FTabEditor.Free;
  FPageSymbols.Free;
  FPageLog.Free;
end;

procedure TMain.ActFileExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActFileNewExecute(Sender: TObject);
var
  LNewFileName: string;
begin
  Inc(FCurDoc);
  LNewFileName := 'Doc ' + IntToStr(FCurDoc) + '.tex';
  AddPageCode(LNewFileName, FFolderProject + '\' + LNewFileName);

  FActiveEditor.Editor.Encoding := TEncoding.UTF8WithoutBOM;
  SetStatusBarCaption;
end;

procedure TMain.ActFileOpenExecute(Sender: TObject);
var
  i: Integer;
  LOpenDialogTex: TOpenDialog;
begin

  LOpenDialogTex := TOpenDialog.Create(self);
  try
    LOpenDialogTex.Filter := 'Tex documents (*.tex)|*.tex';
    LOpenDialogTex.FilterIndex := 1;
    LOpenDialogTex.DefaultExt := 'tex';
    LOpenDialogTex.InitialDir := FFolderProject;
    LOpenDialogTex.Options := LOpenDialogTex.Options + [ofAllowMultiSelect];
    if LOpenDialogTex.Execute then
    begin
      for i := 0 to LOpenDialogTex.Files.Count - 1 do
        OpenDocument(LOpenDialogTex.Files.Strings[i]);
    end;
  finally
    LOpenDialogTex.Free;
  end;
end;

procedure TMain.ActFileSaveExecute(Sender: TObject);
begin
  ActTexStopExecute(ActTexStop);

  SaveDocument;
end;

procedure TMain.ActFileSaveAsExecute(Sender: TObject);
var
  LFileName: string;
  LSaveDialogTex: TSaveDialog;
begin
  ActTexStopExecute(ActTexStop);

  if FActiveEditor = nil then
    exit;

  LSaveDialogTex := TSaveDialog.Create(self);
  try
    LSaveDialogTex.Filter := 'Tex documents (*.tex)|*.tex';
    LSaveDialogTex.FilterIndex := 1;
    LSaveDialogTex.DefaultExt := 'tex';
    if FileExists(FActiveEditor.FileName) then
      LSaveDialogTex.InitialDir := ExtractFilePath(FActiveEditor.FileName)
    else
      LSaveDialogTex.InitialDir := FFolderProject;
    LSaveDialogTex.FileName := ExtractFileName(FActiveEditor.FileName);
    if LSaveDialogTex.Execute then
      LFileName := LSaveDialogTex.FileName
    else
      exit;
  finally
    LSaveDialogTex.Free;
  end;

  SaveDocument(LFileName);
end;

procedure TMain.ActFileSettingExecute(Sender: TObject);
var
  setting: TSettingsForm;
begin
  setting := TSettingsForm.Create(Main);
  try
    setting.tvSettings.Select(setting.tvSettings.Items[0]);
    setting.tvSettingsClick(setting.tvSettings);
    setting.ShowModal;
    FAllSetting.Load;
  finally
    setting.Free;
  end;
end;

procedure TMain.ActFileExitExecute(Sender: TObject);
begin
  Main.Close;
end;

procedure TMain.ActEditExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActEditUndoExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.CommandProcessor(ecUndo, BCEDITOR_NONE_CHAR, nil);
end;

procedure TMain.ActEditRedoExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.CommandProcessor(ecRedo, BCEDITOR_NONE_CHAR, nil);
end;

procedure TMain.ActEditCutExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.CutToClipboard;
end;

procedure TMain.ActEditCopyExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.CopyToClipboard;
end;

procedure TMain.ActEditPasteExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.PasteFromClipboard;
end;

procedure TMain.ActEditSelectAllExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
    FActiveEditor.Editor.SelectAll;
end;

procedure TMain.ActEditGoToLineExecute(Sender: TObject);
var
  LGoToLine: TEditorGoToLineForm;
begin
  if FActiveEditor <> nil then
  begin
    LGoToLine := TEditorGoToLineForm.Create(Main);
    try
      LGoToLine.eLine.Text := IntToStr(FActiveEditor.Editor.DisplayCaretY);
      if LGoToLine.ShowModal = mrOk then
      begin
        FActiveEditor.Editor.DisplayCaretX := 1;
        FActiveEditor.Editor.DisplayCaretY := StrToInt(LGoToLine.eLine.Text);
      end;
    finally
      LGoToLine.Free;
    end;
  end;
end;

procedure TMain.ActEditEncodingExecute(Sender: TObject);
var
  LEncoding: TEditorEncodingForm;
begin
  if FActiveEditor <> nil then
  begin
    LEncoding := TEditorEncodingForm.Create(Main);
    try
      LEncoding.cbEncoding.ItemIndex := LEncoding.cbEncoding.Items.IndexOf
        (EncodingToText(FActiveEditor.Editor.Encoding));
      if LEncoding.ShowModal = mrOk then
      begin
        SetEncoding(FActiveEditor.Editor, LEncoding.cbEncoding.ItemIndex);
        SetStatusBarCaption;
      end;
    finally
      LEncoding.Free;
    end;
  end;
end;

{ Text }

procedure TMain.ActTextExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTextSubSizeExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTextSubAlignExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTextSubFontExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTextShowSpecialCharsExecute(Sender: TObject);
begin
  ActTextShowSpecialChars.Checked := not ActTextShowSpecialChars.Checked;
  FActiveEditor.Editor.SpecialChars.Visible := ActTextShowSpecialChars.Checked;
  FActiveEditor.Editor.SpecialChars.EndOfLine.Visible := ActTextShowSpecialChars.Checked;
end;

procedure TMain.ActFontBoldExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleBold + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActFontItalicExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleItalic + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActFontUnderlineExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleUnderline + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActFontColorExecute(Sender: TObject);
var
  cd: TColorDialog;
  ColorRGB: Longint;
  R, g, b: Byte;
begin
  cd := TColorDialog.Create(self);
  try
    cd.Options := [cdFullOpen, cdPreventFullOpen];
    if cd.Execute then
    begin
      ColorRGB := cd.Color;
      R := ColorRGB;
      g := ColorRGB shr 8;
      b := ColorRGB shr 16;
      InsertTemplate(cmTextColor + '[RGB]{' + IntToStr(R) + ',' + IntToStr(g) + ',' + IntToStr(b) +
        '}{}', -1);
    end;
  finally
    cd.Free;
  end;
end;

procedure TMain.ActAlignLeftExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignLeftBegin, cmAlignLeftEnd);
end;

procedure TMain.ActAlignCenterExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignCenterBegin, cmAlignCenterEnd);
end;

procedure TMain.ActAlignRightExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignRightBegin, cmAlignRightEnd);
end;

procedure TMain.ActAlignJustifyExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignJustifyBegin, cmAlignJustifyEnd);
end;

{ Insert }

procedure TMain.ActInsertExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertImageExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertSubListExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActListItemizeExecute(Sender: TObject);
begin
  InsertTemplateList(cmListItemizeBegin, cmListItemizeItem, cmListItemizeEnd);
end;

procedure TMain.ActListEnumerateExecute(Sender: TObject);
begin
  InsertTemplateList(cmListEnumerateBegin, cmListEnumerateItem, cmListEnumerateEnd);
end;

procedure TMain.ActListDescriptionExecute(Sender: TObject);
begin
  InsertTemplateList(cmListDescriptionBegin, cmListDescriptionItem, cmListDescriptionEnd);
end;

procedure TMain.ActListCasesExecute(Sender: TObject);
var
  i, LCutY: Integer;
  LInsert: string;
  LInsertList: TInsertListForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertList := TInsertListForm.Create(Main);
    try
      if LInsertList.ShowModal = mrOk then
      begin
        LCutY := FActiveEditor.Editor.DisplayCaretY;
        for i := 1 to StrToInt(LInsertList.eItemCount.Text) do
          if i = StrToInt(LInsertList.eItemCount.Text) then
            LInsert := LInsert + '    _, & \hbox{_.}' + #13#10
          else
            LInsert := LInsert + '    _, & \hbox{_;} \\' + #13#10;

        LInsert := '\left\{' + #13#10 + '  \begin{array}{ll}' + #13#10 // ������
          + LInsert //
          + '  \end{array}' + #13#10 + '\right.'; // �����

        FActiveEditor.Editor.InsertText(LInsert);
        FActiveEditor.Editor.DisplayCaretY := LCutY + 2;
        FActiveEditor.Editor.DisplayCaretX := 6;
      end;
    finally
      LInsertList.Free;
    end;
  end;
  // InsertTemplateList('\left\{' + #13#10 + '  \begin{array}{ll}', ' , & \hbox{ ;} \\',
  // '  \end{array}' + #13#10 + '\right.');
end;

{ View }

procedure TMain.ActViewExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActViewLogExecute(Sender: TObject);
begin
  if (FLog = nil) then
  begin
    FLog := TLogForm.Create(Application);
    FLog.ManualDock(pDockBottom, nil, alClient);
    FLog.Show;
  end
  else if not FLog.Showing then
  begin
    FLog.ManualDock(pDockBottom, nil, alClient);
    FLog.Show;
    FLog.ShowMsg;
  end;
end;

{ TeX }

procedure TMain.ActTexExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ThreadEndGenerate(Sender: TObject);
var
  pdfFile, inversesearch, OpenPDF: string;
  resParse: Boolean;
begin
  ActTexStop.Enabled := False;
  ActTexPdfLaTeX.Enabled := True;

  FLog.Caption := 'Parsing log compiling...';
  Application.ProcessMessages;

  resParse := TTexLogParser.Parse(FLog.mLog.Text, FLog.MsgLines, FLog.MsgCount);
  FLog.ShowMsg;

  // ���� ���� ������, �������� �� ���������
  if resParse then
  begin
    if not FLog.Showing then
      MessageBox(Handle, PChar(FLog.GetParsingLine), PChar(Main.Caption), MB_ICONWARNING + MB_OK);
    exit;
  end;

  pdfFile := StringReplace(ExtractFileName(FActiveEditor.FileName),
    ExtractFileExt(FActiveEditor.FileName), '', []);

  pdfFile := ExtractFilePath(FActiveEditor.FileName) + pdfFile + '.pdf';

  if FileExists(pdfFile) then
  begin
    // ������������ � ������� �� ���������, ���� ���� ���������� ������
    // �� ������ exe ������ ����
    if (FAllSetting.PDFViewer.Default) // ������������ �� ���������
      or ((FAllSetting.PDFViewer.Sumatra) and not FileExists(FAllSetting.PDFViewer.SumatraPath)) //
      or ((FAllSetting.PDFViewer.Other) and not FileExists(FAllSetting.PDFViewer.OtherPath)) then
      RunProcessDefault(pdfFile);

    // ���� Sumatra ����������� ������ � synctex
    if (FAllSetting.PDFViewer.Sumatra) and (FileExists(FAllSetting.PDFViewer.SumatraPath)) then
    begin
      inversesearch := '\"' + Application.ExeName + '\" \"%f\" \"%l\"';
      OpenPDF := '"' + FAllSetting.PDFViewer.SumatraPath + // ���� � Sumatra
        '" -reuse-instance "' + pdfFile + // ����� �������� ���������� � ������� � ��� ����
        '" -inverse-search "' + inversesearch + '"'; // ��������� ������� ��� ����� ����������
      RunProcess(OpenPDF);
    end;

    // ���� ������ ������������
    if (FAllSetting.PDFViewer.Other) and (FileExists(FAllSetting.PDFViewer.OtherPath)) then
    begin
      OpenPDF := '"' + FAllSetting.PDFViewer.OtherPath + '" "' + pdfFile + '"';
      RunProcess(OpenPDF);
    end;

  end;

end;

procedure TMain.ActTexPdfLaTeXExecute(Sender: TObject);

var
  path: string;
  cmd: string;
begin
  if FActiveEditor = nil then
    exit;

  ActFileSaveExecute(ActFileSave);

  path := ExtractFilePath(FActiveEditor.FileName);

  // ���� ��������� ������ ����, ������� ���
  if IsPathDelimiter(path, Length(path)) then
    Delete(path, Length(path), 1);

  cmd := 'pdflatex ' + // ����������
    '--output-directory "' + path + '" ' + // ���� � ����� � ��������
  // '--interaction=errorstopmode ' + // ��� ��������� ������
    '--interaction=nonstopmode ' + // ��� ��������� ������
    '--synctex=-1 ' + // ���� ������������� (��� sumatra)
    '"' + FActiveEditor.FileName + '"'; // ��� ����

  try
    if FLog = nil then
    begin
      FLog := TLogForm.Create(Application);
    end
    else
    begin
      FLog.Clear;
      FLog.Caption := 'Compile...';
    end;

    FTexCompile := TThreadCompile.Create(cmd, FLog.mLog, True, ActTexSysCmd.Checked);
    FTexCompile.Priority := tpLowest;
    FTexCompile.OnTerminate := ThreadEndGenerate;
  except
    // ���� �� ����� �� ������� �������, �� � ����� ������ �������������
    on E: Exception do
    begin
      ShowMessage(E.Message);
      exit;
    end;
  end;

  ActTexStop.Enabled := True;
  ActTexPdfLaTeX.Enabled := False;

  try
    FTexCompile.Start;
  except
    on E: Exception do
    begin
      ActTexStopExecute(ActTexStop);
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TMain.ActTexStopExecute(Sender: TObject);
begin
  try
    if not Assigned(FTexCompile) then
      exit;

    FTexCompile.Terminate;
    Sleep(50);
    FreeAndNil(FTexCompile);
    Sleep(50);
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TMain.ActTexSysCmdExecute(Sender: TObject);
begin
  ActTexSysCmd.Checked := not ActTexSysCmd.Checked;
end;

{ MiKTeX }

procedure TMain.ActMiKTeXExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActMiKTeXOptionExecute(Sender: TObject);
begin
  RunProcess('mo_admin');
end;

procedure TMain.ActMiKTeXPackageManagerExecute(Sender: TObject);
begin
  RunProcess('mpm_mfc_admin');
end;

procedure TMain.ActMiKTeXUpdateWizardExecute(Sender: TObject);
begin
  RunProcess('miktex-update_admin');
end;

procedure TMain.ActMiKTeXTeXworksExecute(Sender: TObject);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.State <> stNew) and
    (FileExists(FActiveEditor.FileName)) then
  begin
    ActFileSaveExecute(ActFileSave);
    RunProcess('texworks "' + FActiveEditor.FileName + '"');
  end
  else
    RunProcess('texworks ');
end;

{ Window }

procedure TMain.ActWindowCascadeExecute(Sender: TObject);
begin
  Cascade;
end;

procedure TMain.ActWindowExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActWindowTileHorizontalExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TMain.ActWindowTileVerticalExecute(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TMain.ActWindowMaximizeExecute(Sender: TObject);
begin
  if FActiveEditor <> nil then
    FActiveEditor.WindowState := wsMaximized;
end;

{ Help }

procedure TMain.ActHelpAboutExecute(Sender: TObject);
var
  LAbout: TAboutForm;
begin
  LAbout := TAboutForm.Create(self);
  try
    LAbout.ShowModal;
  finally
    LAbout.FreeOnRelease;
  end;
end;

procedure TMain.ActHelpExecute(Sender: TObject);
begin
  //
end;

procedure TMain.TabEditorChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
begin
  try
    SendMessage(ClientHandle, WM_SETREDRAW, ord(False), 0);
    FActiveEditor := TEditorForm(FTabEditor.Tabs.Objects[NewTab]);
    FActiveEditor.Show;
  finally
    SendMessage(ClientHandle, WM_SETREDRAW, ord(True), 0);
    RedrawWindow(ClientHandle, nil, 0, RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN or
      RDW_NOINTERNALPAINT);
  end;

  SetStatusBarCaption;
end;

procedure TMain.TabEditorGetImageIndex(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer);
begin
  // if TabIndex = TabEditor.TabIndex then
  // ImageIndex := FActiveEditor.State;
end;

procedure TMain.pDockBottomDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
var
  IniFile: TIniFile;
begin
  if pDockBottom.Height = 0 then
  begin
    IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
    try
      pDockBottom.Height := IniFile.ReadInteger('Docking', 'Bottom', Main.Height div 6);
    finally
      IniFile.Free;
    end;
    sDockBottom.Height := 3;
    sDockBottom.Enabled := True;

    StatusBar.Top := Main.Height - StatusBar.Height;
    pDockBottom.Top := StatusBar.Top - pDockBottom.Height;
    sDockBottom.Top := pDockBottom.Top - sDockBottom.Height;

  end;
end;

procedure TMain.pDockBottomUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
  var Allow: Boolean);
var
  IniFile: TIniFile;
begin
  if pDockBottom.DockClientCount = 1 then
  begin
    IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
    try
      IniFile.WriteInteger('Docking', 'Bottom', pDockBottom.Height);
    finally
      IniFile.Free;
    end;

    pDockBottom.Height := 0;
    sDockBottom.Height := 0;
    sDockBottom.Enabled := False;
  end;
end;

procedure TMain.AddPageCode(const PageCaption, PageFileName: string);
var
  new: TEditorForm;
begin
  try
    SendMessage(ClientHandle, WM_SETREDRAW, ord(False), 0);

    new := TEditorForm.Create(Application);

    if FTabEditor.Tabs.Count = 0 then
      new.WindowState := wsMaximized;
  finally
    SendMessage(ClientHandle, WM_SETREDRAW, ord(True), 0);
    RedrawWindow(ClientHandle, nil, 0, RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN or
      RDW_NOINTERNALPAINT);
  end;

  new.Caption := PageCaption;
  new.FileName := PageFileName;
  FTabEditor.Tabs.AddObject(ExtractFileName(new.FileName), new);
  if FTabEditor.Tabs.Count = 1 then
    SetFocus;

  FTabEditor.TabIndex := FTabEditor.Tabs.Count - 1;
end;

procedure TMain.SetStatusBarCaption();
begin
  StatusBar.Panels[STATUS_BAR_ENCODING].Text := EncodingToText(FActiveEditor.Editor.Encoding);
  StatusBar.Panels[STATUS_BAR_PATH].Text := ExtractFilePath(FActiveEditor.FileName);
end;

procedure TMain.StatusBarDblClick(Sender: TObject);
var
  LClickPos: TPoint;
  LIndex: Integer;

  function GetPanelIndex: Integer;
  var
    i: Integer;
    LRect: TRect;
  begin
    for i := 0 to StatusBar.Panels.Count - 1 do
    begin
      if SendMessage(StatusBar.Handle, SB_GETRECT, i, LPARAM(@LRect)) <> 0 then
      begin
        if PtInRect(LRect, LClickPos) then
          exit(i);
      end;
    end;

    Result := -1;
  end;

begin
  LClickPos := SmallPointToPoint(TSmallPoint(GetMessagePos()));
  LClickPos := StatusBar.ScreenToClient(LClickPos);
  LIndex := GetPanelIndex;

  case GetPanelIndex of
    STATUS_BAR_CARET:
      ActEditGoToLineExecute(ActEditGoToLine);
    STATUS_BAR_ENCODING:
      ActEditEncodingExecute(ActEditEncoding);
    STATUS_BAR_PATH:
      ;
  end;
end;

procedure TMain.InsertTemplate(const cmName: string; moveX: Integer);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
  begin
    FActiveEditor.Editor.InsertText(Pwidechar(cmName));
    FActiveEditor.Editor.DisplayCaretX := FActiveEditor.Editor.DisplayCaretX + moveX;
  end;
end;

procedure TMain.InsertTemplateBlock(const cmBegin: string; const cmEnd: string);
begin
  if (FActiveEditor <> nil) and (FActiveEditor.Editor <> nil) then
  begin
    FActiveEditor.Editor.InsertText(Pwidechar(cmBegin + #13#10 + #13#10 + cmEnd));
    FActiveEditor.Editor.DisplayCaretY := FActiveEditor.Editor.DisplayCaretY - 1;
  end;
end;

procedure TMain.InsertTemplateList(cmBegin, cmItem, cmEnd: string);
var
  i, LCutY: Integer;
  LInsert: string;
  LInsertList: TInsertListForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertList := TInsertListForm.Create(Main);
    try
      if LInsertList.ShowModal = mrOk then
      begin
        LCutY := FActiveEditor.Editor.DisplayCaretY;
        for i := 1 to StrToInt(LInsertList.eItemCount.Text) do
          LInsert := LInsert + '  ' + cmItem + ' ' + #13#10;

        LInsert := cmBegin + #13#10 + LInsert + cmEnd;
        FActiveEditor.Editor.InsertText(LInsert);
        FActiveEditor.Editor.DisplayCaretY := LCutY + 1;
        FActiveEditor.Editor.DisplayCaretX := Length('  ' + cmItem) + 2;
      end;
    finally
      LInsertList.Free;
    end;
  end;
end;

procedure TMain.memoLogKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) in [33 .. 126] then
    FSendString := FSendString + Key;

  if ord(Key) = VK_RETURN then
    try
      FTexCompile.Send(FSendString);
      FSendString := '';
    except
      on E: Exception do
      begin
        FTexCompile.Terminate;
        ShowMessage(E.Message);
      end;
    end;
end;

procedure TMain.TexGuiSymbolClick(Sender: TObject; const Symbol: TSymbol);
begin
  InsertTemplate(Symbol.Command, Symbol.moveX);
end;

function TMain.OpenDocument(AFileName: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to FTabEditor.Tabs.Count - 1 do
    if TEditorForm(FTabEditor.Tabs.Objects[i]).FileName = AFileName then
    begin
      FTabEditor.TabIndex := i;
      exit;
    end;

  AddPageCode(StringReplace(ExtractFileName(AFileName), ExtractFileExt(AFileName), '', []),
    AFileName);

  FActiveEditor.Editor.BeginUpdate;
  FActiveEditor.Editor.Lines.Clear;
  FActiveEditor.Editor.LoadFromFile(AFileName);
  // FActiveEditor.Editor.Encoding := TEncoding.UTF8;
  FActiveEditor.Editor.EndUpdate;
  FActiveEditor.State := stSave;

  SetStatusBarCaption;
end;

function TMain.SaveDocument(): Boolean;
var
  LFileName: string;
  LSaveDialogTex: TSaveDialog;
begin
  Result := False;
  if (FActiveEditor = nil) or (FActiveEditor.State = stSave) then
    exit;

  if (FActiveEditor.State = stNew) or not FileExists(FActiveEditor.FileName) then
  begin
    LSaveDialogTex := TSaveDialog.Create(self);
    try
      LSaveDialogTex.Filter := 'Tex documents (*.tex)|*.tex';
      LSaveDialogTex.FilterIndex := 1;
      LSaveDialogTex.DefaultExt := 'tex';
      LSaveDialogTex.InitialDir := FFolderProject;
      LSaveDialogTex.FileName := ExtractFileName(FActiveEditor.FileName);
      if LSaveDialogTex.Execute then
        LFileName := LSaveDialogTex.FileName
      else
        exit;
    finally
      LSaveDialogTex.Free;
    end;
  end
  else
    LFileName := FActiveEditor.FileName;

  Result := SaveDocument(LFileName);
end;

function TMain.SaveDocument(AFileName: string): Boolean;
var
  LFileStream: TFileStream;
begin
  Result := False;

  LFileStream := TFileStream.Create(AFileName, fmCreate);
  try
    FActiveEditor.Editor.Lines.SaveToStream(LFileStream, FActiveEditor.Editor.Encoding);
    Result := True;
  finally
    LFileStream.Free;
  end;

  if Result then
  begin
    FActiveEditor.FileName := AFileName;
    FActiveEditor.State := stSave;
    FTabEditor.Tabs[FTabEditor.TabIndex] := ExtractFileName(FActiveEditor.FileName);
    SetStatusBarCaption;
  end;
end;

// https://forums.adobe.com/thread/2162441
initialization

DefaultDockTreeClass := TCustomCaptionedDockTree;

finalization

end.

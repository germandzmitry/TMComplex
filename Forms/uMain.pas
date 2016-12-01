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
    StatusBar: TStatusBar;
    ActFileNew: TAction;
    ActFileOpen: TAction;
    ActFileSave: TAction;
    ActFileSaveAs: TAction;
    ActHelpAbout: TAction;
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
    ActSearchGoToLine: TAction;
    ActPopupEditUndo: TMenuItem;
    ActPopupEditRedo: TMenuItem;
    ActPopupEditCut: TMenuItem;
    ActPopupEditCopy: TMenuItem;
    ActPopupEditPaste: TMenuItem;
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
    ActInsertSubObject: TAction;
    ActInsertSubLink: TAction;
    ActLinkUrl: TAction;
    ActLinkHref: TAction;
    ActLinkHyperLink: TAction;
    ActLinkHyperTarget: TAction;
    ActColorMap: TStandardColorMap;
    il_16x16: TImageList;
    il_16x16_d: TImageList;
    ActHelpWikiBooks: TAction;
    ActInsertNewPage: TAction;
    ActTexOpenPdfSynctex: TAction;
    ActPopupTexOpenPdfSynctex: TMenuItem;
    ActPopupEditGoToLine: TMenuItem;
    ActTexOpenPdf: TAction;
    ActPopupTexOpenPdf: TMenuItem;
    PopupActionTab: TPopupActionBar;
    ActTabClose: TAction;
    ActPopupTabClose: TMenuItem;
    ActObjectTable: TAction;
    ActSizeTiny: TAction;
    ActSizeScriptsize: TAction;
    ActSizeFootnotesize: TAction;
    ActSizeSmall: TAction;
    ActSizeNormalsize: TAction;
    ActSizeLarge: TAction;
    ActSizeLLarge: TAction;
    ActSizeLLLarge: TAction;
    ActSizeHuge: TAction;
    ActSizeHHuge: TAction;
    ActSizeCustom: TAction;
    ActHelpCtan: TAction;
    ActSearch: TAction;
    ActInsertSubArray: TAction;
    ActArray: TAction;
    ActArrayCases: TAction;
    ActArrayMatrix: TAction;
    ActObjectFigure: TAction;
    ActInsertTabular: TAction;
    ActBeamer: TAction;
    ActBeamerNewFrame: TAction;
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
    procedure ActEditEncodingExecute(Sender: TObject);

    { Search }
    procedure ActSearchExecute(Sender: TObject);
    procedure ActSearchGoToLineExecute(Sender: TObject);

    { Text }
    procedure ActTextExecute(Sender: TObject);
    procedure ActTextSubSizeExecute(Sender: TObject);
    procedure ActTextSubFontExecute(Sender: TObject);
    procedure ActTextSubAlignExecute(Sender: TObject);
    procedure ActTextShowSpecialCharsExecute(Sender: TObject);

    { Text-Size }
    procedure ActSizeTinyExecute(Sender: TObject);
    procedure ActSizeScriptsizeExecute(Sender: TObject);
    procedure ActSizeFootnotesizeExecute(Sender: TObject);
    procedure ActSizeSmallExecute(Sender: TObject);
    procedure ActSizeNormalsizeExecute(Sender: TObject);
    procedure ActSizeLargeExecute(Sender: TObject);
    procedure ActSizeLLargeExecute(Sender: TObject);
    procedure ActSizeLLLargeExecute(Sender: TObject);
    procedure ActSizeHugeExecute(Sender: TObject);
    procedure ActSizeHHugeExecute(Sender: TObject);
    procedure ActSizeCustomExecute(Sender: TObject);

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
    procedure ActInsertNewPageExecute(Sender: TObject);
    procedure ActInsertImageExecute(Sender: TObject);
    procedure ActInsertTabularExecute(Sender: TObject);
    procedure ActInsertSubListExecute(Sender: TObject);
    procedure ActInsertSubLinkExecute(Sender: TObject);
    procedure ActInsertSubArrayExecute(Sender: TObject);
    procedure ActInsertSubObjectExecute(Sender: TObject);

    { Insert.Object }
    procedure ActObjectFigureExecute(Sender: TObject);
    procedure ActObjectTableExecute(Sender: TObject);

    { Insert.List }
    procedure ActListItemizeExecute(Sender: TObject);
    procedure ActListEnumerateExecute(Sender: TObject);
    procedure ActListDescriptionExecute(Sender: TObject);

    { Insert.Link }
    procedure ActLinkUrlExecute(Sender: TObject);
    procedure ActLinkHrefExecute(Sender: TObject);
    procedure ActLinkHyperLinkExecute(Sender: TObject);
    procedure ActLinkHyperTargetExecute(Sender: TObject);

    { Insert.Array }
    procedure ActArrayExecute(Sender: TObject);
    procedure ActArrayCasesExecute(Sender: TObject);
    procedure ActArrayMatrixExecute(Sender: TObject);

    { Beamer }
    procedure ActBeamerExecute(Sender: TObject);
    procedure ActBeamerNewFrameExecute(Sender: TObject);

    { View }
    procedure ActViewExecute(Sender: TObject);
    procedure ActViewLogExecute(Sender: TObject);

    { TeX }
    procedure ActTexExecute(Sender: TObject);
    procedure ActTexPdfLaTeXExecute(Sender: TObject);
    procedure ActTexStopExecute(Sender: TObject);
    procedure ActTexSysCmdExecute(Sender: TObject);
    procedure ActTexOpenPdfExecute(Sender: TObject);
    procedure ActTexOpenPdfSynctexExecute(Sender: TObject);

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
    procedure ActHelpWikiBooksExecute(Sender: TObject);
    procedure ActHelpCtanExecute(Sender: TObject);

    { Tab }
    procedure ActTabCloseExecute(Sender: TObject);

    procedure memoLogKeyPress(Sender: TObject; var Key: Char);

    procedure pDockBottomUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
      var Allow: Boolean);
    procedure pDockBottomDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
    procedure StatusBarDblClick(Sender: TObject);

    procedure TabEditorChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
    procedure TabEditorGetImageIndex(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);

    procedure ProcessParam(Index: Integer; param: string);
  private
    { Private declarations }
    FAllSetting: TAllSetting;
    FTabEditor: TCustomTabSet;
    FPageSymbols: TCustomPageControl;
    FPageLog: TCustomPageControl;
    FActiveEditor: TEditorForm;
    FCurDoc: Integer;
    FFolderProject: string;
    FTexGuiSymbols: TTexGuiSymbols;
    FTexCompile: TThreadCompile;
    FSendString: string;
    FProcessingEventHandler: Boolean;

    procedure CreateActionMenu();

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

    procedure OpenPDF();

    function Processing: Boolean;
  public
    { Public declarations }
    function SaveDocument(): Boolean; overload;
    property ActiveEditor: TEditorForm read FActiveEditor;
    property TabEditor: TCustomTabSet read FTabEditor write FTabEditor;
  end;

var
  Main: TMain;

implementation

{$D+}
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

uses uAbout, uProcess, uEditorGoToLine, uEncoding, uLanguage, uInsertList,
  uInsertImage, uInsertTable;

procedure TMain.ProcessParam(Index: Integer; param: string);
begin
  case index of
    1:
      begin
        if FileExists(param) then
          OpenDocument(param);
      end;
    2:
      if (Main.FActiveEditor <> nil) and (param <> '') then
        FActiveEditor.GoToLine(StrToInt(param));
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

  // Окно
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

  // Лог
  IniFile.WriteBool('Log', 'Show', (FLog <> nil) and (FLog.Showing));

  IniFile.Free;
end;

procedure TMain.LoadSettings;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\' + FileSetting);
  // Форма
  Main.Left := IniFile.ReadInteger('Window', 'Left', 10);
  Main.Top := IniFile.ReadInteger('Window', 'Top', 10);
  Main.Width := IniFile.ReadInteger('Window', 'Width', 1000);
  Main.Height := IniFile.ReadInteger('Window', 'Height', 640);
  if IniFile.ReadBool('Window', 'Maximized', True) then
    WindowState := wsMaximized;

  // Лог
  if IniFile.ReadBool('Log', 'Show', True) then
  begin
    ActViewLogExecute(ActViewLog);
  end;

  IniFile.Free;

  FFolderProject := ExtractFilePath(Application.ExeName) + 'Project';
end;

procedure TMain.CreateActionMenu;
var
  LItem, LItemGlobal, LItemSub: TActionClientItem;
  LActionBarIndex: Integer;
begin
  { ActionMainMenuBar }
  with ActMngCommand.ActionBars[0] do
  begin
    { File }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 0;
    LItemGlobal.Action := ActFile;
    LItemGlobal.Items.Add.Action := ActFileNew;
    LItemGlobal.Items.Add.Action := ActFileOpen;
    LItemGlobal.Items.Add.Action := ActFileSave;
    LItemGlobal.Items.Add.Action := ActFileSaveAs;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActFileSetting;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActFileExit;

    { Edit }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 1;
    LItemGlobal.Action := ActEdit;
    LItemGlobal.Items.Add.Action := ActEditUndo;
    LItemGlobal.Items.Add.Action := ActEditRedo;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActEditCut;
    LItemGlobal.Items.Add.Action := ActEditCopy;
    LItemGlobal.Items.Add.Action := ActEditPaste;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActEditSelectAll;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActEditEncoding;

    { Search }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 2;
    LItemGlobal.Action := ActSearch;
    LItemGlobal.Items.Add.Action := ActSearchGoToLine;

    { Text }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 3;
    LItemGlobal.Action := ActText;

    { Text.Size }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActTextSubSize;
    LItemSub.Items.Add.Action := ActSizeTiny;
    LItemSub.Items.Add.Action := ActSizeScriptsize;
    LItemSub.Items.Add.Action := ActSizeFootnotesize;
    LItemSub.Items.Add.Action := ActSizeSmall;
    LItemSub.Items.Add.Action := ActSizeNormalsize;
    LItemSub.Items.Add.Action := ActSizeLarge;
    LItemSub.Items.Add.Action := ActSizeLLarge;
    LItemSub.Items.Add.Action := ActSizeLLLarge;
    LItemSub.Items.Add.Action := ActSizeHuge;
    LItemSub.Items.Add.Action := ActSizeHHuge;
    LItemSub.Items.Add.Caption := '-';
    LItemSub.Items.Add.Action := ActSizeCustom;

    { Text.Font }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActTextSubFont;
    LItemSub.Items.Add.Action := ActFontBold;
    LItemSub.Items.Add.Action := ActFontItalic;
    LItemSub.Items.Add.Action := ActFontUnderline;
    LItemSub.Items.Add.Caption := '-';
    LItemSub.Items.Add.Action := ActFontColor;

    { Text.Align }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActTextSubAlign;
    LItemSub.Items.Add.Action := ActAlignLeft;
    LItemSub.Items.Add.Action := ActAlignCenter;
    LItemSub.Items.Add.Action := ActAlignRight;
    LItemSub.Items.Add.Action := ActAlignJustify;

    { Text }
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActTextShowSpecialChars;

    { Insert }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 4;
    LItemGlobal.Action := ActInsert;
    LItemGlobal.Items.Add.Action := ActInsertNewPage;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActInsertImage;

    LItemGlobal.Items.Add.Caption := '-';

    { Insert.Object }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActInsertSubObject;
    LItemSub.Items.Add.Action := ActObjectTable;
    LItemSub.Items.Add.Action := ActObjectFigure;

    { Insert.Link }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActInsertSubLink;
    LItemSub.Items.Add.Action := ActLinkHyperTarget;
    LItemSub.Items.Add.Action := ActLinkHyperLink;
    LItemSub.Items.Add.Caption := '-';
    LItemSub.Items.Add.Action := ActLinkUrl;
    LItemSub.Items.Add.Action := ActLinkHref;

    LItemGlobal.Items.Add.Caption := '-';

    { Insert.List }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActInsertSubList;
    LItemSub.Items.Add.Action := ActListItemize;
    LItemSub.Items.Add.Action := ActListEnumerate;
    LItemSub.Items.Add.Action := ActListDescription;

    { Insert.Array }
    LItemSub := LItemGlobal.Items.Add;
    LItemSub.Action := ActInsertSubArray;
    LItemSub.Items.Add.Action := ActArray;
    LItemSub.Items.Add.Action := ActArrayMatrix;
    LItemSub.Items.Add.Action := ActArrayCases;

    { Beamer }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 5;
    LItemGlobal.Action := ActBeamer;
    LItemGlobal.Items.Add.Action := ActBeamerNewFrame;

    { View }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 6;
    LItemGlobal.Action := ActView;
    LItemGlobal.Items.Add.Action := ActViewLog;

    { TeX }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 7;
    LItemGlobal.Action := ActTex;
    LItemGlobal.Items.Add.Action := ActTexPdfLaTeX;
    LItemGlobal.Items.Add.Action := ActTexStop;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActTexSysCmd;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActTexOpenPdf;
    LItemGlobal.Items.Add.Action := ActTexOpenPdfSynctex;

    { MiKTeX }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 8;
    LItemGlobal.Action := ActMiKTeX;
    LItemGlobal.Items.Add.Action := ActMiKTeXOption;
    LItemGlobal.Items.Add.Action := ActMiKTeXPackageManager;
    LItemGlobal.Items.Add.Action := ActMiKTeXUpdateWizard;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActMiKTeXTeXworks;

    { Window }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 9;
    LItemGlobal.Action := ActWindow;
    LItemGlobal.Items.Add.Action := ActWindowCascade;
    LItemGlobal.Items.Add.Action := ActWindowTileHorizontal;
    LItemGlobal.Items.Add.Action := ActWindowTileVertical;
    LItemGlobal.Items.Add.Action := ActWindowMaximize;

    { Help }
    { ------------------------------------------- }
    LItemGlobal := Items.Add;
    LItemGlobal.Index := 10;
    LItemGlobal.Action := ActHelp;
    LItemGlobal.Items.Add.Action := ActHelpCtan;
    LItemGlobal.Items.Add.Action := ActHelpWikiBooks;
    LItemGlobal.Items.Add.Caption := '-';
    LItemGlobal.Items.Add.Action := ActHelpAbout;
  end;

  { ActionToolBar1 }
  with ActMngCommand.ActionBars[1] do
  begin
    LItem := Items.Add;
    LItem.Action := ActFileNew;
    LItem.ShowCaption := False;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActFileOpen;
    LItem.ShowCaption := False;

    LItem := Items.Add;
    LItem.Action := ActFileSave;
    LItem.ShowCaption := False;

    Items.Add.Caption := '-';

    // LItem := Items.Add;
    // LItem.Action := ActFileSetting;
    // LItem.ShowCaption := False;
    // Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActTexPdfLaTeX;
    LItem.ShowCaption := False;

    LItem := Items.Add;
    LItem.Action := ActTexStop;
    LItem.ShowCaption := False;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActTexOpenPdf;
    LItem.ShowCaption := False;

    LItem := Items.Add;
    LItem.Action := ActTexOpenPdfSynctex;
    LItem.ShowCaption := False;

    Items.Add.Caption := '-';

    LItem := Items.Add;
    LItem.Action := ActFileSetting;
    LItem.ShowCaption := False;

    // Так должна быть обявлена именно последяя черта
    LItem := Items.Add;
    LItem.Caption := '-';
    LItem.CommandStyle := csSeparator;
  end;
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

  pAction.Height := 103 + 21;

  Bevel1.Width := 3;

  ActTexPdfLaTeX.Enabled := True;
  ActTexStop.Enabled := False;

  CreateActionMenu;

  Main.Color := clGray;

  FTabEditor := TCustomTabSet.Create(self);
  with FTabEditor do
  begin
    Left := 0;
    Top := ActionMainMenuBar.Height + pAction.Height;
    Width := 50;
    // Height := ActionToolBar1.Height;
    // parent := Main;
    // align := alTop;
    parent := pAction;
    align := alBottom;
    TabPosition := tpTop;
    SelectedColor := clWhite;
    UnselectedColor := clBtnFace;
    ParentBackground := True;
    style := tsSoftTabs;
    PopupMenu := PopupActionTab;

    OnChange := TabEditorChange;
    OnGetImageIndex := TabEditorGetImageIndex;
  end;

  // Панель с символами TeX
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

  // Что бы сохранились насройки с формы лога, вызывать только после
  // SaveSetting основного окна
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
    // LOpenDialogTex.InitialDir := FFolderProject;
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
    Exit;

  LSaveDialogTex := TSaveDialog.Create(self);
  try
    LSaveDialogTex.Filter := 'Tex documents (*.tex)|*.tex';
    LSaveDialogTex.FilterIndex := 1;
    LSaveDialogTex.DefaultExt := 'tex';
    if FileExists(FActiveEditor.FileNameFull) then
      LSaveDialogTex.InitialDir := FActiveEditor.FilePath
    else
      LSaveDialogTex.InitialDir := FFolderProject;
    LSaveDialogTex.FileName := FActiveEditor.FileName;
    if LSaveDialogTex.Execute then
      LFileName := LSaveDialogTex.FileName
    else
      Exit;
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

{ Edit }

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

{ Search }

procedure TMain.ActSearchExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActSearchGoToLineExecute(Sender: TObject);
var
  LGoToLine: TEditorGoToLineForm;
begin
  if FActiveEditor <> nil then
  begin
    LGoToLine := TEditorGoToLineForm.Create(Main);
    try
      LGoToLine.eLine.Text := IntToStr(FActiveEditor.Editor.DisplayCaretY);
      if LGoToLine.ShowModal = mrOk then
        FActiveEditor.GoToLine(StrToInt(LGoToLine.eLine.Text));
    finally
      LGoToLine.Free;
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

{ Text-Size }

procedure TMain.ActSizeTinyExecute(Sender: TObject);
begin
  InsertTemplate('\tiny' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeScriptsizeExecute(Sender: TObject);
begin
  InsertTemplate('\scriptsize' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeFootnotesizeExecute(Sender: TObject);
begin
  InsertTemplate('\footnotesize' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeSmallExecute(Sender: TObject);
begin
  InsertTemplate('\small' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeNormalsizeExecute(Sender: TObject);
begin
  InsertTemplate('\normalsize' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeLargeExecute(Sender: TObject);
begin
  InsertTemplate('\large' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeLLargeExecute(Sender: TObject);
begin
  InsertTemplate('\Large' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeLLLargeExecute(Sender: TObject);
begin
  InsertTemplate('\LARGE' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeHugeExecute(Sender: TObject);
begin
  InsertTemplate('\huge' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeHHugeExecute(Sender: TObject);
begin
  InsertTemplate('\Huge' + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActSizeCustomExecute(Sender: TObject);
begin
  InsertTemplate('\fontsize{<размер>}{<межстрочное расстояние>}{}', -1);
end;

{ Text-Font }

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

{ Text-Align }

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

procedure TMain.ActInsertNewPageExecute(Sender: TObject);
begin
  InsertTemplate('\newpage', 0);
end;

procedure TMain.ActInsertImageExecute(Sender: TObject);
var
  LInsertImage: TInsertImageForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertImage := TInsertImageForm.Create(Main);
    LInsertImage.FolderProject := FActiveEditor.FilePath;
    try
      if LInsertImage.ShowModal = mrOk then
        InsertTemplate(LInsertImage.IncludeGraphics, 0);
    finally
      LInsertImage.Free;
    end;
  end;
end;

procedure TMain.ActInsertSubListExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertSubObjectExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertTabularExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertSubArrayExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActInsertSubLinkExecute(Sender: TObject);
begin
  //
end;

{ Insert-Object }

procedure TMain.ActObjectFigureExecute(Sender: TObject);
begin
  InsertTemplate('\begin{figure}' + #13#10 + //
    '  \centering' + #13#10 + //
    '  <изображение>' + #13#10 + //
    '  \caption{<подпись>}\label{<ссылка>}' + #13#10 + //
    '\end{figure}', 0);
end;

procedure TMain.ActObjectTableExecute(Sender: TObject);
begin
  InsertTemplate('\begin{table}' + #13#10 + //
    '  \centering' + #13#10 + //
    '  <таблица>' + #13#10 + //
    '  \caption{<подпись>}\label{<ссылка>}' + #13#10 + //
    '\end{table}', 0);
end;

{ Insert-List }

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

{ Insert-Array }

procedure TMain.ActArrayExecute(Sender: TObject);
var
  LInsertTable: TInsertTableForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertTable := TInsertTableForm.Create(Main);
    try
      LInsertTable.TableType := ttArray;
      if LInsertTable.ShowModal = mrOk then
        InsertTemplate(LInsertTable.Table, 0);
    finally
      LInsertTable.Free;
    end;
  end;
end;

procedure TMain.ActArrayCasesExecute(Sender: TObject);
var
  LInsertTable: TInsertTableForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertTable := TInsertTableForm.Create(Main);
    try
      LInsertTable.TableType := ttCases;
      if LInsertTable.ShowModal = mrOk then
        InsertTemplate(LInsertTable.Table, 0);
    finally
      LInsertTable.Free;
    end;
  end;
end;

procedure TMain.ActArrayMatrixExecute(Sender: TObject);
var
  LInsertTable: TInsertTableForm;
begin
  if FActiveEditor <> nil then
  begin
    LInsertTable := TInsertTableForm.Create(Main);
    try
      LInsertTable.TableType := ttMatrix;
      if LInsertTable.ShowModal = mrOk then
        InsertTemplate(LInsertTable.Table, 0);
    finally
      LInsertTable.Free;
    end;
  end;
end;

{ Beamer }

procedure TMain.ActBeamerExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActBeamerNewFrameExecute(Sender: TObject);
begin
  //
end;

{ Link }

procedure TMain.ActLinkUrlExecute(Sender: TObject);
begin
  InsertTemplate('\url{<ссылка>}', -1);
end;

procedure TMain.ActLinkHrefExecute(Sender: TObject);
begin
  InsertTemplate('\href{<ссылка>}{<описание>}', -13);
end;

procedure TMain.ActLinkHyperLinkExecute(Sender: TObject);
begin
  InsertTemplate('\hyperlink{<имя>}{<описание>}', -13);
end;

procedure TMain.ActLinkHyperTargetExecute(Sender: TObject);
begin
  InsertTemplate('\hypertarget{<имя>}{<описание>}', -13);
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

{ Tab }

procedure TMain.ActTabCloseExecute(Sender: TObject);
begin
  //
end;

{ TeX }

procedure TMain.ActTexExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTexOpenPdfExecute(Sender: TObject);
begin
  if FActiveEditor = nil then
    Exit;

  OpenPDF;
end;

procedure TMain.ThreadEndGenerate(Sender: TObject);
var
  LErrorExists: Boolean;
begin
  ActTexStop.Enabled := False;
  ActTexPdfLaTeX.Enabled := True;

  FLog.Caption := 'Parsing log compiling...';
  Application.ProcessMessages;

  LErrorExists := TTexLogParser.Parse(FLog.mLog.Text, FLog.MsgLines, FLog.MsgCount);
  FLog.ShowMsg;

  // Если есть ошибки, документ не открываем
  if LErrorExists then
  begin
    if not FLog.Showing then
      MessageBox(Handle, PChar(FLog.GetParsingLine), PChar(Main.Caption), MB_ICONWARNING + MB_OK);
  end
  // Если нету ошибок, и стоит птичка в настройках открывать документ после
  // компиляции, открываем
  else if FAllSetting.Tex.OpenDocAfterCompile then
    OpenPDF;
end;

procedure TMain.ActTexPdfLaTeXExecute(Sender: TObject);

var
  path: string;
  cmd: string;
begin
  if FActiveEditor = nil then
    Exit;

  ActFileSaveExecute(ActFileSave);

  path := FActiveEditor.FilePath;

  // Если последний символ слеш, удаляем его
  if IsPathDelimiter(path, Length(path)) then
    Delete(path, Length(path), 1);

  cmd := 'pdflatex ' + // компилятор
    '--output-directory "' + path + '" ' + // Путь к папке с проектом
  // '--interaction=errorstopmode ' + // Тип обработки ошибок
    '--interaction=nonstopmode ' + // Тип обработки ошибок
    '--synctex=-1 ' + // Файл синхронизации (для sumatra)
    '"' + FActiveEditor.FileNameFull + '"'; // сам файл

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
    // Если не долши до запуска команды, то и поток нечего останавливать
    on E: Exception do
    begin
      ShowMessage(E.Message);
      FLog.Caption := 'Лог';
      Exit;
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
      Exit;

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
    (FileExists(FActiveEditor.FileNameFull)) then
  begin
    ActFileSaveExecute(ActFileSave);
    RunProcess('texworks "' + FActiveEditor.FileNameFull + '"');
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

procedure TMain.ActHelpWikiBooksExecute(Sender: TObject);
begin
  RunUrl('https://en.wikibooks.org/wiki/LaTeX');
end;

procedure TMain.ActHelpCtanExecute(Sender: TObject);
begin
  RunUrl('https://www.ctan.org');
end;

procedure TMain.TabEditorChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
begin
  if NewTab = -1 then
    FActiveEditor := nil
  else
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
  new.FileNameFull := PageFileName;
  FTabEditor.Tabs.AddObject(new.FileNameOnly, new);
  if FTabEditor.Tabs.Count = 1 then
    SetFocus;

  FTabEditor.TabIndex := FTabEditor.Tabs.Count - 1;
end;

function TMain.Processing: Boolean;
begin
  Result := True;
  if FProcessingEventHandler then
    Exit;
  Result := False;
end;

procedure TMain.ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
var
  LActiveDocumentFound: Boolean;
  LSelectionAvailable: Boolean;
  LActiveDocumentModified: Boolean;
begin
  if Processing then
    Exit;

  // FProcessingEventHandler := True;
  // try
  // LSelectionAvailable := False;
  // LActiveDocumentFound := False;
  // LActiveDocumentModified := False;
  //
  // if (FActiveEditor <> nil) and (FTabEditor.Tabs.Count > 0) then
  // begin
  // LActiveDocumentFound := True;
  // LSelectionAvailable := FActiveEditor.Editor.SelectionAvailable;
  // LActiveDocumentModified := FActiveEditor.Editor.Modified;
  // end;
  //
  // { File }
  // ActFileSave.Enabled := LActiveDocumentFound and LActiveDocumentModified;
  // ActFileSaveAs.Enabled := LActiveDocumentFound;
  //
  // { Edit }
  // ActEditUndo.Enabled := LActiveDocumentFound and FActiveEditor.Editor.CanUndo;
  // ActEditRedo.Enabled := LActiveDocumentFound and FActiveEditor.Editor.CanRedo;
  // ActEditCut.Enabled := LActiveDocumentFound and LSelectionAvailable;
  // ActEditCopy.Enabled := LActiveDocumentFound and LSelectionAvailable;
  // ActEditPaste.Enabled := LActiveDocumentFound and FActiveEditor.Editor.CanPaste;
  // ActEditSelectAll.Enabled := LActiveDocumentFound;
  // ActEditGoToLine.Enabled := LActiveDocumentFound;
  // ActEditEncoding.Enabled := LActiveDocumentFound;
  //
  // { Text }
  // ActTextSubSize.Enabled := LActiveDocumentFound;
  // ActTextSubFont.Enabled := LActiveDocumentFound;
  // ActTextSubAlign.Enabled := LActiveDocumentFound;
  // ActTextShowSpecialChars.Enabled := LActiveDocumentFound;
  //
  // { Insert }
  // ActInsertImage.Enabled := LActiveDocumentFound;
  // ActInsertSubLink.Enabled := LActiveDocumentFound;
  // ActInsertSubList.Enabled := LActiveDocumentFound;
  //
  // FProcessingEventHandler := False;
  // except
  // FProcessingEventHandler := False;
  // { intentionally silent }
  // end;
end;

procedure TMain.SetStatusBarCaption();
begin
  if FActiveEditor = nil then
  begin
    StatusBar.Panels[STATUS_BAR_ENCODING].Text := '';
    StatusBar.Panels[STATUS_BAR_PATH].Text := '';
  end
  else
  begin
    StatusBar.Panels[STATUS_BAR_ENCODING].Text := EncodingToText(FActiveEditor.Editor.Encoding);
    StatusBar.Panels[STATUS_BAR_PATH].Text := FActiveEditor.FilePath;
  end;
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
          Exit(i);
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
      ActSearchGoToLineExecute(ActSearchGoToLine);
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
    if TEditorForm(FTabEditor.Tabs.Objects[i]).FileNameFull = AFileName then
    begin
      FTabEditor.TabIndex := i;
      Exit;
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
  if FActiveEditor = nil then
    Exit;

  if (FActiveEditor.State = stNew) or not FileExists(FActiveEditor.FileNameFull) then
  begin
    LSaveDialogTex := TSaveDialog.Create(self);
    try
      LSaveDialogTex.Filter := 'Tex documents (*.tex)|*.tex';
      LSaveDialogTex.FilterIndex := 1;
      LSaveDialogTex.DefaultExt := 'tex';
      LSaveDialogTex.InitialDir := FFolderProject;
      LSaveDialogTex.FileName := FActiveEditor.FileName;
      if LSaveDialogTex.Execute then
        LFileName := LSaveDialogTex.FileName
      else
        abort;
    finally
      LSaveDialogTex.Free;
    end;
  end
  else
    LFileName := FActiveEditor.FileNameFull;

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
    FActiveEditor.FileNameFull := AFileName;
    FActiveEditor.State := stSave;
    FTabEditor.Tabs[FTabEditor.TabIndex] := FActiveEditor.FileNameOnly;
    SetStatusBarCaption;
  end;
end;

procedure TMain.OpenPDF();
var
  LPdfFile, LInverseSearch, LForwardSearch, LOpenPDF: string;
begin
  LPdfFile := FActiveEditor.FilePath + FActiveEditor.FileNameOnly + '.pdf';

  if FileExists(LPdfFile) then
  begin
    // Просмоторщик в системе по умолчанию, либо если установлен другой
    // но такого exe больше нету
    if (FAllSetting.PDFViewer.Default) // просмоторщик по умолчанию
      or ((FAllSetting.PDFViewer.Sumatra) and not FileExists(FAllSetting.PDFViewer.SumatraPath)) //
      or ((FAllSetting.PDFViewer.Other) and not FileExists(FAllSetting.PDFViewer.OtherPath)) then
      RunProcessDefault(LPdfFile);

    // Если Sumatra настраиваем работу с synctex
    if (FAllSetting.PDFViewer.Sumatra) and (FileExists(FAllSetting.PDFViewer.SumatraPath)) then
    begin
      LInverseSearch := '\"' + Application.ExeName + '\" \"%f\" \"%l\"';
      LForwardSearch := FActiveEditor.FileNameFull + '" ' +
        IntToStr(FActiveEditor.Editor.DisplayCaretY);
      LOpenPDF := '"' + FAllSetting.PDFViewer.SumatraPath + // путь к Sumatra
        '" -reuse-instance "' + LPdfFile + // Найти открытое приложение и открыть в нем файл
        '" -inverse-search "' + LInverseSearch + '"'; // настройка команды для моего приложения
      if FAllSetting.PDFViewer.SumatraFirstPage then
        LOpenPDF := LOpenPDF + ' -page 1'
      else if FAllSetting.PDFViewer.SumatraSynctex then
        // настройка команды для поиска
        LOpenPDF := LOpenPDF + ' -forward-search "' + LForwardSearch;

      RunProcess(LOpenPDF);
    end;

    // Если другой просмоторщик
    if (FAllSetting.PDFViewer.Other) and (FileExists(FAllSetting.PDFViewer.OtherPath)) then
    begin
      LOpenPDF := '"' + FAllSetting.PDFViewer.OtherPath + '" "' + LPdfFile + '"';
      RunProcess(LOpenPDF);
    end;

  end;
end;

procedure TMain.ActTexOpenPdfSynctexExecute(Sender: TObject);
var
  pdfFile, OpenPDF, forwardsearch: string;
begin
  if FActiveEditor = nil then
    Exit;

  ActTexStopExecute(ActTexStop);

  pdfFile := FActiveEditor.FilePath + FActiveEditor.FileNameOnly + '.pdf';

  if not FileExists(pdfFile) then
    Exit;

  if not FAllSetting.PDFViewer.Sumatra then
  begin
    MessageBox(Handle, PChar('Данная функция работает только в SumatraPDF.'), PChar(Main.Caption),
      MB_ICONWARNING + MB_OK);
    Exit;
  end;

  forwardsearch := FActiveEditor.FileNameFull + '" ' + IntToStr(FActiveEditor.Editor.DisplayCaretY);

  OpenPDF := '"' + FAllSetting.PDFViewer.SumatraPath + // путь к Sumatra
    '" -reuse-instance "' + pdfFile + // Найти открытое приложение и открыть в нем файл
    '" -forward-search "' + forwardsearch; // настройка команды для поиска
  RunProcess(OpenPDF);
end;

// https://forums.adobe.com/thread/2162441
initialization

// ReportMemoryLeaksOnShutdown := True;
DefaultDockTreeClass := TCustomCaptionedDockTree;

finalization

end.

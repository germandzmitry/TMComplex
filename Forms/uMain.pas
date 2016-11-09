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
  uCustomCaptionedDockTree, Vcl.Menus, Vcl.ActnPopup, uSettings;

Const
  STATUS_BAR_CARET = 0;
  STATUS_BAR_ENCODING = 1;
  STATUS_BAR_PATH = 2;

  cCopyDataWaterMark = $DE1F1DAB;

type
  TMain = class(TForm)
    pEditor: TPanel;
    ActListCommand: TActionList;
    ActTexPdfLaTeX: TAction;
    ActMngCommand: TActionManager;
    ilCode: TImageList;
    StatusBar: TStatusBar;
    ActFileNew: TAction;
    ActFileOpen: TAction;
    ActFileSave: TAction;
    ActFileSaveAs: TAction;
    odTex: TOpenDialog;
    sdTex: TSaveDialog;
    ActHelpAbout: TAction;
    ilAction: TImageList;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActTextLeft: TAction;
    ActTextCenter: TAction;
    ActTextRight: TAction;
    ActTextJustify: TAction;
    ActTextBold: TAction;
    ActTextItalic: TAction;
    ActTextUnderline: TAction;
    ActTextSize: TAction;
    ActFileSetting: TAction;
    ActFileExit: TAction;
    ActTextColor: TAction;
    ActTexStop: TAction;
    sDockBottom: TSplitter;
    PanelAction: TPanel;
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
    PopupAction: TPopupActionBar;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure SaveSettings;
    procedure LoadSettings;

    procedure PageEditorDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
    procedure PageEditorUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
      var Allow: Boolean);
    procedure PageEditorChange(Sender: TObject);
    procedure PageEditorChanging(Sender: TObject; var AllowChange: Boolean);
    procedure PageEditorClosePage(Sender: TObject; TabIndex: Integer);
    procedure PageEditorContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);

    procedure ActFileNewExecute(Sender: TObject);
    procedure ActFileOpenExecute(Sender: TObject);
    procedure ActFileSaveExecute(Sender: TObject);
    procedure ActFileSaveAsExecute(Sender: TObject);
    procedure ActFileSettingExecute(Sender: TObject);
    procedure ActFileExitExecute(Sender: TObject);

    procedure ActHelpAboutExecute(Sender: TObject);

    procedure ActTextLeftExecute(Sender: TObject);
    procedure ActTextCenterExecute(Sender: TObject);
    procedure ActTextRightExecute(Sender: TObject);
    procedure ActTextJustifyExecute(Sender: TObject);
    procedure ActTextBoldExecute(Sender: TObject);
    procedure ActTextItalicExecute(Sender: TObject);
    procedure ActTextUnderlineExecute(Sender: TObject);
    procedure ActTextSizeExecute(Sender: TObject);
    procedure ActTextColorExecute(Sender: TObject);
    procedure ActTextShowSpecialCharsExecute(Sender: TObject);

    procedure ActTexPdfLaTeXExecute(Sender: TObject);
    procedure ActTexStopExecute(Sender: TObject);
    procedure ActTexSysCmdExecute(Sender: TObject);

    procedure ActInsertImageExecute(Sender: TObject);

    procedure ActEditUndoExecute(Sender: TObject);
    procedure ActEditRedoExecute(Sender: TObject);
    procedure ActEditCutExecute(Sender: TObject);
    procedure ActEditCopyExecute(Sender: TObject);
    procedure ActEditPasteExecute(Sender: TObject);
    procedure ActEditSelectAllExecute(Sender: TObject);
    procedure ActEditGoToLineExecute(Sender: TObject);

    procedure ActMiKTeXOptionExecute(Sender: TObject);
    procedure ActMiKTeXPackageManagerExecute(Sender: TObject);
    procedure ActMiKTeXUpdateWizardExecute(Sender: TObject);
    procedure ActMiKTeXTeXworksExecute(Sender: TObject);

    procedure ActViewLogExecute(Sender: TObject);

    procedure memoLogKeyPress(Sender: TObject; var Key: Char);

    procedure pDockBottomUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
      var Allow: Boolean);
    procedure pDockBottomDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
    procedure StatusBarDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FAllSetting: TAllSetting;
    FPageEditor: TCustomPageControl;
    FPageSymbols: TCustomPageControl;
    FLog: TLogForm;
    FPageLog: TCustomPageControl;
    FActiveEditor: TEditorForm;
    FCurDoc: Integer;
    FFolderProject: string;
    FTexGuiSymbols: TTexGuiSymbols;
    FTexCompile: TThreadCompile;
    FSendString: string;

    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;

    procedure AddPageCode(const PageCaption, PageFileName: string);
    procedure SetStatusPanelFileName();
    function OpenDocument(AFileName: string): Boolean;
    function SaveDocument(AFileName: string): Boolean; overload;
    procedure ThreadEndGenerate(Sender: TObject);

    procedure TexGuiSymbolClick(Sender: TObject; const Symbol: TSymbol);
    procedure InsertTemplate(const cmName: string; moveX: Integer);
    procedure InsertTemplateBlock(const cmBegin: string; const cmEnd: string);

    procedure ProcessParam(index: Integer; param: string);
  public
    { Public declarations }
    function SaveDocument(): Boolean; overload;
    property ActiveEditor: TEditorForm read FActiveEditor;
    property PageEditor: TCustomPageControl read FPageEditor write FPageEditor;
  end;

var
  Main: TMain;

implementation

{$R *.dfm}
{$R 'Image\TexGuiSymbols\1. Math.res'}
{$R 'Image\TexGuiSymbols\2. Greek.res'}
{$R 'Image\TexGuiSymbols\3. Symbols.res'}
{$R 'Image\TexGuiSymbols\5. Typeface.res'}
{$R 'Image\TexGuiSymbols\6. Functions.res'}
{$R 'Image\TexGuiSymbols\7.res'}
{$R 'Image\TexGuiSymbols\8.res'}
{$R 'Image\TexGuiSymbols\9.res'}
{$R 'Image\TexGuiSymbols\10.res'}
{$R 'Image\TexGuiSymbols\12.res'}
{$R 'Image\TexGuiSymbols\13.res'}

uses uAbout, uProcess, uEditorGoToLine;

procedure TMain.ProcessParam(index: Integer; param: string);
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
  IniFile.WriteBool('Log', 'Show', (FLog <> nil));

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

  pEditor.Align := alClient;

  pDockBottom.Height := 0;
  sDockBottom.Height := 0;
  sDockBottom.Enabled := False;

  PanelAction.Height := 103;

  Bevel1.Width := 3;

  ActTexPdfLaTeX.Enabled := True;
  ActTexStop.Enabled := False;

  FPageEditor := TCustomPageControl.Create(self);
  with FPageEditor do
  begin
    Left := pEditor.Left;
    Top := pEditor.Top;
    Width := pEditor.Width;
    Height := pEditor.Height;
    Parent := pEditor;
    Visible := True;
    Align := alClient;
    Images := ilCode;
    OwnerDraw := True;
    TabHeight := 23;
    ClosePageUsing := True;
    TextFormat := [tfLeft];
    DoubleBuffered := True;
    ParentColor := False;

    Style := tsButtons;

    OnChange := PageEditorChange;
    OnChanging := PageEditorChanging;
    OnContextPopup := PageEditorContextPopup;
    OnDockDrop := PageEditorDockDrop;
    OnUnDock := PageEditorUnDock;
    OnClosePage := PageEditorClosePage;
  end;
  SendMessage(FPageEditor.Handle, WM_UPDATEUISTATE, MakeLong(UIS_SET, UISF_HIDEFOCUS), 0);
  SendMessage(FPageEditor.Handle, TCM_SETPADDING, 0, MAKELPARAM(9, FPageEditor.TabHeight + 5));

  // Панель с символами TeX
  FPageSymbols := TCustomPageControl.Create(self);
  with FPageSymbols do
  begin
    Left := 10;
    Top := 10;
    Width := 20;
    Height := 20;
    Parent := PanelActionClient;

    Visible := True;
    Align := alClient;
    OwnerDraw := True;
    TabHeight := 23;
    TextFormat := [tfCenter];
    DoubleBuffered := True;

    Style := tsButtons;
  end;
  SendMessage(FPageSymbols.Handle, WM_UPDATEUISTATE, MakeLong(UIS_SET, UISF_HIDEFOCUS), 0);
  // SendMessage(FPageSymbols.Handle, TCM_SETPADDING, 0, MAKELPARAM(7, FPageSymbols.TabHeight + 3));

  FTexGuiSymbols := TTexGuiSymbols.Create;
  FTexGuiSymbols.OnSymbolClick := TexGuiSymbolClick;

  FTexGuiSymbols.DrawMath(CreateTab(FPageSymbols, 'Math'));
  FTexGuiSymbols.DrawGreek(CreateTab(FPageSymbols, 'Greek'));
  FTexGuiSymbols.DrawSymbols(CreateTab(FPageSymbols, 'Symbols'));
  // CreateTab(FPageSymbols, 'International');
  FTexGuiSymbols.DrawTypefase(CreateTab(FPageSymbols, 'Typeface'));
  FTexGuiSymbols.DrawFunctions(CreateTab(FPageSymbols, 'Functions'));
  FTexGuiSymbols.Draw7(CreateTab(FPageSymbols, '{ || } ...'));
  FTexGuiSymbols.Draw8(CreateTab(FPageSymbols, '+ / - ...'));
  FTexGuiSymbols.Draw9(CreateTab(FPageSymbols, '---> ...'));
  FTexGuiSymbols.Draw10(CreateTab(FPageSymbols, '< > = ...'));
  CreateTab(FPageSymbols, 'AMS ...');
  FTexGuiSymbols.Draw12(CreateTab(FPageSymbols, 'AMS <>='));
  FTexGuiSymbols.Draw13(CreateTab(FPageSymbols, 'AMS NOT < > ='));
end;

procedure TMain.FormShow(Sender: TObject);
begin
  LoadSettings;
  FAllSetting.Load;

  ProcessParam(1, ParamStr(1));
  ProcessParam(2, ParamStr(2));
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  i: Integer;
begin
  // Спрашиваем что делать со всеми открытыми окнами
  while FPageEditor.PageCount <> 0 do
    for i := 0 to screen.FormCount - 1 do
      if (screen.Forms[i] is TEditorForm) // Если редактор
        and (screen.Forms[i].Parent = FPageEditor.Pages[FPageEditor.PageCount - 1]) then
      begin
        (screen.Forms[i] as TEditorForm).Close;
        FPageEditor.Pages[FPageEditor.PageCount - 1].Free;
        Break;
      end;
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
  FPageEditor.Free;
  FPageSymbols.Free;
  FPageLog.Free;
end;

procedure TMain.ActFileNewExecute(Sender: TObject);
var
  newFileName: string;
begin
  Inc(FCurDoc);
  newFileName := 'Doc ' + IntToStr(FCurDoc) + '.tex';
  AddPageCode(newFileName, FFolderProject + '\' + newFileName);
  StatusBar.Panels[STATUS_BAR_CARET].Text := '0:0';
end;

procedure TMain.ActFileOpenExecute(Sender: TObject);
var
  i: Integer;
begin
  odTex.InitialDir := FFolderProject;
  odTex.Files.Clear;
  odTex.fileName := '';

  if odTex.Execute then
  begin
    for i := 0 to odTex.Files.Count - 1 do
      OpenDocument(odTex.Files.Strings[i]);

    StatusBar.Panels[STATUS_BAR_CARET].Text := '0:0';
    StatusBar.Panels[STATUS_BAR_ENCODING].Text := FActiveEditor.Editor.Encoding.ToString;

  end;
end;

procedure TMain.ActFileSaveExecute(Sender: TObject);
begin
  ActTexStopExecute(ActTexStop);

  SaveDocument;
end;

procedure TMain.ActFileSaveAsExecute(Sender: TObject);
begin
  { ActTexStopExecute(ActTexStop);

    if FActiveEditor = nil then
    Exit;

    if not FileExists(FActiveEditor.fileName) then
    sdTex.InitialDir := ExtractFilePath(Application.ExeName)
    else
    sdTex.InitialDir := ExtractFilePath(FActiveEditor.fileName);

    if sdTex.Execute() then
    begin
    FActiveEditor.Editor.SaveToFile(sdTex.fileName, TEncoding.UTF8WithoutBOM);
    FActiveEditor.fileName := sdTex.fileName;
    FActiveEditor.State := stSave;
    Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
    SetStatusPanelFileName;
    end; }
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

procedure TMain.ActEditGoToLineExecute(Sender: TObject);
var
  GoToLine: TEditorGoToLineForm;
begin
  if FActiveEditor <> nil then
  begin
    GoToLine := TEditorGoToLineForm.Create(Main);
    try
      GoToLine.eLine.Text := IntToStr(FActiveEditor.Editor.DisplayCaretY);
      if GoToLine.ShowModal = mrOk then
      begin
        FActiveEditor.Editor.DisplayCaretX := 1;
        FActiveEditor.Editor.DisplayCaretY := StrToInt(GoToLine.eLine.Text);
      end;
    finally
      GoToLine.Free;
    end;
  end;
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

procedure TMain.ActFileExitExecute(Sender: TObject);
begin
  Main.Close;
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

  // Если есть ошибки, документ не открываем
  if resParse then
  begin
    if not FLog.Showing then
      MessageBox(Handle, PChar(FLog.GetParsingLine), PChar(Main.Caption), MB_ICONWARNING + MB_OK);
    exit;
  end;

  pdfFile := StringReplace(ExtractFileName(FActiveEditor.fileName),
    ExtractFileExt(FActiveEditor.fileName), '', []);

  pdfFile := ExtractFilePath(FActiveEditor.fileName) + pdfFile + '.pdf';

  if FileExists(pdfFile) then
  begin
    // Просмоторщик в системе по умолчанию, либо если установлен другой
    // но такого exe больше нету
    if (FAllSetting.PDFViewer.Default) // просмоторщик по умолчанию
      or ((FAllSetting.PDFViewer.Sumatra) and not FileExists(FAllSetting.PDFViewer.SumatraPath)) //
      or ((FAllSetting.PDFViewer.Other) and not FileExists(FAllSetting.PDFViewer.OtherPath)) then
      RunProcessDefault(pdfFile);

    // Если Sumatra настраиваем работу с synctex
    if (FAllSetting.PDFViewer.Sumatra) and (FileExists(FAllSetting.PDFViewer.SumatraPath)) then
    begin
      inversesearch := '\"' + Application.ExeName + '\" \"%f\" \"%l\"';
      OpenPDF := '"' + FAllSetting.PDFViewer.SumatraPath + // путь к Sumatra
        '" -reuse-instance "' + pdfFile + // Найти открытое приложение и открыть в нем файл
        '" -inverse-search "' + inversesearch + '"'; // настройка команды для моего приложения
      RunProcess(OpenPDF);
    end;

    // Если другой просмоторщик
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

  path := ExtractFilePath(FActiveEditor.fileName);

  // Если последний символ слеш, удаляем его
  if IsPathDelimiter(path, Length(path)) then
    Delete(path, Length(path), 1);

  cmd := 'pdflatex ' + // компилятор
    '--output-directory "' + path + '" ' + // Путь к папке с проектом
  // '--interaction=errorstopmode ' + // Тип обработки ошибок
    '--interaction=nonstopmode ' + // Тип обработки ошибок
    '--synctex=-1 ' + // Файл синхронизации (для sumatra)
    '"' + FActiveEditor.fileName + '"'; // сам файл

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

procedure TMain.ActTextLeftExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignLeftBegin, cmAlignLeftEnd);
end;

procedure TMain.ActTextCenterExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignCenterBegin, cmAlignCenterEnd);
end;

procedure TMain.ActTextRightExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignRightBegin, cmAlignRightEnd);
end;

procedure TMain.ActTextJustifyExecute(Sender: TObject);
begin
  InsertTemplateBlock(cmAlignJustifyBegin, cmAlignJustifyEnd);
end;

procedure TMain.ActTextBoldExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleBold + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActTextItalicExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleItalic + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActTextUnderlineExecute(Sender: TObject);
begin
  InsertTemplate(cmFontStyleUnderline + cmTextFormatBegin + cmTextFormatEnd, -1);
end;

procedure TMain.ActViewLogExecute(Sender: TObject);
begin
  if FLog = nil then
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

procedure TMain.ActTextShowSpecialCharsExecute(Sender: TObject);
begin
  ActTextShowSpecialChars.Checked := not ActTextShowSpecialChars.Checked;
  FActiveEditor.Editor.SpecialChars.Visible := ActTextShowSpecialChars.Checked;
  FActiveEditor.Editor.SpecialChars.EndOfLine.Visible := ActTextShowSpecialChars.Checked;
end;

procedure TMain.ActTextSizeExecute(Sender: TObject);
begin
  //
end;

procedure TMain.ActTextColorExecute(Sender: TObject);
var
  cd: TColorDialog;
  ColorRGB: Longint;
  r, g, b: Byte;
begin
  cd := TColorDialog.Create(self);
  try
    cd.Options := [cdFullOpen, cdPreventFullOpen];
    if cd.Execute then
    begin
      ColorRGB := cd.Color;
      r := ColorRGB;
      g := ColorRGB shr 8;
      b := ColorRGB shr 16;
      InsertTemplate(cmTextColor + '[RGB]{' + IntToStr(r) + ',' + IntToStr(g) + ',' + IntToStr(b) +
        '}{}', -1);
    end;
  finally
    cd.Free;
  end;
end;

procedure TMain.ActInsertImageExecute(Sender: TObject);
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
    (FileExists(FActiveEditor.fileName)) then
  begin
    ActFileSaveExecute(ActFileSave);
    RunProcess('texworks "' + FActiveEditor.fileName + '"');
  end
  else
    RunProcess('texworks ');
end;

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

procedure TMain.PageEditorChange(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to screen.FormCount - 1 do
    if (screen.Forms[i] is TEditorForm) and (screen.Forms[i].Parent = FPageEditor.ActivePage) then
    begin
      FActiveEditor := screen.Forms[i] as TEditorForm;
      FActiveEditor.SetFocus;
      Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
      Break;
    end;

  StatusBar.Panels[STATUS_BAR_PATH].Text := ExtractFilePath(FActiveEditor.fileName);
end;

procedure TMain.PageEditorChanging(Sender: TObject; var AllowChange: Boolean);
begin
  //
end;

procedure TMain.PageEditorClosePage(Sender: TObject; TabIndex: Integer);
var
  i: Integer;
  closeTab, activeTab: TTabSheet;
begin
  closeTab := (Sender as TCustomPageControl).Pages[TabIndex];

  SendMessage(pEditor.Handle, WM_SETREDRAW, ord(False), 0);
  activeTab := (Sender as TCustomPageControl).ActivePage;
  for i := 0 to screen.FormCount - 1 do
    if (screen.Forms[i] is TEditorForm) and (screen.Forms[i].Parent = closeTab) then
    begin
      (screen.Forms[i] as TEditorForm).Hide;
      (screen.Forms[i] as TEditorForm).ManualFloat(rect(0, 0, 0, 0));
      (screen.Forms[i] as TEditorForm).Close;
      Break;
    end;

  if (Sender as TCustomPageControl).PageCount > 0 then
  begin
    (Sender as TCustomPageControl).ActivePage := activeTab;
    PageEditorChange(PageEditor);
  end;
  SendMessage(pEditor.Handle, WM_SETREDRAW, ord(True), 0);
  InvalidateRect(FPageEditor.Handle, nil, True);
end;

procedure TMain.PageEditorContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  // with Sender as TPageControl do
  // begin
  // end;
end;

// Когда добавляется  новая docking форма
procedure TMain.PageEditorDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
begin
  pEditor.Color := clBtnFace;
  if Source.Control is TEditorForm then
  begin
    FActiveEditor := Source.Control as TEditorForm;
    Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
  end;
end;

// Когда открепляется форма
procedure TMain.PageEditorUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl;
  var Allow: Boolean);
begin
  if PageEditor.PageCount = 1 then
  begin
    pEditor.Color := clMedGray;
    Main.Caption := Application.Title;
    StatusBar.Panels[STATUS_BAR_CARET].Text := '';
    StatusBar.Panels[STATUS_BAR_ENCODING].Text := '';
    StatusBar.Panels[STATUS_BAR_PATH].Text := '';
    FActiveEditor := nil;
  end;
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
begin
  with TEditorForm.Create(Application) do
  begin
    Caption := PageCaption;
    fileName := PageFileName;
    ManualDock(FPageEditor);
    Show;
    if FPageEditor.PageCount = 1 then
      SetFocus;
  end;

  FPageEditor.ActivePageIndex := FPageEditor.PageCount - 1;
  SetStatusPanelFileName;
end;

procedure TMain.SetStatusPanelFileName();
begin
  StatusBar.Panels[STATUS_BAR_PATH].Text := ExtractFilePath(FActiveEditor.fileName);
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
      ;
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

procedure TMain.TexGuiSymbolClick(Sender: TObject; const Symbol: TSymbol);
begin
  InsertTemplate(Symbol.Command, Symbol.moveX);
end;

function TMain.OpenDocument(AFileName: string): Boolean;
var
  i: Integer;
  alreadyTab: TTabSheet;
  rcPage: TRect;
begin
  for i := 0 to screen.FormCount - 1 do
    if (screen.Forms[i] is TEditorForm) and ((screen.Forms[i] as TEditorForm).fileName = AFileName)
    then
    begin
      // Для вызова события onChange
      alreadyTab := (screen.Forms[i] as TEditorForm).Parent as TTabSheet;
      rcPage := alreadyTab.PageControl.TabRect(alreadyTab.TabIndex);
      alreadyTab.PageControl.Perform(WM_LBUTTONDOWN, 0, MakeLong(rcPage.Left + 5, rcPage.Top + 5));
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
end;

function TMain.SaveDocument(): Boolean;
var
  LFileName: string;
begin
  Result := False;
  if (FActiveEditor = nil) or (FActiveEditor.State = stSave) then
    exit;

  if (FActiveEditor.State = stNew) or not FileExists(FActiveEditor.fileName) then
  begin
    sdTex.fileName := ExtractFileName(FActiveEditor.fileName);
    if sdTex.Execute then
      LFileName := sdTex.fileName
    else
      exit;
  end
  else
    LFileName := FActiveEditor.fileName;

  Result := SaveDocument(LFileName);

  if Result then
  begin
    FActiveEditor.fileName := LFileName;
    Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
    FActiveEditor.State := stSave;
    SetStatusPanelFileName;
  end;
end;

function TMain.SaveDocument(AFileName: string): Boolean;
var
  LFileStream: TFileStream;
begin
  Result := False;

  LFileStream := TFileStream.Create(AFileName, fmCreate);
  try
    FActiveEditor.Editor.Lines.SaveToStream(LFileStream, TEncoding.UTF8WithoutBOM);
    Result := True;
  finally
    LFileStream.Free;
  end;
end;

// https://forums.adobe.com/thread/2162441
initialization

DefaultDockTreeClass := TCustomCaptionedDockTree;

finalization

end.

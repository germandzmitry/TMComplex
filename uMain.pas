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
    PanelEditor: TPanel;
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

    procedure PanelCodeDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
    procedure PanelCodeChange(Sender: TObject);
    procedure PanelCodeChanging(Sender: TObject; var AllowChange: Boolean);
    procedure PanelCodeClosePage(Sender: TObject; TabIndex: Integer);
    procedure PanelCodeContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);

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
  private
    { Private declarations }
    FAllSetting: TAllSetting;
    FPageCode: TCustomPageControl;
    FPageSymbols: TCustomPageControl;
    FPageLog: TCustomPageControl;
    FActiveEditor: TfEditor;
    FCurDoc: Integer;
    FFolderProject: string;
    FTexGuiSymbols: TTexGuiSymbols;
    FTexCompile: TThreadCompile;
    FSendString: string;

    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;

    procedure AddPageCode(const PageCaption, PageFileName: string);
    procedure SetStatusPanelFileName();
    procedure OpenDocument(fileName: string);
    procedure ThreadEndGenerate(Sender: TObject);

    procedure TexGuiSymbolClick(Sender: TObject; const Symbol: TSymbol);
    procedure InsertTemplate(const cmName: string; moveX: Integer);
    procedure InsertTemplateBlock(const cmBegin: string; const cmEnd: string);

    procedure ProcessParam(index: Integer; param: string);
  public
    { Public declarations }
    property ActiveEditor: TfEditor read FActiveEditor;
    property PageCode: TCustomPageControl read FPageCode write FPageCode;
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
  IniFile.WriteBool('Log', 'Show', (fLog <> nil));

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
  c: TColor;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TPanel then
    begin
      (Components[i] as TPanel).BevelOuter := bvNone;
      (Components[i] as TPanel).Caption := '';
    end;

  PanelEditor.Align := alClient;

  pDockBottom.Height := 0;
  sDockBottom.Height := 0;
  sDockBottom.Enabled := False;

  PanelAction.Height := 103;

  Bevel1.Width := 3;

  ActTexPdfLaTeX.Enabled := True;
  ActTexStop.Enabled := False;

  // c := clWhite;
  c := clMenu;
  // ActionColorMap.Color := c;
  PanelEditor.Color := c;
  PanelActionLeft.Color := c;
  PanelActionClient.Color := c;

  FPageCode := TCustomPageControl.Create(self);
  with FPageCode do
  begin
    Left := PanelEditor.Left;
    Top := PanelEditor.Top;
    Width := PanelEditor.Width;
    Height := PanelEditor.Height;
    Parent := PanelEditor;
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

    OnChange := PanelCodeChange;
    OnChanging := PanelCodeChanging;
    OnContextPopup := PanelCodeContextPopup;
    OnDockDrop := PanelCodeDockDrop;
    OnClosePage := PanelCodeClosePage;
  end;
  SendMessage(FPageCode.Handle, WM_UPDATEUISTATE, MakeLong(UIS_SET, UISF_HIDEFOCUS), 0);
  SendMessage(FPageCode.Handle, TCM_SETPADDING, 0, MAKELPARAM(9, FPageCode.TabHeight + 5));

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
  CreateTab(FPageSymbols, 'International');
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

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  ActTexStopExecute(ActTexStop);

  // Закрываем все окна
  while FPageCode.PageCount <> 0 do
    for i := 0 to screen.FormCount - 1 do
      if (screen.Forms[i] is TfEditor) and
        (screen.Forms[i].Parent = FPageCode.Pages[FPageCode.PageCount - 1]) then
      begin
        (screen.Forms[i] as TfEditor).Close;
        FPageCode.Pages[FPageCode.PageCount - 1].Free;
        Break;
      end;

  SaveSettings;

  // Что бы сохранились насройки с формы лога, вызывать только после
  // SaveSetting основного окна
  if fLog <> nil then
    fLog.Close;

  FTexGuiSymbols.Free;
  FPageCode.Free;
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
var
  LFileStream: TFileStream;
begin

  ActTexStopExecute(ActTexStop);

  if FActiveEditor = nil then
    Abort;

  if FActiveEditor.State = stSave then
    Exit;

  if (FActiveEditor.State = stNew) or (not FileExists(FActiveEditor.fileName)) then
  begin
    sdTex.InitialDir := FFolderProject;
    sdTex.fileName := FActiveEditor.Caption;
    if sdTex.Execute() then
    begin
      FActiveEditor.fileName := sdTex.fileName;
      Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
    end
    else
      Abort;
  end;

  LFileStream := TFileStream.Create(FActiveEditor.fileName, fmCreate);
  try
    FActiveEditor.Editor.Lines.SaveToStream(LFileStream, TEncoding.UTF8WithoutBOM);
  finally
    LFileStream.Free;
  end;

  // FCurPageCode.Editor.SaveToFile(FCurPageCode.fileName, TEncoding.UTF8WithoutBOM);
  FActiveEditor.State := stSave;
  SetStatusPanelFileName;
end;

procedure TMain.ActFileSaveAsExecute(Sender: TObject);
begin
  ActTexStopExecute(ActTexStop);

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
  end;
end;

procedure TMain.ActFileSettingExecute(Sender: TObject);
var
  setting: TfSettings;
begin
  setting := TfSettings.Create(Main);
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
  GoToLine: TfEditorGoToLine;
begin
  if FActiveEditor <> nil then
  begin
    GoToLine := TfEditorGoToLine.Create(Main);
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

  fLog.Caption := 'Parsing error...';
  Application.ProcessMessages;

  resParse := TTexLogParser.Parse(fLog.mLog.Text, fLog.MsgLines, fLog.MsgCount);
  fLog.ShowMsg;

  // Если есть ошибки, документ не открываем
  if resParse then
    Exit;

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
    Exit;

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
    if fLog = nil then
    begin
      fLog := TfLog.Create(Application);
    end
    else
    begin
      fLog.Clear;
      fLog.Caption := 'Compile...';
    end;

    FTexCompile := TThreadCompile.Create(cmd, fLog.mLog, True, ActTexSysCmd.Checked);
    FTexCompile.Priority := tpLowest;
    FTexCompile.OnTerminate := ThreadEndGenerate;
  except
    // Если не долши до запуска команды, то и поток нечего останавливать
    on E: Exception do
    begin
      ShowMessage(E.Message);
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
  if fLog = nil then
  begin
    fLog := TfLog.Create(Application);
    fLog.ManualDock(pDockBottom, nil, alClient);
    fLog.Show;
  end
  else if not fLog.Showing then
  begin
    fLog.ManualDock(pDockBottom, nil, alClient);
    fLog.Show;
    fLog.ShowMsg;
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
begin
  fAbout := TfAbout.Create(self);
  try
    fAbout.ShowModal;
  finally
    fAbout.FreeOnRelease;
  end;
end;

procedure TMain.PanelCodeChange(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to screen.FormCount - 1 do
    if (screen.Forms[i] is TfEditor) and (screen.Forms[i].Parent = FPageCode.ActivePage) then
    begin
      FActiveEditor := screen.Forms[i] as TfEditor;
      FActiveEditor.SetFocus;
      Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
      Break;
    end;

  StatusBar.Panels[STATUS_BAR_PATH].Text := ExtractFilePath(FActiveEditor.fileName);
end;

procedure TMain.PanelCodeChanging(Sender: TObject; var AllowChange: Boolean);
begin
  //
end;

procedure TMain.PanelCodeClosePage(Sender: TObject; TabIndex: Integer);
var
  i: Integer;
  closeTab, activeTab: TTabSheet;
begin
  closeTab := (Sender as TCustomPageControl).Pages[TabIndex];

  if TabIndex = (Sender as TCustomPageControl).ActivePageIndex then
  begin
    FActiveEditor.Close;
    // Если это была последняя вкладка
    if FPageCode.PageCount = 1 then
    begin
      Main.Caption := Application.Title;
      StatusBar.Panels[STATUS_BAR_CARET].Text := '';
      StatusBar.Panels[STATUS_BAR_ENCODING].Text := '';
      StatusBar.Panels[STATUS_BAR_PATH].Text := '';
      FActiveEditor := nil;
    end;
  end
  else
  begin
    Main.Perform(WM_SETREDRAW, 0, 0);
    activeTab := (Sender as TCustomPageControl).ActivePage;
    for i := 0 to screen.FormCount - 1 do
      if (screen.Forms[i] is TfEditor) and (screen.Forms[i].Parent = closeTab) then
      begin
        (screen.Forms[i] as TfEditor).Close;
        Break;
      end;
    closeTab.Free;
    (Sender as TCustomPageControl).ActivePage := activeTab;
    Main.Perform(WM_SETREDRAW, 1, 0);
    InvalidateRect(FPageCode.Handle, nil, True);
  end;
end;

procedure TMain.PanelCodeContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  // with Sender as TPageControl do
  // begin
  // PopupAction.Popup(10, 10);
  // end;
end;

procedure TMain.PanelCodeDockDrop(Sender: TObject; Source: TDragDockObject; X, Y: Integer);
begin
  if Source.Control is TfEditor then
  begin
    FActiveEditor := Source.Control as TfEditor;
    Main.Caption := Application.Title + ' - [' + FActiveEditor.Caption + ']';
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
  with TfEditor.Create(Application) do
  begin
    Caption := PageCaption;
    fileName := PageFileName;
    ManualDock(FPageCode);
    Show;
    if FPageCode.PageCount = 1 then
      SetFocus;
  end;

  FPageCode.ActivePageIndex := FPageCode.PageCount - 1;
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

procedure TMain.OpenDocument(fileName: string);
var
  i: Integer;
  alreadyTab: TTabSheet;
  rcPage: TRect;
begin
  for i := 0 to screen.FormCount - 1 do
    if (screen.Forms[i] is TfEditor) and ((screen.Forms[i] as TfEditor).fileName = fileName) then
    begin
      // Для вызова события onChange
      alreadyTab := (screen.Forms[i] as TfEditor).Parent as TTabSheet;
      rcPage := alreadyTab.PageControl.TabRect(alreadyTab.TabIndex);
      alreadyTab.PageControl.Perform(WM_LBUTTONDOWN, 0, MakeLong(rcPage.Left + 5, rcPage.Top + 5));
      Exit;
    end;

  AddPageCode(StringReplace(ExtractFileName(fileName), ExtractFileExt(fileName), '', []), fileName);

  FActiveEditor.Editor.BeginUpdate;
  FActiveEditor.Editor.Lines.Clear;
  FActiveEditor.Editor.LoadFromFile(fileName);
  // FActiveEditor.Editor.Encoding := TEncoding.UTF8;
  FActiveEditor.Editor.EndUpdate;
  FActiveEditor.State := stSave;
end;

// https://forums.adobe.com/thread/2162441
var
  hnd: Integer = 0;

initialization

DefaultDockTreeClass := TCustomCaptionedDockTree;

finalization

end.

object Main: TMain
  Left = 0
  Top = 0
  Caption = 'TM complex'
  ClientHeight = 407
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sDockBottom: TSplitter
    Left = 0
    Top = 299
    Width = 700
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ExplicitLeft = 2
    ExplicitTop = 93
    ExplicitWidth = 376
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 388
    Width = 700
    Height = 19
    DoubleBuffered = True
    Panels = <
      item
        Width = 50
      end
      item
        Width = 150
      end
      item
        Width = 200
      end>
    ParentDoubleBuffered = False
    OnDblClick = StatusBarDblClick
  end
  object pAction: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 129
    Align = alTop
    Caption = 'pAction'
    DoubleBuffered = False
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    object ActionMainMenuBar: TActionMainMenuBar
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 695
      Height = 27
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      UseSystemFont = False
      ActionManager = ActMngCommand
      Caption = 'ActionMainMenuBar'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
    end
    object pActionLeft: TPanel
      Left = 1
      Top = 28
      Width = 385
      Height = 100
      Align = alLeft
      Caption = 'pActionLeft'
      ParentBackground = False
      TabOrder = 1
      object ActionToolBar1: TActionToolBar
        AlignWithMargins = True
        Left = 4
        Top = 1
        Width = 380
        Height = 26
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActionManager = ActMngCommand
        Caption = 'ActionToolBar1'
        Color = clMenuBar
        ColorMap.DisabledFontColor = 7171437
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedFont = clBlack
        ColorMap.UnusedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
      object ActionToolBar2: TActionToolBar
        AlignWithMargins = True
        Left = 4
        Top = 27
        Width = 380
        Height = 26
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActionManager = ActMngCommand
        Caption = 'ActionToolBar2'
        Color = clMenuBar
        ColorMap.DisabledFontColor = 7171437
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedFont = clBlack
        ColorMap.UnusedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
      object ActionToolBar3: TActionToolBar
        AlignWithMargins = True
        Left = 4
        Top = 53
        Width = 380
        Height = 26
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActionManager = ActMngCommand
        Caption = 'ActionToolBar3'
        Color = clMenuBar
        ColorMap.DisabledFontColor = 7171437
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedFont = clBlack
        ColorMap.UnusedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object pActionClient: TPanel
      Left = 386
      Top = 28
      Width = 313
      Height = 100
      Align = alClient
      Caption = 'pActionClient'
      DoubleBuffered = False
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 2
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 40
        Height = 98
        Align = alLeft
        Shape = bsLeftLine
      end
    end
  end
  object pDockBottom: TPanel
    Left = 0
    Top = 302
    Width = 700
    Height = 86
    Align = alBottom
    Caption = 'pDockBottom'
    DockSite = True
    ParentBackground = False
    TabOrder = 2
    OnDockDrop = pDockBottomDockDrop
    OnUnDock = pDockBottomUnDock
  end
  object ActListCommand: TActionList
    Images = il_16x16
    Left = 40
    Top = 176
    object ActHelp: TAction
      Category = 'Help'
      Caption = 'ActHelp'
      OnExecute = ActHelpExecute
    end
    object ActWindow: TAction
      Category = 'Window'
      Caption = 'ActWindow'
      OnExecute = ActWindowExecute
    end
    object ActMiKTeX: TAction
      Category = 'MiKTeX'
      Caption = 'ActMiKTeX'
      OnExecute = ActMiKTeXExecute
    end
    object ActEdit: TAction
      Category = 'Edit'
      Caption = 'ActEdit'
      OnExecute = ActEditExecute
    end
    object ActTex: TAction
      Category = 'Tex'
      Caption = 'ActTex'
      OnExecute = ActTexExecute
    end
    object ActTexPdfLaTeX: TAction
      Category = 'Tex'
      Caption = 'ActTexPdfLaTeX'
      ImageIndex = 43
      ShortCut = 120
      OnExecute = ActTexPdfLaTeXExecute
    end
    object ActFile: TAction
      Category = 'File'
      Caption = 'ActFile'
      OnExecute = ActFileExecute
    end
    object ActFileNew: TAction
      Category = 'File'
      Caption = 'ActFileNew'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = ActFileNewExecute
    end
    object ActFileOpen: TAction
      Category = 'File'
      Caption = 'ActFileOpen'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = ActFileOpenExecute
    end
    object ActFileSave: TAction
      Category = 'File'
      Caption = 'ActFileSave'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = ActFileSaveExecute
    end
    object ActFileSaveAs: TAction
      Category = 'File'
      Caption = 'ActFileSaveAs'
      ImageIndex = 3
      OnExecute = ActFileSaveAsExecute
    end
    object ActHelpAbout: TAction
      Category = 'Help'
      Caption = 'ActMenuAbout'
      ImageIndex = 40
      OnExecute = ActHelpAboutExecute
    end
    object ActFontBold: TAction
      Category = 'Text.Font'
      Caption = 'ActFontBold'
      ImageIndex = 16
      OnExecute = ActFontBoldExecute
    end
    object ActFontItalic: TAction
      Category = 'Text.Font'
      Caption = 'ActFontItalic'
      ImageIndex = 17
      OnExecute = ActFontItalicExecute
    end
    object ActFontUnderline: TAction
      Category = 'Text.Font'
      Caption = 'ActFontUnderline'
      ImageIndex = 18
      OnExecute = ActFontUnderlineExecute
    end
    object ActAlignLeft: TAction
      Category = 'Text.Align'
      Caption = 'ActAlignLeft'
      ImageIndex = 20
      OnExecute = ActAlignLeftExecute
    end
    object ActAlignCenter: TAction
      Category = 'Text.Align'
      Caption = 'ActAlignCenter'
      ImageIndex = 21
      OnExecute = ActAlignCenterExecute
    end
    object ActAlignRight: TAction
      Category = 'Text.Align'
      Caption = 'ActAlignRight'
      ImageIndex = 22
      OnExecute = ActAlignRightExecute
    end
    object ActAlignJustify: TAction
      Category = 'Text.Align'
      Caption = 'ActAlignJustify'
      ImageIndex = 23
      OnExecute = ActAlignJustifyExecute
    end
    object ActText: TAction
      Category = 'Text'
      Caption = 'ActText'
      OnExecute = ActTextExecute
    end
    object ActTextSubSize: TAction
      Category = 'Text'
      Caption = 'ActTextSubSize'
      ImageIndex = 12
      OnExecute = ActTextSubSizeExecute
    end
    object ActFileSetting: TAction
      Category = 'File'
      Caption = 'ActFileSetting'
      ImageIndex = 4
      OnExecute = ActFileSettingExecute
    end
    object ActFileExit: TAction
      Category = 'File'
      Caption = 'ActFileExit'
      ImageIndex = 5
      OnExecute = ActFileExitExecute
    end
    object ActFontColor: TAction
      Category = 'Text.Font'
      Caption = 'ActFontColor'
      ImageIndex = 19
      OnExecute = ActFontColorExecute
    end
    object ActTexStop: TAction
      Category = 'Tex'
      Caption = 'ActTexStop'
      ImageIndex = 44
      OnExecute = ActTexStopExecute
    end
    object ActInsert: TAction
      Category = 'Insert'
      Caption = 'ActInsert'
      OnExecute = ActInsertExecute
    end
    object ActInsertImage: TAction
      Category = 'Insert'
      Caption = 'ActInsertImage'
      ImageIndex = 24
      OnExecute = ActInsertImageExecute
    end
    object ActEditUndo: TAction
      Category = 'Edit'
      Caption = 'ActEditUndo'
      ImageIndex = 6
      ShortCut = 16474
      OnExecute = ActEditUndoExecute
    end
    object ActEditRedo: TAction
      Category = 'Edit'
      Caption = 'ActEditRedo'
      ImageIndex = 7
      ShortCut = 24666
      OnExecute = ActEditRedoExecute
    end
    object ActEditCut: TAction
      Category = 'Edit'
      Caption = 'ActEditCut'
      ImageIndex = 8
      ShortCut = 16472
      OnExecute = ActEditCutExecute
    end
    object ActEditCopy: TAction
      Category = 'Edit'
      Caption = 'ActEditCopy'
      ImageIndex = 9
      ShortCut = 16451
      OnExecute = ActEditCopyExecute
    end
    object ActEditPaste: TAction
      Category = 'Edit'
      Caption = 'ActEditPaste'
      ImageIndex = 10
      ShortCut = 16470
      OnExecute = ActEditPasteExecute
    end
    object ActEditSelectAll: TAction
      Category = 'Edit'
      Caption = 'ActEditSelectAll'
      ImageIndex = 11
      ShortCut = 16449
      OnExecute = ActEditSelectAllExecute
    end
    object ActMiKTeXOption: TAction
      Category = 'MiKTeX'
      Caption = 'ActMiKTeXOption'
      ImageIndex = 38
      OnExecute = ActMiKTeXOptionExecute
    end
    object ActMiKTeXPackageManager: TAction
      Category = 'MiKTeX'
      Caption = 'ActMiKTeXPackageManager'
      ImageIndex = 38
      OnExecute = ActMiKTeXPackageManagerExecute
    end
    object ActMiKTeXUpdateWizard: TAction
      Category = 'MiKTeX'
      Caption = 'ActMiKTeXUpdateWizard'
      ImageIndex = 38
      OnExecute = ActMiKTeXUpdateWizardExecute
    end
    object ActMiKTeXTeXworks: TAction
      Category = 'MiKTeX'
      Caption = 'ActMiKTeXTeXworks'
      ImageIndex = 39
      OnExecute = ActMiKTeXTeXworksExecute
    end
    object ActTexSysCmd: TAction
      Category = 'Tex'
      Caption = 'ActTexSysCmd'
      OnExecute = ActTexSysCmdExecute
    end
    object ActView: TAction
      Category = 'View'
      Caption = 'ActView'
      OnExecute = ActViewExecute
    end
    object ActViewLog: TAction
      Category = 'View'
      Caption = 'ActViewLog'
      Hint = 'View log'
      OnExecute = ActViewLogExecute
    end
    object ActSearch: TAction
      Category = 'Search'
      Caption = 'ActSearch'
      OnExecute = ActSearchExecute
    end
    object ActSearchGoToLine: TAction
      Category = 'Search'
      Caption = 'ActSearchGoToLine'
      OnExecute = ActSearchGoToLineExecute
    end
    object ActWindowCascade: TAction
      Category = 'Window'
      Caption = 'ActWindowCascade'
      ImageIndex = 34
      OnExecute = ActWindowCascadeExecute
    end
    object ActWindowTileHorizontal: TAction
      Category = 'Window'
      Caption = 'ActWindowTileHorizontal'
      ImageIndex = 35
      OnExecute = ActWindowTileHorizontalExecute
    end
    object ActWindowTileVertical: TAction
      Category = 'Window'
      Caption = 'ActWindowTileVertical'
      ImageIndex = 36
      OnExecute = ActWindowTileVerticalExecute
    end
    object ActWindowMaximize: TAction
      Category = 'Window'
      Caption = 'ActWindowMaximize'
      ImageIndex = 37
      OnExecute = ActWindowMaximizeExecute
    end
    object ActEditEncoding: TAction
      Category = 'Edit'
      Caption = 'ActEditEncoding'
      OnExecute = ActEditEncodingExecute
    end
    object ActTextSubFont: TAction
      Category = 'Text'
      Caption = 'ActTextSubFont'
      ImageIndex = 13
      OnExecute = ActTextSubFontExecute
    end
    object ActTextSubAlign: TAction
      Category = 'Text'
      Caption = 'ActTextSubAlign'
      ImageIndex = 14
      OnExecute = ActTextSubAlignExecute
    end
    object ActTextShowSpecialChars: TAction
      Category = 'Text'
      Caption = 'ActTextShowSpecialChars'
      ImageIndex = 15
      OnExecute = ActTextShowSpecialCharsExecute
    end
    object ActInsertSubObject: TAction
      Category = 'Insert'
      Caption = 'ActInsertSubObject'
      ImageIndex = 52
      OnExecute = ActInsertSubObjectExecute
    end
    object ActInsertSubLink: TAction
      Category = 'Insert'
      Caption = 'ActInsertSubLink'
      ImageIndex = 25
      OnExecute = ActInsertSubLinkExecute
    end
    object ActLinkUrl: TAction
      Category = 'Insert.Link'
      Caption = 'ActLinkUrl'
      ImageIndex = 28
      OnExecute = ActLinkUrlExecute
    end
    object ActLinkHref: TAction
      Category = 'Insert.Link'
      Caption = 'ActLinkHref'
      ImageIndex = 29
      OnExecute = ActLinkHrefExecute
    end
    object ActLinkHyperLink: TAction
      Category = 'Insert.Link'
      Caption = 'ActLinkHyperLink'
      ImageIndex = 27
      OnExecute = ActLinkHyperLinkExecute
    end
    object ActLinkHyperTarget: TAction
      Category = 'Insert.Link'
      Caption = 'ActLinkHyperTarget'
      ImageIndex = 26
      OnExecute = ActLinkHyperTargetExecute
    end
    object ActHelpWikiBooks: TAction
      Category = 'Help'
      Caption = 'ActHelpWikiBooks'
      ImageIndex = 41
      OnExecute = ActHelpWikiBooksExecute
    end
    object ActInsertNewPage: TAction
      Category = 'Insert'
      Caption = 'ActInsertNewPage'
      ImageIndex = 42
      OnExecute = ActInsertNewPageExecute
    end
    object ActTexOpenPdf: TAction
      Category = 'Tex'
      Caption = 'ActTexOpenPdf'
      ImageIndex = 45
      OnExecute = ActTexOpenPdfExecute
    end
    object ActTexOpenPdfSynctex: TAction
      Category = 'Tex'
      Caption = 'ActTexOpenPdfSynctex'
      ImageIndex = 46
      OnExecute = ActTexOpenPdfSynctexExecute
    end
    object ActTabClose: TAction
      Category = 'Tab'
      Caption = 'ActTabClose'
      OnExecute = ActTabCloseExecute
    end
    object ActObjectTable: TAction
      Category = 'Insert.Object'
      Caption = 'ActObjectTable'
      ImageIndex = 53
      OnExecute = ActObjectTableExecute
    end
    object ActSizeTiny: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeTiny'
      OnExecute = ActSizeTinyExecute
    end
    object ActSizeScriptsize: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeScriptsize'
      OnExecute = ActSizeScriptsizeExecute
    end
    object ActSizeFootnotesize: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeFootnotesize'
      OnExecute = ActSizeFootnotesizeExecute
    end
    object ActSizeSmall: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeSmall'
      OnExecute = ActSizeSmallExecute
    end
    object ActSizeNormalsize: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeNormalsize'
      OnExecute = ActSizeNormalsizeExecute
    end
    object ActSizeLarge: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeLarge'
      OnExecute = ActSizeLargeExecute
    end
    object ActSizeLLarge: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeLLarge'
      OnExecute = ActSizeLLargeExecute
    end
    object ActSizeLLLarge: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeLLLarge'
      OnExecute = ActSizeLLLargeExecute
    end
    object ActSizeHuge: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeHuge'
      OnExecute = ActSizeHugeExecute
    end
    object ActSizeHHuge: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeHHuge'
      OnExecute = ActSizeHHugeExecute
    end
    object ActSizeCustom: TAction
      Category = 'Text.Size'
      Caption = 'ActSizeCustom'
      OnExecute = ActSizeCustomExecute
    end
    object ActHelpCtan: TAction
      Category = 'Help'
      Caption = 'ActHelpCtan'
      ImageIndex = 47
      OnExecute = ActHelpCtanExecute
    end
    object ActInsertSubArray: TAction
      Category = 'Insert'
      Caption = 'ActInsertSubArray'
      ImageIndex = 48
      OnExecute = ActInsertSubArrayExecute
    end
    object ActArray: TAction
      Category = 'Insert.Array'
      Caption = 'ActArray'
      ImageIndex = 49
      OnExecute = ActArrayExecute
    end
    object ActArrayCases: TAction
      Category = 'Insert.Array'
      Caption = 'ActArrayCases'
      ImageIndex = 50
      OnExecute = ActArrayCasesExecute
    end
    object ActArrayMatrix: TAction
      Category = 'Insert.Array'
      Caption = 'ActArrayMatrix'
      ImageIndex = 51
      OnExecute = ActArrayMatrixExecute
    end
    object ActObjectFigure: TAction
      Category = 'Insert.Object'
      Caption = 'ActObjectFigure'
      ImageIndex = 54
      OnExecute = ActObjectFigureExecute
    end
    object ActInsertTabular: TAction
      Category = 'Insert'
      Caption = 'ActInsertTabular'
      ImageIndex = 58
      OnExecute = ActInsertTabularExecute
    end
    object ActBeamer: TAction
      Category = 'Beamer'
      Caption = 'ActBeamer'
      OnExecute = ActBeamerExecute
    end
    object ActBeamerNewFrame: TAction
      Category = 'Beamer'
      Caption = 'ActBeamerNewFrame'
      OnExecute = ActBeamerNewFrameExecute
    end
    object ActTexOpenProjectFolder: TAction
      Category = 'Tex'
      Caption = 'ActTexOpenProjectFolder'
      ImageIndex = 57
      OnExecute = ActTexOpenProjectFolderExecute
    end
    object ActTextQuote: TAction
      Category = 'Text'
      Caption = 'ActTextQuote'
      ImageIndex = 55
      OnExecute = ActTextQuoteExecute
    end
    object ActTextVerbatim: TAction
      Category = 'Text'
      Caption = 'ActTextVerbatim'
      ImageIndex = 56
      OnExecute = ActTextVerbatimExecute
    end
    object ActInsertSubEnvironment: TAction
      Category = 'Insert'
      Caption = 'ActInsertSubEnvironment'
      ImageIndex = 59
      OnExecute = ActInsertSubEnvironmentExecute
    end
    object ActInsertLabel: TAction
      Category = 'Insert'
      Caption = 'ActInsertLabel'
      OnExecute = ActInsertLabelExecute
    end
    object ActEnvirEquation: TAction
      Category = 'Insert.Envir'
      Caption = 'ActEnvirEquation'
      ImageIndex = 60
      OnExecute = ActEnvirEquationExecute
    end
    object ActEnvirEquationStar: TAction
      Category = 'Insert.Envir'
      Caption = 'ActEnvirEquationStar'
      ImageIndex = 61
      OnExecute = ActEnvirEquationStarExecute
    end
    object ActEnvirEqnarray: TAction
      Category = 'Insert.Envir'
      Caption = 'ActEnvirEqnarray'
      ImageIndex = 62
      OnExecute = ActEnvirEqnarrayExecute
    end
    object ActEnvirEqnarrayStar: TAction
      Category = 'Insert.Envir'
      Caption = 'ActEnvirEqnarrayStar'
      ImageIndex = 63
      OnExecute = ActEnvirEqnarrayStarExecute
    end
  end
  object PopupActionEditor: TPopupActionBar
    Images = il_16x16
    Left = 232
    Top = 176
    object ActPopupEditUndo: TMenuItem
      Action = ActEditUndo
    end
    object ActPopupEditRedo: TMenuItem
      Action = ActEditRedo
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ActPopupEditCut: TMenuItem
      Action = ActEditCut
    end
    object ActPopupEditCopy: TMenuItem
      Action = ActEditCopy
    end
    object ActPopupEditPaste: TMenuItem
      Action = ActEditPaste
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ActPopupEditGoToLine: TMenuItem
      Action = ActSearchGoToLine
    end
    object ActPopupTexOpenPdf: TMenuItem
      Action = ActTexOpenPdf
    end
    object ActPopupTexOpenPdfSynctex: TMenuItem
      Action = ActTexOpenPdfSynctex
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 336
    Top = 176
  end
  object ActMngCommand: TActionManager
    ActionBars = <
      item
        ActionBar = ActionMainMenuBar
      end
      item
        ActionBar = ActionToolBar1
      end
      item
        ActionBar = ActionToolBar2
      end
      item
        ActionBar = ActionToolBar3
      end>
    LinkedActionLists = <
      item
        ActionList = ActListCommand
        Caption = 'ActListCommand'
      end>
    Images = il_16x16
    Left = 136
    Top = 176
    StyleName = 'Platform Default'
    object ActInsertSubList: TAction
      Category = 'Insert'
      Caption = 'ActInsertSubList'
      ImageIndex = 30
      OnExecute = ActInsertSubListExecute
    end
    object ActListItemize: TAction
      Category = 'Insert.List'
      Caption = 'ActListItemize'
      ImageIndex = 31
      OnExecute = ActListItemizeExecute
    end
    object ActListEnumerate: TAction
      Category = 'Insert.List'
      Caption = 'ActListEnumerate'
      ImageIndex = 32
      OnExecute = ActListEnumerateExecute
    end
    object ActListDescription: TAction
      Category = 'Insert.List'
      Caption = 'ActListDescription'
      ImageIndex = 33
      OnExecute = ActListDescriptionExecute
    end
  end
  object ActColorMap: TStandardColorMap
    HighlightColor = clWhite
    UnusedColor = 16514043
    Color = clMenu
    MenuColor = clMenu
    Left = 600
    Top = 176
  end
  object il_16x16: TImageList
    ColorDepth = cd32Bit
    Left = 424
    Top = 176
    Bitmap = {
      494C010140003002D00210001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001001000001002000000000000010
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000363636AF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2F2F2FBF0000000000000000000000000000000000000000363636AF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2F2F2FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F101212
      12EB3E3E3E6E0F0F0F100F0F0F100F0F0F100F0F0F101D1D1D22313131443131
      31BB313131BB00000000000000000000000000000000000000000F0F0F101212
      12EB3E3E3E6E0F0F0F100F0F0F100F0F0F100F0F0F101D1D1D22313131443131
      31BB313131BB0000000000000000000000000000000000000000000000000000
      000000000000121212EB000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3F3F3F8900000000000000000000000000000000000000000000
      000000000000121212EB000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3F3F3F8900000000000000000000000000000000000000002525
      252E0B0B0BF32E2E2E3D00000000000000000000000000000000000000000000
      00003F3F3F760F0F0F1000000000000000000000000000000000000000002525
      252E0B0B0BF32E2E2E3D00000000000000000000000000000000000000000000
      00003F3F3F760F0F0F1000000000000000000000000000000000000000000000
      0000000000000F0F0F102F2F2FBF272727300000000000000000000000000000
      0000000000003F3F3F7600000000000000000000000000000000000000000000
      0000000000000F0F0F102F2F2FBF272727300000000000000000000000000000
      0000000000003F3F3F7600000000000000000000000000000000000000000000
      00003535354C0E0E0EEF27272730000000000000000000000000000000000000
      0000000000000F0F0F1000000000000000000000000000000000000000000000
      00003535354C0E0E0EEF27272730000000000000000000000000000000000000
      0000000000000F0F0F1000000000000000000000000000000000121212EB0000
      00FF000000FF000000000F0F0F102F2F2FBF2727273000000000000000000000
      0000000000000000000000000000000000000000000000000000121212EB0000
      00FF000000FF000000000F0F0F102F2F2FBF2727273000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3F79181818E3272727300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3F79181818E3272727300000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F102F2F
      2FBF2727273000000000000000000F0F0F102F2F2FBF27272730000000000000
      00000000000000000000000000000000000000000000000000000F0F0F102F2F
      2FBF2727273000000000000000000F0F0F102F2F2FBF27272730000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000373737AD222222D52727273000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000373737AD222222D52727273000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F102F2F2FBF2727273000000000000000002E2E2E3D1E1E1EDC000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F102F2F2FBF2727273000000000000000002E2E2E3D1E1E1EDC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007070708383838AA181818E300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007070708383838AA181818E300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F102F2F2FBF00000000272727302F2F2FBF0F0F0F10000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F102F2F2FBF00000000272727302F2F2FBF0F0F0F10000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E3D101010ED2121212800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E3D101010ED2121212800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000272727302F2F2FBF0F0F0F1000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000272727302F2F2FBF0F0F0F1000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000027272730101010ED383838530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000027272730101010ED383838530000000000000000000000000E0E
      0E0F7EB8D8F000000000000000000F0F0F0F0000000000000000000000000000
      000000000000272727302F2F2FBF0F0F0F100000000000000000000000000000
      0000000000003F3F3F7600000000000000000000000000000000000000000000
      000000000000272727302F2F2FBF0F0F0F100000000000000000000000000E0E
      0E0F7EB8D8F000000000000000000F0F0F0F0000000000000000000000000000
      000027272730181818E33F3F3F79000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027272730181818E33F3F3F7900000000000000000000000082C2EAFF1414
      141581BADAF30808080982C2EAFF0F0F0F0F0000000000000000000000002727
      273000000000181818E3000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3F3F3F8900000000000000000000000000000000000000002727
      273000000000181818E3000000FF000000FF000000FF0000000082C2EAFF1414
      141581BAD8F30808080982C2EAFF0F0F0F0F0000000000000000000000002727
      2730202020D93B3B3B9E00000000000000000000000000000000000000000000
      00001D1D1D221D1D1D2200000000000000000000000000000000000000002727
      2730202020D93B3B3B9E00000000000000000000000000000000191A1A1B7EB2
      D6EA82C2EAFF7EB2D6EA1E1F2021000000000000000000000000272727302F2F
      2FBF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727302F2F
      2FBF000000000000000000000000000000000000000000000000191A1A1B7EB1
      D6EA82C2EAFF7EB1D6EA1E1F2021000000000000000000000000272727302626
      26CF313131BC0707070800000000000000000000000000000000000000001D1D
      1D22383838AB0000000000000000000000000000000000000000272727302626
      26CF313131BC070707080000000000000000000000007EB8D8F082C2EAFF82C2
      EAFF0000000082C2EAFF82C2EAFF82C2EAFF0000000000000000181818E30000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF3F3F3F890000
      0000000000000000000000000000000000000000000000000000181818E30000
      00FF000000FF000000FF000000FF000000FF000000007EB8D8F082C2EAFF82C2
      EAFF0000000082C2EAFF82C2EAFF82C2EAFF00000000000000003E3E3E8F0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2F2F2FBF00000000000000000000000000000000000000003E3E3E8F0000
      00FF000000FF000000FF000000FF000000FF27272730000000001E1F202181BB
      E3F982C2EAFF81BBE3F92628292A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1F202181BB
      E3F982C2EAFF81BBE3F92628292A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000082C2EAFF3033
      34367EB8E0F6282A2C2D82C2EAFF0E0E0E0F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000082C2EAFF3033
      34367EB6E0F6282A2C2D82C2EAFF0E0E0E0F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0E
      0E0F7EB8D8F00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0E
      0E0F7EB8D8F00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF00000000717171EF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF717171EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000030303040000000FF000000FF0000
      00FF0B0B0B0C0000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000000000000000000000000000202020261F1F1FDA1F1F1FDA3030
      3040000000000000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF00000000707070FFFFFFFFFFCFCFCFFFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFCFCFCFFFFFFFFFFF707070FF0000000000000000000000000000
      00003C3C3C40C0C0C0FFC0C0C0FFC0C0C0FF0B0B0B0C373737AE373737AE2828
      2833000000000000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000024242426ABABABDAABABABDA3C3C3C4000000000373737AE373737AE2828
      2833000000000000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFCFCFCFFFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFCFCFCFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      2833000000000000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      283300000000000000000000000000000000000000001C1D1D1E000000001C1D
      1D1E7EAECCDE82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFCFCFCFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFCFCFCFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      283300000000000000000000000000000000000000003734313CB17B48FF3734
      313C1C1D1D1E7EAECCDE82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000909090AE777777C2444444A2000000FF2D2D2DC3373737AE0000
      00FF3E3E3E8B3E3E3E6B00000000000000003734313CB17B48FFB17B48FFB17B
      48FF3734313C1C1D1D1E82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FF707070FF7070
      70FF707070FF6F6F6FFF707070FF707070FF6F6F6FFF707070FF707070FF6F6F
      6FFF707070FF707070FF707070FF00000000707070FFFFFFFFFFFE9F3EFFFF80
      00FFFF8000FFFF8000FFFE9F3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000909090AE3B3B3BE5000000FF000000FF000000FF000000FF0000
      00FF000000FF1F1F1FDA2828283300000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FF0000000082C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF00000000000000003C3C3C407777
      778BC0C0C0FF9E9E9EC3909090AEC0C0C0FF7777778B6060606B000000000000
      000000000000000000000000000000000000B17B48FF2F2D2B33B17B48FF2F2D
      2B33B17B48FF0000000082C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000909090AEC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFABABABDA303030330000
      0000000000000000000000000000000000002221202400000000B17B48FF0000
      0000222120240000000000000000000000002325262780B4D4E7C4E2F5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF82C2EAFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF00000000727272CF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF727272CF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B17B48FFA27A53DE0000
      000000000000000000000000000000000000000000002325262780B4D4E782C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FF707070FF7070
      70FF707070FF6F6F6FFF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A67A50E7A77B4FEA413D39480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FF000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FF808080FF808080FF808080FF808080FF8080
      80FF808080FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF707070FF00000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FF707070FF707070FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB3804CFFE8D9CAFFE7D7C8FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FF676767FF0000000000000000FFFFFFFFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB380
      4CFFE8D9CAFFE7D7C8FFB3804CFFFFFFFFFF0000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FF707070FF707070FF8080
      80FF00000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB3804CFFE8D9
      CAFFE7D7C8FFB3804CFFB17B48FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFDBC3ACFFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB3804CFFE8D9CAFFE7D7
      C8FFB3804CFFB17B48FFBA8C5DFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF707070FF00000000676767FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FF676767FF0000000000000000FFFFFFFFFFFFFFFFE0CBB7FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB3804CFFE8D9CAFFE8D9CAFFB380
      4CFFB17B48FFBA8C5DFFF6F0EAFFFFFFFFFF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FF808080FF808080FF808080FF808080FF8080
      80FF808080FF707070FF707070FF707070FF00000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFE3D1
      BFFFB3804CFFB17B48FFB17B48FFB3804CFFE8D9CAFFFFFFFFFFF3EBE3FFBA8C
      5DFFBB8E5FFFF6F0EAFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FF000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF00000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFE7D7C8FFB4824EFFB4824EFFE9DACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF808080FF0000
      00000000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF00000000000000000000000000000000808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0000
      00000000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEF9FF8EC8ECFF8EC8ECFFDCEE
      F9FFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF7070
      70FF0000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC8ECFF82C2EAFF82C2EAFF8FC8
      ECFFFFFFFFFF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF8080
      80FF808080FF808080FF808080FF808080FF808080FF707070FF707070FF7070
      70FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      28323F3F3F761D1D1D2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003838
      38AB000000000000000000000000000000000000000000000000000000000F0F
      0F10383838AB000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000313131442828
      28CD000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C992828
      28320000000000000000B17B48FF0000000000000000B17B48FF000000000000
      0000383838543D3D3D660000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F10282828CD0000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      0000000000001D1D1DDD000000000000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF000000000000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF00000000000000000000000000000000383838AB3D3D
      3D6600000000C08000FFC08000FFC08000FFC08000FFC08000FFC08000FFC080
      00FFC08000FFC08000FFC08000FF00000000000000003D3D3D663D3D3D660000
      0000B17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FF000000003F3F3F893131314400000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000313131BB1D1D1D220000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      000000000000313131443C3C3C9900000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      0000000000000F0F0F100E0E0EEF0000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF000000000000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF00000000000000000000000000000000383838AB3838
      385400000000C08000FFC08000FFC08000FFC08000FFC08000FFC08000FFC080
      00FFC08000FFC08000FFC08000FF000000000F0F0F101D1D1DDD00000000B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FF00000000000000FF00000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000001D1D1D221D1D1DDD0F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028282832282828CD000000000000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      00000000000000000000000000FF0F0F0F10000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000003D3D3D661D1D1DDD1D1D1D220000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028282832282828CD000000000000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      00000000000000000000000000FF0F0F0F1000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF000000000000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000F0F0F101D1D1DDD0F0F
      0F1000000000C08000FFC08000FFC08000FFC08000FFC08000FFC08000FFC080
      00FFC08000FFC08000FFC08000FF000000001D1D1D221D1D1DDD00000000B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FF00000000000000FF00000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3838
      3854000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      0000000000000F0F0F100E0E0EEF00000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000282828CD1D1D1D220000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      000000000000313131443C3C3C990000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF000000000000000000000000B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF00000000000000000000000000000000383838AB3D3D
      3D6600000000C08000FFC08000FFC08000FFC08000FFC08000FFC08000FFC080
      00FFC08000FFC08000FFC08000FF00000000000000003F3F3F763D3D3D660000
      0000B17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FF000000003F3F3F893131314400000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1D1D22313131BB0000
      00000000000000000000B17B48FF0000000000000000B17B48FF000000000000
      000000000000282828CD0000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF00000000000000000000000000000000000000000000000000000000B17B
      48FF000000000000000000000000B17B48FF000000000000000000000000B17B
      48FF0000000000000000000000000000000000000000000000003D3D3D663131
      31BB000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C992828
      28320000000000000000B17B48FF0000000000000000B17B48FF000000000000
      0000383838543D3D3D6600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      31443F3F3F762828283200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003838
      38AB000000000000000000000000000000000000000000000000000000000F0F
      0F103C3C3C990000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373803535
      354D3535354D3535354D3535354D3535354D3535354D3535354D3535354D3535
      354D3535354D3535354D3535354D3535354D0000000000000000737373803535
      354D3535354D3535354D3535354D3535354D3535354D3535354D3535354D3535
      354D3535354D3535354D3535354D3535354D0000000000000000000000000000
      0000000000001818181B0D0D0D0E292727301C1C1C2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380F1F1
      F1FFF1F1F1FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2
      F2FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FF000000000000000073737380F1F1
      F1FFF1F1F1FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2
      F2FFEAEAEAFF8B8B8BFFB0B0B0FFF5F5F5FF0000000000000000000000000000
      00001C1C1C20553C3CB45144448550444481553F3FA916151518000000000000
      0000000000000000000000000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380F0F0
      F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
      F1FFF2F2F2FFF2F2F2FFF3F3F3FFF4F4F4FF000000000000000073737380F0F0
      F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFE8E8
      E8FF8A8A8AFF707070FF888888FFF4F4F4FF0000000000000000000000001414
      1416563F3FAB451616F8491C1CF05243438D554040A5554141A2121212140000
      0000000000000000000000000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380EFEF
      EFFFEEEEEEFFEEEEEEFF6169ECFF7D84ECFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0
      F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FF000000000000000073737380EFEF
      EFFFEEEEEEFFEEEEEEFF6169ECFF787BC1FF838383FF6D6D6DFF858585FF8686
      86FF707070FF898989FFE7E7E7FFF3F3F3FF00000000000000000E0E0E0F5441
      419B471818F5471818F6471818F64A1F1FEC51444487563E3EAB5442429A0F0F
      0F10000000000000000000000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380EDED
      EDFFEDEDEDFFEDEDEDFFA0A5EDFF4A55ECFF999FEDFFEEEEEEFFEEEEEEFFC7C9
      EEFFA8AAEDFFF0F0F0FFF1F1F1FFF2F2F2FF000000000000000073737380EDED
      EDFFEDEDEDFFEDEDEDFF9194C4FF6B6B6CFFADADB0FFD5D5D5FFB1B1B1FF6C6C
      6CFF787986FFF0F0F0FFF1F1F1FFF2F2F2FF0000000008080809504444835541
      41A0544242984F2A2ADB471818F6471818F64B2121E950444482553D3DB15343
      43910B0B0B0C0000000000000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380ECEC
      ECFFECECECFFECECECFFECECECFFE1E2ECFF404EEDFFA8ADEDFF7078ECFF636B
      ECFF686DECFFF0F0F0FFF0F0F0FFF1F1F1FF000000000000000073737380ECEC
      ECFFECECECFFECECECFF858585FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFAAAB
      B0FF6D6E85FFF0F0F0FFF0F0F0FFF1F1F1FF040404054D434379543838BF5343
      4392502D2DD7533535C5481B1BF2471818F5461717F74C2424E54F43437E543B
      3BB6514444870808080900000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380EBEB
      EBFFEBEBEBFFEAEAEAFFEAEAEAFFEBEBEBFFABB2ECFF6F79EDFFC4C8ECFFEDED
      EDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FF000000000000000073737380EBEB
      EBFFEBEBEBFFEAEAEAFF737373FFD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
      D8FF737373FFEFEFEFFFF0F0F0FFF1F1F1FF4C4242744A1F1FEC4F2C2CD95441
      419E4A2121E9513030D1554141A0491F1FEC471818F5461717F74D2727E04E43
      437C543A3ABB4F43437E05050506000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000000000000000000073737380EAEA
      EAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE5E5EAFF4C5CEEFFEBEBEBFFECEC
      ECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FF000000000000000073737380EAEA
      EAFFEAEAEAFFE9E9E9FF848484FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
      B0FF858585FFEEEEEEFFEFEFEFFFF0F0F0FF554040A4471818F5471818F6512F
      2FD45441419B4D424277543B3BB65541419F471919F4471818F6461717F74F2A
      2ADC4E43437A543838BF4C424273040404050000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000080808090C0C0C0D72727286DDDD
      DDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFA5ACE0FF4D5EE6FFE0E1E7FFEBEB
      EBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFF080808090C0C0C0D71717186DDDD
      DDFFDCDCDCFFDCDCDCFFB9B9B9FF6C6C6CFFADADB0FFD5D5D5FFB1B1B1FF6C6C
      6CFFC2C2C2FFEDEDEDFFEEEEEEFFEFEFEFFF131313155442429B471818F64516
      16F8512F2FD254424299554040A64941416D5243438E502D2DD7461717F74516
      16F8512D2DD64E43437B533737C14D4343780000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF00000000000000001919191D202020266F6F6F93C5C5
      C5FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FF8992C8FF5464D3FFDADBE0FFEAEA
      EAFFEBEBEBFFECECECFFEEEEEEFFEFEFEFFF1919191D202020266F6F6F93C5C5
      C5FFC4C4C4FFC4C4C4FFD1D1D1FFA8A8A8FF73747DFF707072FF838384FFC1C1
      C1FFF0F0F0FFECECECFFEEEEEEFFEFEFEFFF00000000111111135542429D4718
      18F6461717F74A2020EB514444874D4343794F444481543E3EAB4B2323E74719
      19F4461515F95343439353434390554040A60000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000001CE0FF001DE8FF001DE8FF001D
      E8FF001DE8FF001DE8FF001DE8FF001DE8FF001DE8FF001CE3FFDCDCDCFFEAEA
      EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFF001CE0FF001DE8FF001DE8FF001D
      E8FF001DE8FF001DE8FF001DE8FF001DE8FF001DE8FF001CE3FFDCDCDCFFEAEA
      EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFF0000000000000000121212145542
      429E471818F6471818F64A1F1FEC533737C4463F3F66504444854B424273491F
      1FEC543C3CB54F43437F53434393161515180000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000001CE2FF001CE2FF001CE2FF001C
      E2FF001CE2FF001CE2FF001CE2FF001CE2FF001CE2FF001CE2FFDCDCDCFFE9E9
      E9FFEAEAEAFFEBEBEBFFEDEDEDFFEEEEEEFF001CE2FF001CE2FF001CE2FF001C
      E2FF001CE2FF001CE2FF001CE2FF001CE2FF001CE2FF001CE2FFDCDCDCFFE9E9
      E9FFEAEAEAFFEBEBEBFFEDEDEDFFEEEEEEFF0000000000000000000000001212
      1214554141A0471818F6461717F74D2626E3543838BF5243438E543939BD5439
      39BE4E43437A5441419B1919191C000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000001DE9FF001DE9FF001DE9FF001D
      E9FF001DE9FF001DE9FF001DE9FF001DE9FF001DE9FF001DE9FFDEDEDEFFE9E9
      E9FFAAAAAAFFAAAAAAFFAAAAAAFFA8A8A8DA001DE9FF001DE9FF001DE9FF001D
      E9FF001DE9FF001DE9FF001DE9FF001DE9FF001DE9FF001DE9FFDEDEDEFFE9E9
      E9FFAAAAAAFFAAAAAAFFAAAAAAFFA8A8A8DA0000000000000000000000000000
      000013131315554141A1471818F6461717F7491C1CF0512F2FD2533636C54D43
      43785541419F201F1F2400000000000000000000000000000000B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF0000000000000000001EEFFF001EEFFF001EEFFF001E
      EFFF001EEFFF001EEFFF001EEFFF001EEFFF001EEFFF001EEFFFE4E4E4FFE8E8
      E8FFAAAAAAFFAAAAAAFFA7A7A7D900000000001EEFFF001EEFFF001EEFFF001E
      EFFF001EEFFF001EEFFF001EEFFF001EEFFF001EEFFF001EEFFFE4E4E4FFE8E8
      E8FFAAAAAAFFAAAAAAFFA5A5A5D9000000000000000000000000000000000000
      00000000000013131315554141A2471818F6461515F9513030D14D4242775541
      41A22624242C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380E6E6
      E6FFE5E5E5FFE4E4E4FFE3E3E3FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFAAAAAAFFA8A8A8DA0000000000000000000000000000000073737380E6E6
      E6FFE5E5E5FFE4E4E4FFE3E3E3FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFAAAAAAFFA8A8A8DA00000000000000000000000000000000000000000000
      0000000000000000000014141416554040A3512F2FD4433D3D5D544242992C2A
      2A35000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380E7E7
      E7FFE6E6E6FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE6E6E6FFE8E8E8FFE9E9
      E9FFA8A8A8DA000000000000000000000000000000000000000073737380E7E7
      E7FFE6E6E6FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE6E6E6FFE8E8E8FFE9E9
      E9FFA8A8A8DA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001818181B2E2C2C380C0C0C0D1F1E1E230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000252322277464548D9B7856CFB17B48FFB17B48FF9B7856CF7464548D2523
      222700000000000000000000000000000000020202030000000037393A3D6A6D
      6CC6453C3C64000000003F4041439D8D83D23F34344A000000009A938EA4967A
      61AA121111130000000002020203030303040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006157
      4D72AC7B4BF6B17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B
      4BF661574D72000000000000000000000000000000000000000084999EA4B4DD
      E8FF4C2B05F9423A3A59A4B2B2B2F0FEFFFF96653BE48E837EA4FFFFFFFFFFE7
      D7FFAC7F4CCA2E2A273000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505068E7358B7B17B
      48FFB17B48FFB17B48FFB17B48FFFFFFFFFFFFFFFFFFB17B48FFB17B48FFB17B
      48FFB17B48FF8E7358B705050506000000000000000024252526A7CDD7ECB9EB
      F8FF95B7BFFF553E2FFFB9C6CAFCDFFBFBFBD0DDE0FFB78F74FFD3C4BCFDF8FA
      FAFAF8E6DAFFCB9B70F16F5D447A0D0D0D0E0000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00008C9773D82C2C2A3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078675693B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFFFFFFFFFFFFFFFFFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF7665559000000000000000005E66686CB9EAF7FFACDB
      E6FDB3E3F0FD92B4BCFF62564EFFC1D2D6FFDFFAFDFDCADBDEFCA87D64FFD6C7
      C0FFF9FBFBFBF9F6F2FFF1CDB3FFA7835FC10000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000097A774FF94A374F656595169000000000000000000000000000000000000
      0000000000000000000000000000000000002A28272DAF7B48FCB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFC1976CFFC1976CFFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFAF7B48FC2A28272D000000008DA4ABB6BCEDFAFFABD7
      E3FAAFDDE9FFB4E5F2FD88A8AFFE726C67FFCEE2E7FFE1FEFFFFC0C3C2FFAC78
      57FFF4F5F4FFF7F7F7F7F9EFE8FFBF8F62E20000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000097A774FF97A774FF97A774FF7B826CAB0B0B0B0C00000000000000000000
      00000000000000000000000000000000000078675693B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFC1976CFFFFFFFFFFE9DACCFFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF7665559022232324A7D0D9EDB5E4F1FFAEDB
      E6FCAEDBE7FFB5E5F1FF99BFC8FF655952FFCCDFE4FFDFFAFFFFB7AFA8FFC0A0
      90FFF9FDFEFFF7FCFCFCF4D9C7FF756247822221202400000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF8E9A75DE292A282D000000000000
      000000000000000000000000000000000000A07A53DBB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB88959FFFEFDFDFFF9F4F0FFBA8C5DFFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF9D7954D54D525457B6E6F2FFAFDDE9FFAEDC
      E8FEB0DEEAFFB2E1EDFF718588FF949695FFDEF8FFFFD4E8EDFFA77B61FFDED3
      CDFFFCFCFCFCFAFAF9FFD4AA8BFA37312C3AA87B4EED3A36333F000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF97A774FF94A274F33F403C480000
      000000000000000000000000000000000000AE7A4AF9B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFDAC2AAFFFFFFFFFFF4EDE5FFB98B5BFFB17B
      48FFB17B48FFB17B48FFB17B48FFAB7B4CF37280838ABCEDFAFFAED9E6FBAEDC
      E8FFB3E2EEFFA4CED9FF5B514AFFBCCBCEFFE2FEFFFFC0C2C0FFB3896EFFF4F5
      F5FFF8FAFAFAFCEEE4FFA58260BF04040405B17B48FFAE7A4AF9544D45600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF97A774FF97A774FF95A574FC585B
      526C00000000000000000000000000000000AE7A4AF9B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFE0CBB7FFFFFFFFFFF3EBE3FFB889
      59FFB17B48FFB17B48FFB17B48FFA97B4DF08BA2A8B4BBECF8FFADD9E5FBAEDC
      E8FFB5E5F1FF86A3AAFF766E69FFD6EEF4FFDBF3FAFFAC9282FFD0BBB1FFFBFE
      FEFEF9FEFFFFECCCB6FF65553F7000000000B17B48FFB17B48FFB17B48FF322F
      2D36000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF97A774FF97A774FF95A574FC585B
      526C000000000000000000000000000000009E7854D8B17B48FFB17B48FFB17B
      48FFB17B48FFBF9468FFB17B48FFB17B48FFB17B48FFE3D0BDFFFFFFFFFFDBC3
      ACFFB17B48FFB17B48FFB17B48FF9D7954D59CBAC3CFB8E8F4FFADD9E5FCB1DF
      EBFFAFDCE8FF5F6362FFA5AEAFFFE1FDFFFFCAD7D9FFAB7A5DFFEAE6E4FFFAFB
      FBFBFCF7F4FFC69B78E823211F2500000000B17B48FFAE7A4AF9544D45600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF97A774FF94A274F33F403C480000
      00000000000000000000000000000000000076655590B17B48FFB17B48FFB27D
      4AFFF9F6F2FFFFFFFFFFC1976CFFB17B48FFB17B48FFD4B79BFFFFFFFFFFE0CB
      B7FFB17B48FFB17B48FFB17B48FF7464548D9FC4CEEFB6E6F3FFACD9E4FEB4E4
      F1FF98BDC6FF5E4D43FFC9DCE1FFDFFAFFFFB5ABA4FEC0A090FFF9FDFEFFF8FC
      FCFCF6E0D2FF8F714CA30000000000000000A87B4EED3A36333F000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      000097A774FF97A774FF97A774FF97A774FF8E9975DB292A282D000000000000
      0000000000000000000000000000000000002A28272DAF7B48FCB17B48FFB17B
      48FFD9C0A8FFFFFFFFFFF5EEE8FFD2B497FFD8BDA3FFFBF9F6FFFDFCFBFFC197
      6CFFB17B48FFB17B48FFAF7B48FC2726242A676967FFA5CED8FFB1E2EEFDB4E3
      EFFF718589FE8D908FFDDEF9FFFFD4E8ECFFA9836AFFDDD4D0FDFCFCFCFCFAFB
      FAFFDCB292FF463E354B00000000050505062221202400000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000097A774FF97A774FF97A774FF767D69A20B0B0B0C00000000000000000000
      0000000000000000000000000000000000000000000076655590B17B48FFB17B
      48FFB27D4AFFD9C0A8FFFEFDFDFFFFFFFFFFFFFFFFFFF7F1ECFFC7A27BFFB17B
      48FFB17B48FFB17B48FF7464548D00000000513C3C9C645E59FFA8D2DCFFAAD5
      E1FB554336FFA28877FFD9EEF3FDC5CFD0FDAE5F00FFE9CDBAFFF7F9F9F9F8EC
      E4FFAD8359CA0404040500000000020101020000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000097A774FF94A274F350524C60000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505068E7358B7B17B
      48FFB17B48FFB17B48FFB78857FFC7A27BFFC1976CFFB17B48FFB17B48FFB17B
      48FFB17B48FF8E7358B70505050600000000000000004D3D3D986D7170FF849A
      9FFF5B4432D4844F2EC1BFA190FFB49C8FFF7E5D3BA1A88156C2F4D5C0FFE7C1
      A6FF6456436E0000000004030304000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000899373CC2424232700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006157
      4D72AC7B4BF6B17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B
      4BF661574D720000000000000000000000000000000000000000533E3E8D5315
      00FF504B477D000000008C5B2AC9A35A00FF1B1A1A1D0C0B0B0CBB8852E0C690
      5BEE131313140000000002020203000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000252322277464548D997856CCAF7B48FCAF7B48FC997856CC7464548D2523
      222700000000000000000000000000000000040404050000000000000000504B
      47772D2B2A35000000001E1D1D20554B446308080809000000002C2A282E534C
      4559000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FF0000000000000000000000000000
      0000000000000000000000000000565A5B671313131400000000000000000000
      000000000000000000000000000000000000707070FFE2E2E2E6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFFF0000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000000000000000000000000000
      00003232323E5F5E5EFF676666F3737678CF717A7CBC00000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFCCCCFFFF3131FFFF6464FFFF6464FFFF9999FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000000000001717171A6565
      65BD515050EF303030FF292928FF40403FFF0C0B0AFF363535FF6B6B6BE86060
      60973B3B3B49020202030000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFFFFFFFFF8F8
      F8FFFF6464FFFFCCCCFFFF3131FFFFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFF
      FFFFFFCCCCFFFF6464FFFFFFFFFFFF0000FF0000000000000000AAA9A8FF8F8E
      8DFF6D6C6CFF5C5C5BFE646363FF535352FF474747FE000000FE2C2C2BFF3F3F
      3EFF6A6968FF1E1E1E200000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFFFFFFFFF8F8
      F8FFFF3131FFFFCCCCFFFF3131FFFF6464FFFF6464FFF0CAA6FFFF3131FFFFCC
      CCFFFF3131FFFFCCCCFFFFFFFFFFFF0000FF000000000E0E0E0FC9C8C7FFC9C9
      C7FEBBBABAFFD2D0CFFFAAA9A9FF868585FF646463FF2A2A2AFF050505FF5A5A
      59FF666666FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFFFFFFFFF8F8
      F8FFFF3131FFFFCCCCFFFF3131FFEAEAEAFFEAEAEAFFF8F8F8FFFFECCCFFFF31
      31FFFF9999FFFFFFFFFFFFFFFFFFFF0000FF0000000033333337CECDCBFF8884
      83FF293435FF3B4141FF646665FFA2A1A1FFDAD9D8FFC4C3C2FF000000FF4B4B
      4AFF818080B7000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFFFFFFFFF8F8
      F8FFFF3131FFFFCCCCFFFF3131FFFF6464FFFF6464FFFF9999FFFF9999FFFF31
      31FFFF3131FFFFFFFFFFFFFFFFFFFF0000FF000000005555545FC9CCCBFFD28D
      8DFFC34040FF9B2222FF703B3BFF343F3FFF393A3AFFE5E3E1FF7C7C7CFF0000
      00FF5557577A000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFF9999FFFF99
      99FFFF3131FFFF9999FFFF9999FFF8F8F8FFF8F8F8FFFFCCCCFFFF3131FFF1F1
      F1FFFF6464FFFF9999FFFFFFFFFFFF0000FF0000000075747487CCCAC9FFCBCD
      CCFFD0CCCBFFDA0000FFD14948FFE05756FFC2A7A7FFDEDDDBFFCDC6C5FF529B
      9EFF203434FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFF6464FFFF99
      99FFFF9999FFFF9999FFFF9999FFF8F8F8FFF0CAA6FFF0CAA6FFFF9999FFFFFF
      FFFFF1F1F1FFFF6464FFFFFFFFFFFF0000FF00000000949493B0CCCBCAFFCDCF
      CEFFD49E9DFFEA0000FFBB8E8DFFDCE4E2FFDCDBDAFFE1DFDDFFC1BFBEFE6C6C
      6BFF000000FF414141A10000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFF3131FFFFFF
      FFFFFFFFFFFFFFFFFFFFFF3131FFEAEAEAFFFF3131FFFF9999FFFF6464FFF8F8
      F8FFFF3131FFFF9999FFFFFFFFFFFF0000FF000000006E7574D7838080FFD5D7
      D6FFE07B7AFFF90403FFBBBBBAFFE2E1DFFFE7E4E1FFECE9E6FFAFADADFF8480
      7FC267A9ACEC000000FF1010101200000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFF3131FFF1F1
      F1FFFF3131FFF1F1F1FFFF3131FFEAEAEAFFFF3131FFFF9999FFFF6464FFFF31
      31FFFF9999FFFFFFFFFFFFFFFFFFFF0000FF00000000C65655FFAFB8B6FFE1E7
      E5FFEF605EFFFA2725FFC3D3D1FFEEEBE8FFF0EEECFFFFFDFAFF969594FF6262
      627E21212125356668FF353535B100000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FFFF0000FFFFFFFFFFFF3131FFFF64
      64FFFF6464FFFF6464FFFF3131FFEAEAEAFFFF3131FFFF9999FFFF3131FFFF31
      31FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00000000E35150FF6E807FFE5B69
      68FFF04846FFE94A49FFE0E9E7FFFFFFFEFF686C6BFFB3B0AFFE908F8EFF2828
      282C00000000576B6C80102021FF0B0B0B0C707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFFF0000FFFFFFFFFFFF3131FFFF31
      31FFFFFFFFFFFF6464FFFF3131FFF1F1F1FFFF9999FFFF9999FFFF6464FFFF99
      99FFFF6464FFFFFFFFFFFFFFFFFFFF0000FF26272729E39391FFDD4745FF7741
      41FFFE2C2BFED97C79FF686D6CFF878F8EFFC1706EFED2D7D6FF807F7EC50000
      00000000000000000000466161CD3D3D3D97B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFFF0000FFFFFFFFFFFF3131FFFFCC
      CCFFFFFFFFFFFFCCCCFFFF3131FFEAEAEAFFFF6464FFFFCCCCFFFF9999FFFFFF
      FFFFFF9999FFFF9999FFFFFFFFFFFF0000FF00000000272827298189888EE7CC
      CAF3FDCFCBFFDF9B97FF8D4F4DFFA77270FEDEB9B6FEC3C4C3FF141414160000
      000000000000000000000000000028282832B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFFF0000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000000000000000000000000000
      00002020202182858585EAEAEAEAFFEEEBFFF0EFEEFF818181A6000000000000
      000000000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FF0000000000000000000000000000
      0000000000000000000000000000171717188787878A0A0A0A0B000000000000
      00000000000000000000000000000000000000000000B17B48FFB17B48FF7062
      5387000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF000000000000000000000000B17B
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFE6E6E6E6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000B17B48FF0000
      00000000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000A77B4FEAB17B48FFB17B
      48FFAE7747F900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF00000000B17B48FFB17B48FFB17B
      48FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF00000000B17B48FFB17B48FFB17B
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF0000000000000000B17B48FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF000000000000000000000000B17B
      48FF0000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000A77B4FEAB17B48FFB17B
      48FFAE7747F900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FF7070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF00000000B17B48FFB17B48FF7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF00000000B17B48FFB17B48FFB17B
      48FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000B17B48FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF000000000000
      000000000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF00000000B17B48FFB17B48FF0000
      00000000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000A77B4FEAB17B48FFB17B
      48FFAE7747F900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF000000000000
      000000000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF00000000665A4F78B17B48FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FCAE7B
      45FE706253870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF000000000000
      000000000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF0000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFA97B4DF03A36333FAC7B4BF6B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF826C58A2050505060000000000000000000000000000
      0000AE7A4AF9665A4F7817161618000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E605384B17B48FFB17B
      48FFB17B48FFAC7B4BF6665A4F78AC7B4BF6B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF6E6053840000000000000000000000000000
      00006C5F5281B17B48FFAB7B4CF30000000023232327696969A5444444540000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A27A53DEB17B48FF665A
      4F78000000003734313CAC7B4BF6B17B48FFA87B4EED4B453F544B453F540000
      000000000000665A4F78B17B48FFA07A53DB0000000000000000131313155C5C
      5C8125232227AC7B4BF6020202038E7358B75D534B6C2C2C2C32737373D46B6B
      6BAE1313131500000000000000000000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000B17B48FFB17B48FF0B0B
      0B0C00000000544D4560B17B48FFA37A52E149433E51A37A52E1B17B48FF544D
      45600000000008080809B17B48FFAE7A4AF90000000021212124717171E28A8A
      8ABF303030300B0B0B0C8E7358B7B17B48FFB17B48FF685C507B2929292A8282
      82B3717171E216161618000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A27A53DEB17B48FF665A
      4F7800000000000000004B453F544B453F54A87B4EEDB17B48FFAC7B4BF63734
      313C00000000665A4F78B17B48FFA07A53DB02020203717171CF767676F7B6B6
      B6FFB0B0B0F44F4F4F5C70625387B17B48FFB17B48FFB17B48FF706253872121
      21217F7F7FE56B6B6BAE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C5F5281B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF6685C507BAC7B
      4BF6B17B48FFB17B48FFB17B48FF6E6053844949495D777777D1E8E8E8FFB9B9
      B9FF7A7A7AFF858585FB414141487464548DB17B48FFB17B48FFB17B48FF7867
      569322222223727272C846464657000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505063737363F826C58A2B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF63A36333FA97B4DF0B17B
      48FFB17B48FFB17B48FF826C58A2050505066C6C6CB49D9D9DC5FFFFFFFFFFFF
      FFFF848484FFEDEDEDFFE4E4E4E42424242476655590B17B48FFB17B48FF866F
      58AB111111121919191B5D5D5D84000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000055555571858585F98E8E8E944040
      4044000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171EAD7D7D7E7FFFFFFFFFFFF
      FFFF777777FFF8F8F8FFFFFFFFFFE4E4E4E4212121217A685696866F58AB1414
      13159B7856CF846D58A5080808090000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000787878D5A7A7A7FF7A7A7AFF7070
      70FF707070FF707070FF707070FF707070FF707070FF7A7A7AFFA7A7A7FF7878
      78D500000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF7C7C7CFB34343438111111129B78
      56CFB17B48FFA97B4DF0020202030000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000727272FCF7F7F7FFFFFFFFFF7373
      73FFFDFDFDFFFFFFFFFFFFFFFFFFFAFAFAFF737373FFFFFFFFFFF8F8F8FF7373
      73F800000000000000000000000000000000717171EAD7D7D7E7FFFFFFFFFFFF
      FFFF777777FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7DC31313135826C
      58A2AF7B48FC2726242A1B1B1B1E0000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000727272FCF7F7F7FFFFFFFFFF7373
      73FFFCFCFCFFFFFFFFFFFFFFFFFFFDFDFDFF737373FFFFFFFFFFF7F7F7FF7272
      72FC000000000000000000000000000000006C6C6CB49D9D9DC5FFFFFFFFFFFF
      FFFF848484FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFF8D8D8DF61818
      1818000000003C3C3C456A6A6AA8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000797979D3AFAFAFFF909090FF7070
      70FF707070FF707070FF707070FF707070FF707070FF8E8E8EFFAFAFAFFF7979
      79D3000000000000000000000000000000004848485A777777D1EBEBEBFFB9B9
      B9FF7A7A7AFF7C7C7CFF707070FF707070FF707070FF7C7C7CFF7A7A7AFFB9B9
      B9FFEBEBEBFF777777D146464657000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005353536E7B7B7BFAF0F0F0FF9B9B
      9BFFD7D7D7FFFFFFFFFFFFFFFFFFD6D6D6FF9B9B9BFFEEEEEEFF787878FB5353
      536E0000000000000000000000000000000002020203717171CC757575F7B6B6
      B6FFB3B3B3FFAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEFFABABABFFB6B6
      B6FF757575F76B6B6BAE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506747474D9B1B1B1FCC5C5
      C5FFA7A7A7FFFFFFFFFFFFFFFFFFA7A7A7FFCCCCCCFFB1B1B1FC747474D90505
      0506000000000000000000000000000000000000000021212124717171E28787
      87BFEBEBEBF97D7D7DFFF8F8F8FFFFFFFFFFF8F8F8FF838383FFE7E7E7FA8787
      87BF707070E416161618000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919191B757575D78C8C
      8CF5808080FFCBCBCBFFCBCBCBFF808080FF8C8C8CF5757575D71919191B0000
      0000000000000000000000000000000000000000000000000000131313156B6B
      6BAE757575DA8F8F8FE39D9D9DF5F8F8F8FF9B9B9BF68F8F8FE3757575DA6B6B
      6BAE1313131500000000000000000000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000A77B4FEAB17B48FFAE7A
      4AF90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000050505065252
      526C767676D7707070FE707070FE767676D75252526C05050506000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3E4B64646497707070E7707070FE707070E7646464973E3E3E4B0000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000685C507BAF7B48FC7062
      5387000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFA97B4DF03A36333FAC7B4BF6B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF826C58A2050505060000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFA97B4DF03A36333FAC7B4BF6B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF826C58A2050505060000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFA97B4DF03A36333FAC7B4BF6B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF826C58A205050506B3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FF000000006E605384B17B48FFB17B
      48FFB17B48FFAC7B4BF6665A4F78AC7B4BF6B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF6E605384000000006E605384B17B48FFB17B
      48FFB17B48FFAC7B4BF6665A4F78AC7B4BF6B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF6E605384000000006E605384B17B48FFB17B
      48FFB17B48FFAC7B4BF6665A4F78AC7B4BF6B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FF6E605384B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF00000000A27A53DEB17B48FF665A
      4F78000000003734313CAC7B4BF6B17B48FFA87B4EED4B453F544B453F540000
      000000000000665A4F78B17B48FFA07A53DB00000000A27A53DEB17B48FF665A
      4F78000000003734313CAC7B4BF6B17B48FFA87B4EED4B453F544B453F540000
      000000000000665A4F78B17B48FFA07A53DB00000000A27A53DEB17B48FF665A
      4F78000000003734313CAC7B4BF6B17B48FFA87B4EED4B453F544B453F540000
      000000000000665A4F78B17B48FFA07A53DBB3B3B3FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFFFFFFFFFB3B3B3FF00000000B17B48FFB17B48FF0B0B
      0B0C00000000544D4560B17B48FFA37A52E149433E51A37A52E1B17B48FF544D
      45600000000008080809B17B48FFAE7A4AF900000000B17B48FFB17B48FF0B0B
      0B0C00000000544D4560B17B48FFA37A52E149433E51A37A52E1B17B48FF544D
      45600000000008080809B17B48FFAE7A4AF900000000B17B48FFB17B48FF0B0B
      0B0C00000000544D4560B17B48FFA37A52E149433E51A37A52E1B17B48FF544D
      45600000000008080809B17B48FFAE7A4AF9B3B3B3FFFFFFFFFF90A466FF90A4
      66FF90A466FF90A466FF90A466FF90A466FF90A466FF90A466FF90A466FF90A4
      66FF90A466FF90A466FFFFFFFFFFB3B3B3FF00000000A27A53DEB17B48FF665A
      4F7800000000000000004B453F544B453F54A87B4EEDB17B48FFAC7B4BF63734
      313C00000000665A4F78B17B48FFA07A53DB00000000A27A53DEB17B48FF6459
      4E7500000000000000004B453F544B453F54A87B4EEDB17B48FFAC7B4BF63734
      313C0000000064594E75B17B48FFA07A53DB00000000A27A53DEB17B48FF6459
      4E7500000000000000004B453F544B453F54A87B4EEDB17B48FFAC7B4BF63734
      313C0000000064594E75B17B48FFA07A53DBB3B3B3FFFFFFFFFF93A66AFF90A4
      66FF90A466FF90A466FF90A466FF90A466FF90A466FF90A466FF90A466FF90A4
      66FF90A466FF90A466FFFFFFFFFFB3B3B3FF000000006C5F5281B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF6685C507BAC7B
      4BF6B17B48FFB17B48FFB17B48FF6E605384000000006C5F5281B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF6685C507BAC7B
      4BF6B17B48FFB17B48FFB17B48FF6E605384000000006C5F5281B17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF6685C507BAC7B
      4BF6B17B48FFB17B48FFB17B48FF6E605384B3B3B3FFFFFFFFFFEFF2EAFFC6D0
      B1FFAFBE93FF90A466FF90A466FF90A466FF90A466FF94A76BFF91A567FF90A4
      66FF90A466FF90A466FFFFFFFFFFB3B3B3FF050505063737363F826C58A2B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF63A36333FA97B4DF0B17B
      48FFB17B48FFB17B48FF826C58A2050505060000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF63A36333FA97B4DF0B17B
      48FFB17B48FFB17B48FF826C58A2050505060000000005050506826C58A2B17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFAC7B4BF63A36333FA97B4DF0B17B
      48FFB17B48FFB17B48FF826C58A205050506B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F8F3FFD0D8BFFFC8D2B4FFE4E9DAFFFFFFFFFFEAEEE3FFAEBD
      91FFA4B483FF90A466FFFFFFFFFFB3B3B3FF55555571858585F98E8E8E944040
      4044000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFBF8FFFFFFFFFFB3B3B3FF787878D5A7A7A7FF7A7A7AFF7070
      70FF707070FF707070FF707070FF707070FF707070FF7A7A7AFFA7A7A7FF7878
      78D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF727272FCF7F7F7FFFFFFFFFF7373
      73FFFDFDFDFFFFFFFFFFFFFFFFFFFAFAFAFF737373FFFFFFFFFFF8F8F8FF7373
      73F8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4D3C1FFF9F4F0FFF9F4F0FFD2B497FFBF9468FFE6D6
      C6FFF7F1ECFFFBF9F6FFFFFFFFFFB3B3B3FF727272FCF7F7F7FFFFFFFFFF7373
      73FFFCFCFCFFFFFFFFFFFFFFFFFFFDFDFDFF737373FFFFFFFFFFF7F7F7FF7272
      72FC0000000000000000000000000000000000000000000000006A5D517EB17B
      48FF967657C60B0B0B0C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000B0B0B0C947657C3B17B
      48FF6A5D517E0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFD3B699FFF6F0
      EAFFF6F0EAFFD3B699FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFFFFFFFFFB3B3B3FF797979D3AFAFAFFF909090FF7070
      70FF707070FF707070FF707070FF707070FF707070FF8E8E8EFFAFAFAFFF7979
      79D3000000000000000000000000000000000000000000000000000000006A5D
      517EB17B48FF967657C60B0B0B0CFFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0B0B0B0C967657C6B17B48FF6A5D
      517E000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFFFFFFFFFB3B3B3FF5353536E7B7B7BFAF0F0F0FF9B9B
      9BFFD7D7D7FFFFFFFFFFFFFFFFFFD6D6D6FF9B9B9BFFEEEEEEFF787878FB5353
      536E00000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF967657C6FBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF967657C6B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF05050506747474D9B1B1B1FCC5C5
      C5FFA7A7A7FFFFFFFFFFFFFFFFFFA7A7A7FFCCCCCCFFB1B1B1FC747474D90505
      050600000000000000000000000000000000B17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FF947657C3FBF9F6FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF947657C3B17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFFFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FF000000001919191B757575D78C8C
      8CF5808080FFCBCBCBFFCBCBCBFF808080FF8C8C8CF5757575D71919191B0000
      0000000000000000000000000000000000000000000000000000000000006C5F
      5281B17B48FF947657C30B0B0B0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08080809947657C3B17B48FF6C5F
      5281000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505065252
      526C767676D7707070FE707070FE767676D75252526C05050506000000000000
      00000000000000000000000000000000000000000000000000006C5F5281B17B
      48FF947657C30B0B0B0C00000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000008080809947657C3B17B
      48FF6C5F52810000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05065C534A6993765ABAB08050F0B8824BFF9D7C58CC846F59A23F3B37450000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000101111123A37
      333FB6804BFCB8824BFFB8824BFFB8824BFFB8824BFFB8824BFFB6804BFC302E
      2B330E0E0E0F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B2C31334963CCF03537
      3E4270625384B8824BFFB8824BFFB8824BFFB8824BFFB8824BFF706253843A3C
      3842919D75E72627262A000000000000000000000000343434404E4E4EFF4E4E
      4EFF5757579000000000000000004E4E4EFF4E4E4EFF00000000000000005757
      57904E4E4EFF4E4E4EFF34343440000000000000000000000000000000005B5B
      5BAA4E4E4EFF4949496600000000414141554E4E4EFF4E4E4EFF1E1E1E220000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000050505065065BAD84261D8FF4B65
      C5E7161617189C7B58C9B8824BFFB8824BFFB8824BFF9C7B58C916161618909C
      75E497A774FF899373CC05050506000000000000000000000000535353804E4E
      4EFF4E4E4EFF3E3E3E50000000004E4E4EFF4E4E4EFF00000000343434404E4E
      4EFF4E4E4EFF5757579000000000000000000000000000000000000000005050
      50774E4E4EFF55555588000000005B5B5BBB4E4E4EFF5B5B5BAA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EFF4E4E4EFF3434
      34400000000000000000000000000000000045495A604261D8FF4261D8FF4261
      D8FF55649CB11F1E1D21B08050F0B8824BFFB08050F01F1E1D217D856DB197A7
      74FF97A774FF97A774FF4C4E485A000000000000000000000000000000005A5A
      5AD04E4E4EFF535353F00F0F0F104E4E4EFF4E4E4EFF0F0F0F10535353F04E4E
      4EFF5A5A5AD00000000000000000000000000000000000000000000000003737
      37444E4E4EFF5B5B5BBB2B2B2B334E4E4EFF535353EE10101011000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F10343434400F0F0F10000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000005466A6BD4261D8FF4261D8FF4261
      D8FF4261D8FF494F646C4E484157B8824BFF4E484157585B526C97A774FF97A7
      74FF97A774FF97A774FF828A70BA000000000000000000000000000000001D1D
      1D20535353F04E4E4EFF5C5C5CB04E4E4EFF4E4E4EFF5C5C5CB04E4E4EFF5353
      53F01D1D1D200000000000000000000000000000000000000000000000001E1E
      1E224E4E4EFF535353EE5B5B5BAA4E4E4EFF5555558800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF5B5B5BC04E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000004A63C9ED4261D8FF4261D8FF4261
      D8FF4261D8FF4562D3F927272B2D44403B4B292A282D94A473F997A774FF97A7
      74FF97A774FF97A774FF929F74EA000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4646
      4660000000000000000000000000000000000000000000000000000000000000
      0000585858DD4E4E4EFF535353EE4E4E4EFF2B2B2B3300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4E4E4EFF575757E04E4E4EFF4E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000004261D4FC4261D8FF4261D8FF4261
      D8FF4A63C9ED566291A22F3036390000000033343139767D69A292A074ED97A7
      74FF97A774FF97A774FF95A574FC000000000000000000000000000000000000
      00005C5C5CB04E4E4EFF5A5A5AD04E4E4EFF4E4E4EFF5A5A5AD04E4E4EFF5C5C
      5CB0000000000000000000000000000000000000000000000000000000000000
      00005B5B5BAA4E4E4EFF5B5B5BBB4E4E4EFF5B5B5BBB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4D4D4D70000000001D1D1D204E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000004C65C3E44A64C8EA55608C9C3A3D
      474B0E0E0E0F3E454E5156779EAB00000000728EA0AB444A4E510E0E0E0F3F40
      3C48757A689C929F74EA909C75E4000000000000000000000000000000004D4D
      4D704E4E4EFF4E4E4EFF292929304E4E4EFF4E4E4EFF292929304E4E4EFF4E4E
      4EFF4D4D4D700000000000000000000000000000000000000000000000000000
      0000505050774E4E4EFF55555588555555884E4E4EFF5B5B5BAA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000002425282A0E0E0E0F404953575678
      A2AE488BDDF6448EE7FF448EE7FF0000000082C2EAFF82C2EAFF80BCE0F67290
      A3AE484F53570E0E0E0F2627262A000000000000000000000000292929305353
      53F04E4E4EFF53535380000000004E4E4EFF4E4E4EFF00000000535353804E4E
      4EFF4E4E4EFF2929293000000000000000000000000000000000000000000000
      0000373737444E4E4EFF5B5B5BBB000000005B5B5BBB4E4E4EFF595959990000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000004C5A6C72478DE0F9448EE7FF448E
      E7FF448EE7FF448EE7FF448EE7FF0000000082C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF81BDE3F92E30323300000000000000000F0F0F105A5A5AD04E4E
      4EFF5A5A5AD000000000000000004E4E4EFF4E4E4EFF00000000000000005A5A
      5AD04E4E4EFF575757E00F0F0F10000000000000000000000000000000000000
      00001E1E1E224E4E4EFF535353EE00000000000000005A5A5ACC4E4E4EFF5555
      5588000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      34400000000000000000000000000000000022242627498BDCF3448EE7FF448E
      E7FF448EE7FF448EE7FF448EE7FF0000000082C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF799EB5C300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E454E51478DE0F9448E
      E7FF448EE7FF448EE7FF448EE7FF0000000082C2EAFF82C2EAFF82C2EAFF82C2
      EAFF7DA9C5D51617171800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033373D3F4E88
      CADE448EE7FF448EE7FF448EE7FF0000000082C2EAFF82C2EAFF82C2EAFF7494
      A8B4141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      050646515E63567DACBA488BDDF6000000007DA9C5D5708B9BA5323537390000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      000000000000000000000000000000000000646464CC636363DD000000000000
      00000000000000000000383838445D5D5DFF5353537742424255606060EE5D5D
      5DFF646464BB646464CC646464CC0000000000000000343434404E4E4EFF4E4E
      4EFF5757579000000000000000004E4E4EFF4E4E4EFF00000000000000005757
      57904E4E4EFF4E4E4EFF34343440000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      000000000000000000000000000000000000535353775D5D5DFF383838440000
      000000000000000000005F5F5F995D5D5DFF1E1E1E22646464CC636363DD0000
      00002C2C2C33606060EE646464CC000000000000000000000000535353804E4E
      4EFF4E4E4EFF3E3E3E50000000004E4E4EFF4E4E4EFF00000000343434404E4E
      4EFF4E4E4EFF5757579000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000010101011606060EE5F5F5F990000
      00000000000000000000636363DD646464BB00000000646464BB636363DD4242
      425500000000646464CC646464CC000000000000000000000000000000005A5A
      5AD04E4E4EFF535353F00F0F0F104E4E4EFF4E4E4EFF0F0F0F10535353F04E4E
      4EFF5A5A5AD000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000626262AA5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF4C4C4C660000000010101011595959886464
      64CC5D5D5DFF5D5D5DFF646464CC000000000000000000000000000000001D1D
      1D20535353F04E4E4EFF5C5C5CB04E4E4EFF4E4E4EFF5C5C5CB04E4E4EFF5353
      53F01D1D1D200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C48707070C6707070F0707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000424242555D5D5DFF3838
      3844000000005F5F5F99606060EE000000000000000000000000000000000000
      000000000000646464CC646464CC000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4646
      4660000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4251707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000636363DD5F5F
      5F9900000000636363DD5F5F5F9900000000000000002C2C2C33595959880000
      00002C2C2C335D5D5DFF5F5F5F99000000000000000000000000000000000000
      00005C5C5CB04E4E4EFF5A5A5AD04E4E4EFF4E4E4EFF5A5A5AD04E4E4EFF5C5C
      5CB0000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000007070
      70DB707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000595959886363
      63DD424242555D5D5DFF38383844000000000000000010101011646464BB5D5D
      5DFF5D5D5DFF646464BB1E1E1E22000000000000000000000000000000004D4D
      4D704E4E4EFF4E4E4EFF292929304E4E4EFF4E4E4EFF292929304E4E4EFF4E4E
      4EFF4D4D4D700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202037070
      70FF707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000000000001E1E1E225D5D
      5DFF646464CC636363DD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929305353
      53F04E4E4EFF53535380000000004E4E4EFF4E4E4EFF00000000535353804E4E
      4EFF4E4E4EFF2929293000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70DB707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000000000006464
      64BB5D5D5DFF5353537700000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F105A5A5AD04E4E
      4EFF5A5A5AD000000000000000004E4E4EFF4E4E4EFF00000000000000005A5A
      5AD04E4E4EFF575757E00F0F0F100000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000004242
      4251707070FF707070FF707070FF707070FF4B4B4B6000000000707070FF4B4B
      4B60000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424242516F6F6FC9707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000038383842707070FF5C5C5C810000000000000000050505067464548DA67A
      50E7A67A50E77464548D050505060000000000000000050505067464548DA67A
      50E7A67A50E77464548D05050506000000000000000000000000000000000000
      00000000000000000000707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF00000000000000007596AAB782C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6CA41E1E1E210000
      0000707070FF77777784707070FF0000000000000000706253878E7358B71716
      1618171616188E7358B77263548A0000000000000000706253878E7358B71716
      1618171616188E7358B77263548A000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF828282E04D4D
      4D63707070FFF3F3F3FF707070FF0000000000000000A77B4FEA1A19181B0000
      0000000000001A19181BA77B4FEA0000000000000000A77B4FEA1A19181B0000
      0000000000001A19181BA77B4FEA000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FFEEEEEEFF9393
      93E0C9C9C9C99D9D9DFA4141414D0000000000000000A77B4FEA171616180000
      00000000000017161618A77B4FEA0000000000000000A77B4FEA171616180000
      00000000000017161618A77B4FEA00000000707070FF707070FF707070FF7070
      70FF707070FF00000000707070FFFFFFFFFFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF00000000000000000000000070625387937557C0322F
      2D36322F2D36947558C4806E5CA90000000000000000806E5CAA947558C4322F
      2D36322F2D36937557C07062538700000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF707070FF707070FF707070FFB17B48FFB17B48FFFFFFFFFFB17B
      48FFB17B48FFFFFFFFFFB17B48FFB17B48FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF747474E600000000050505066E605384A47A
      51E4A57B50EA92765DF871706FFC3C3C3C483C3C3C4871706FFC92765DF8A57B
      50EAA47A51E46E6053840505050600000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FFFFFFFFFF777777F14B4B4B60B17B48FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFFEEEEEEFF808080E21E1E1E210000000000000000000000000000
      0000000000006C6C6CB4707070FF707070ED717171EA707070FF6D6D6DB70000
      000000000000000000000000000000000000707070FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF777777F14949495D00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFFFFF
      FFFFEEEEEEFF808080E221212124000000000000000000000000000000000000
      00000000000011111112717171DE707070FF707070FF717171DE111111120000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFB17B48FFB17B48FFFFFFFFFF7070
      70FF707070FF707070FF707070FF000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF00000000707070FF707070FF707070FF7070
      70FF707070FF4848485A0000000000000000B17B48FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFEEEE
      EEFF808080E42323232700000000000000000000000000000000000000000000
      000000000000000000006666669C707070FF707070FF6767679F000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
      70FFD6D6D6FF717171EA2F2F2F36000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF000000000000000000000000000000000000
      000000000000000000000000000000000000B17B48FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFB17B48FFFFFFFFFFFFFFFFFF00000000707070FFEDEDEDFF7F7F
      7FE52525252AFFFFFFFF00000000000000000000000000000000000000000000
      0000000000004848485A707070FF707070FF707070FF707070FF4848485A0000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
      70FF717171EA2F2F2F3600000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FF7F7F7FE52828
      282DFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00002525252A707070F3707070FF6464649664646496707070FF707070F32525
      252A00000000000000000000000000000000707070FFFFFFFFFFB17B48FFB17B
      48FFFFFFFFFFFFFFFFFF707070FF707070FF707070FF707070FF707070FF7070
      70FF2F2F2F360000000000000000000000000000000082C2EAFF82C2EAFF82C2
      EAFF0000000000000000000000000000000000000000000000000000000082C2
      EAFF82C2EAFF82C2EAFF0000000000000000B17B48FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000717171EF2A2A2A30FFFF
      FFFFFFFFFFFFB17B48FF00000000000000000000000000000000000000000000
      00006F6F6FC3707070FF707070C60505050605050506707070C6707070FF6F6F
      6FC300000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C2EAFF82C2EAFF0000
      0000707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      000082C2EAFF82C2EAFF0000000000000000B17B48FFFFFFFFFFB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FF0000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFB17B48FF00000000000000000000000000000000000000003333
      333C707070FF717171EA1919191B00000000000000001919191B717171EA7070
      70FF3333333C000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF717171EA2F2F2F360000000000000000000000000000
      00000000000000000000000000000000000000000000779AB0BD82C2EAFF0000
      00006E6E6EBD707070FF707070FF707070FF707070FF707070FF6E6E6EBD0000
      000082C2EAFF779AB0BD0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000004B4B
      4B60707070FC38383842000000000000000000000000000000003636363F7070
      70FC4B4B4B60000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF2F2F2F36000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E6E6EBD00000000686868A200000000000000000000
      000000000000000000000000000000000000B17B48FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB17B48FF00000000000000000000000000000000000000002F2F
      2F36585858780000000000000000000000000000000000000000000000005858
      58782F2F2F360000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E6E6EBD707070FF6767679F00000000000000000000
      000000000000000000000000000000000000B17B48FFB17B48FFFFFFFFFFB17B
      48FFB17B48FFFFFFFFFFB17B48FFB17B48FFFFFFFFFFB17B48FFB17B48FFFFFF
      FFFFB17B48FFB17B48FF00000000000000000000000002020203646464967070
      70F01919191B000000001919191B707070F06464649602020203000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6CB47070
      70FF6D6D6DB7565656756D6D6DB7707070FF6C6C6CB400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003636363F7070
      70FF707070FF707070FF707070FF707070FF3636363F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0FA87B4EED937557C0685C
      507B0B0B0B0C0000000000000000000000000000000000000000000000000B0B
      0B0C685C507B937557C0A87B4EED0E0E0E0F0000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6A6AAB7070
      70FF707070F06A6A6AAB707070F0707070FF6A6A6AAB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0FB17B48FFB17B48FFB17B
      48FFA67A50E7413D394800000000000000000000000000000000413D3948A67A
      50E7B17B48FFB17B48FFB17B48FF0E0E0E0F0000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF2F2F2F36000000002F2F2F36707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E0F3A36333F856E
      58A8B17B48FFAE7A4AF92D2B293000000000000000002D2B2930AE7A4AF9B17B
      48FF856E58A83A36333F0E0E0E0F000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF2F2F2F36000000002F2F2F36707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000006464
      6490757575FF757575F32F2F2F36000000002F2F2F36757575F3757575FF6262
      628D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A685696B17B48FF8A7159B100000000000000008A7159B1B17B48FF7A68
      5696000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868A27070
      70FF707070F06A6A6AAB707070F0707070FF686868A200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006969699F757575FF767676F04848485A757575ED757575FF6969699F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000011111112B17B48FFA97B4DF00000000000000000A97B4DF0B17B48FF0E0E
      0E0F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F367070
      70FF707070FF707070FF707070FF707070FF3131313900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202036C6C6CAB757575FF757575FF757575FF6E6E6EAE020202030000
      0000000000000000000000000000000000000000000000000000000000004F49
      435AAF7B48FCB17B48FFAE7A4AF93E3B37450000000000000000000000000000
      000011111112B17B48FFAC7B4BF60000000000000000AC7B4BF6B17B48FF1111
      1112000000000000000000000000000000003E3B3745AE7A4AF9B17B48FFAF7B
      48FC4F49435A0000000000000000000000000000000000000000696969A57070
      70FF6D6D6DB7565656756D6D6DB7707070FF6A6A6AA82A2A2A306E6E6EBD2323
      2327212121246E6E6EBD2A2A2A30000000000000000000000000000000000000
      0000000000001E1E1E21757575FC757575FF757575FC1E1E1E21000000000000
      00000000000000000000000000000000000000000000000000003C383542AE7A
      4AF9B17B48FFAF7B48FC49433E51000000000000000000000000000000000000
      00007A685696B17B48FF947657C30000000000000000947657C3B17B48FF7A68
      5696000000000000000000000000000000000000000049433E51AF7B48FCB17B
      48FFAE7A4AF93C38354200000000000000000000000005050506696969A57070
      70F31919191B000000001919191B707070F3696969A564646498707070FF6C6C
      6CB46C6C6CB4707070FF64646496000000000000000000000000000000000000
      000013131315757575DB757575FF757575FC757575FF757575DB131313150000
      00000000000000000000000000000000000000000000322F2D36AC7B4BF6B17B
      48FFB17B48FF524B445D000000000000000000000000111111123C383542856E
      58A8B17B48FFB17B48FF433F3A4B0000000000000000433F3A4BB17B48FFB17B
      48FF856E58A83C38354211111112000000000000000000000000524B445DB17B
      48FFB17B48FFAC7B4BF6322F2D36000000000000000000000000000000001313
      1315000000000000000000000000131313150000000011111112707070F37070
      70FF707070FF707070F313131315000000000000000000000000000000000E0E
      0E0F757575D2757575FF757575D21C1C1C1E757575D2757575FF757575D20E0E
      0E0F0000000000000000000000000000000025232227A77B4FEAB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFAE7A4AF9665A4F780000000000000000000000000000000064594E75AE7A
      4AF9B17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFA77B4FEA252322270000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF3131
      31392D2D2D33707070FC707070FF707070FF0000000000000000080808097272
      72C9757575FF757575D8131313150000000013131315757575D8757575FF7272
      72C90808080900000000000000000000000022212024A77B4FEAB17B48FFB17B
      48FFB17B48FFB17B48FFB17B48FFB17B48FFB17B48FFA87B4EED997856CC7665
      5590222120240000000000000000000000000000000000000000000000002221
      202476655590997856CCA87B4EEDB17B48FFB17B48FFB17B48FFB17B48FFB17B
      48FFB17B48FFB17B48FFA67A50E7222120240000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF3333
      333C2D2D2D33707070FC707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A28272DA87B4EEDB17B
      48FFB17B48FF4F49435A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F49435AB17B
      48FFB17B48FFA87B4EED2A28272D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111112707070F37070
      70FF707070FF707070F313131315000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000322F2D36AB7B
      4CF3B17B48FFAE7A4AF93734313C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003734313CAE7A4AF9B17B
      48FFAB7B4CF3322F2D3600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064646496707070FF6C6C
      6CB46C6C6CB4707070FF64646496000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C38
      3542AC7B4BF6B17B48FFA77B4FEA222120240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022212024A77B4FEAB17B48FFAC7B
      4BF63C3835420000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A306E6E6EBD2323
      2327212121246E6E6EBD2A2A2A30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B17B48FF8E7358B734322F3900000000000000000000
      0000000000000000000000000000000000000000000000000000707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B566281AB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FF00000000000000006B566281AB5789FFAB57
      89FFAB5789FF00000000846D58A5B17B48FFA27A53DE050505060B0B0B0CB27B
      9CEBAB5789FFAB5789FFAB5789FF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF4D575C600000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFFFFFFFFFAB5789FFAB5789FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFF000000002D2B29309E7854D8050505066C5F52817263548A0909
      0909B2789AEFAB5789FFAB5789FF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF708B9BA50000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFFFFFFFFFAB5789FFAB5789FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFF4E4E4E4E00000000000000006C5F5281B17B48FFB17B48FF7867
      569316161617B3749AF4AB5789FF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFF9ED0EFFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF7FB2D2E40000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFF9F9F9F9545454540000000076655590B17B48FFB17B48FFB17B
      48FF7C6957991C1B1C1DB27198F6000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFD3E9F8FF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF2628292A00000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFFFFFFFFFFFFFFFFFFCFCFCFC60606060000000007E6A579CB17B48FFB17B
      48FFB17B48FF7F6B589F2928282B000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFFCFEFFFF8EC8ECFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF535D646900000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FF8C7883A302020203856E58A8B17B
      48FFB17B48FF866F58AB11111112020202030000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFFFFFFFFFC1E1F5FF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF7290A3AE00000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FF977D8DB4050505068A71
      59B1866F58AB141413159B7856CF856E58A80000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFFFFFFFFFF3F9FDFF85C3
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF7FB5D6EA00000000AB5789FFAB5789FFD3A7
      C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD8B3C9FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFD3A7
      C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E7E0505
      0506141413159B7856CFB17B48FFA97B4DF00000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFFFFFFFFFFFFFFFFFCDE7
      F7FF85C3EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF7494A8B400000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A
      8A8A08080809967657C6AF7B48FC5B5249690000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF00000000000000000000000082C2EAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF82C2EAFF000000000000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF96969696554F535C554F535C000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF7070
      70FF707070FF00000000000000000000000082C2EAFFD6EBF8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF82C2EAFF000000000000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFF7777
      77F14B4B4B600000000000000000000000004F595F6382BFE5FB82C2EAFF82C2
      EAFF82C2EAFF82C2EAFF82C2EAFF82C2EAFFA4CFEBFBFEFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF82C2EAFF000000000000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF777777F14949
      495D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000808080981A7BFCCB1D5EBF9FFFFFFFFFFFF
      FFFFFFFFFFFF82C2EAFF000000000000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB5789FFAB5789FF000000000000000000000000707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF4848485A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0F7FACC7D782C2EAFF82C2
      EAFF82C2EAFF7B97A9B3000000000000000000000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FF0000000000000000AB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB5789FFAB57
      89FFAB5789FFAB5789FFAB5789FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100100000100010000000000800800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFC007C007FFFFFFFF
      C007C007F803F803E3F3E3F3F8FBF8FBF1FBF1FBC47FC47FF8FFF8FFC63FC63F
      FC7FFC7FE33FE33FFC7FFC7FF23FF23FFC7FFC7FFC7FFC7FF8FFF8E6F8FBF8E6
      F1FFF1C0E803E840E3F3E3C1CFFFCFC1C3E7C388C01FC088C007C041FFFFFFC1
      FFFFFFC0FFFFFFC0FFFFFFE7FFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFF80010000
      FFFF800080010000FF07800080010000FF0F800080010000F00F800080010000
      F08F800080010000F88F800080010000F88FA00080010000F88F800080010000
      F803000080010000F801040080010000C03F040080010000C01F570080010000
      FFFF9F808001FFFFFFFF1FFFFFFFFFFFF1F8FFFFFFFFFFFFF000FFFFFFFFFFFF
      F0008003FFFFFFFFF80180030000FFFFF80180030000FFFF180180030000E007
      080180030000FFFF180180030000FFFF9000800300008001900080030000FFFF
      91F880030000FFFF9E1F80030000E007801F80030000FFFF000F80030000FFFF
      000FFFFFFFFFFFFF1F8FFFFFFFFFFFFFFFFFFFFFE3FFEFE7EEEFEEEFCFFFCDB3
      EEEFEEEFCFFF9DBB80038003C8019009EEEFEEEFCFFF9DB9EEEFEEEFCFFFBDB9
      80038003C8012005EEEFEEEF8FFF3DBCEEEFEEEF1FFF3DBC8003800388012005
      EEEFEEEFCFFFBDB9EEEFEEEFCFFF9DB980038003C8019009EEEFEEEFCFFF9DBB
      EEEFEEEFCFFFCDB3FFFFFFFFE3FFEFE7FFFFC000C000F87FFFFFC000C000F03F
      C003C000C000E01FC003C000C000C00FC003C000C0008007C003C000C0000003
      C003C000C0000001C003C000C0000000C003000000000000C003000000008000
      C00300000000C000C00300000000E001C00300000000F003C00300010001F807
      FFFFC003C003FC0FFFFFC007C007FE1FF00F0000FFFFFFFFE0070000E000FFFF
      80010000E000F3FF80010000E000F1FF00000000E000F07F000000006000F03F
      000000002000F01F000000001FFFF00F000000000FFFF00F000000001FFFF01F
      000000002000F03F000000006000F07F80010000E000F1FF80010000E000F3FF
      E0070000E000FFFFF00F0000E000FFFF0000FFFF0000FE7F000000000000F07F
      00007FFE0000C00300007FFE0000C00300007FFE0000800700007FFE00008007
      00007FFE0000800700007FFE0000800700007FFE0000800300007FFE00008001
      00007FFE0000800100007FFE00008008000000000000001C000000000000801E
      000000000000F03F0000FFFF0000FE3F8FFFFFFFFC000000EFFF87FFFC000000
      DC018403FC0000008FFF87FFFC000000FFFFFFFFE0000000FFFFFFFFE0000000
      8FFFFFFFE0000000DFFF87FFE0000000EC018403000700008FFF87FF00070000
      FFFFFFFF00070000FFFFFFFF000700008FFFFFFF003F0000DFFF87FF003F0000
      9C018403003F00009FFF87FF003F00008000F1FFFFFFFFFF8000F11F8FFF8FFF
      8818C00784038403880880038FFF8FFF8C080003FFFFFFFF80000001FFFFFFFF
      00000001FFFFFFFF0FFF00018FFF8FFF000F000184038403000F00018FFF8FFF
      000F0009FFFFFFFF000F0001FFFFFFFF000F0003FFFFFFFF000F80038FFF8FFF
      801FC00784038403C03FF01F8FFF8FFFFFFF8000800080000000800080008000
      0000881888188818000088088808880800008C088C088C080000800080008000
      000000008000800000000FFFFFFFFFFF0000000FFE00FE000000000FFE00FE00
      0000000FC20086000000000FE0000E000000000F000000000000000F00000000
      0000801FE0000E00FFFFC03FC2008600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF801FE007F8018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8001800180018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FE007F8018001
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001800180018001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F
      FFFFFFFFE007C007FFFFFFFFFFFF80038661E21FFF8F0001C243E23FFF8F0001
      E007E03FF88F0001E007E07FF00F0001F00FF07FF00F0101F00FF07FF10F0101
      E007F03FF38F0101C243F11FF38F01018661F18FF38F0103FFFFFFFFFFFF8103
      FFFFFFFFFFFFC107FFFFFFFFFFFFE11FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEDFFFFFFFFFE007FEDF3C018661FFFFFEDF1C11C243FFFFFEDF
      1C89E0078001FEDF8081E007FFFFF0DF89F9F00FFFFFE0DFC991F00FE007E0DF
      C181E007FFFFC0DFC3FFC243FFFFE0DFE3FF86618001E04FFFFFFFFFFFFFF007
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFF18181FC018100FF91
      8181FC018100FF819999FC018100FF81999904018100FF838181000181000080
      8001000181000080F81F000181010081F81F000181030083FC3F000181FF0083
      F81F000380030083F00F00078FE30083F00F03FF901300C3E18700FF90130003
      E3C701FFFD7F0003E7E7FFFFFC7F0003843FFFFFFFFFFFFFC07FFFFFFFFFFFFF
      C07FFFFFFF07E0FFC07FFFFFFF03C0FF041FFFFFFF8181FF041FE10FFFF18FFF
      C07FF01FFFF18FFFC07FF01FE0F18F07C001F83FC1F18F838401F01F838181C1
      EE81E00F0003C000FF00C1070007E000FF00FFFF83FFFFC1FF81FFFFC1FFFF83
      FF81FFFFE0FFFF07FF81FFFFFFFFFFFFFFFFFFFFFFFFFC7FC007FFFF80018401
      C007000180018401C007000180018301C007000180018101C007000080018081
      C007000080018000C007000080018000C007000080018000C007000080018000
      C007000380018001C007000380018001C007000380018001C00FFE0380018001
      C01FFF0380018001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object il_16x16_d: TImageList
    ColorDepth = cd32Bit
    Left = 504
    Top = 176
    Bitmap = {
      494C01013B00C801C40110001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030303040000000FF000000FF0000
      00FF0B0B0B0C00000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000202020261F1F1FDA1F1F1FDA3030
      30400000000000000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C40C0C0C0FFC0C0C0FFC0C0C0FF0B0B0B0C373737AE373737AE2828
      28330000000000000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024242426ABABABDAABABABDA3C3C3C4000000000373737AE373737AE2828
      28330000000000000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      28330000000000000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      283300000000000000000000000000000000000000001D1D1D1E000000001D1D
      1D1EB1B1B1DEC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090AE909090AE3030303300000000373737AE373737AE2828
      283300000000000000000000000000000000000000003434343C717171FF3434
      343C1D1D1D1EB1B1B1DEC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090AE777777C2444444A2000000FF2D2D2DC3373737AE0000
      00FF3E3E3E8B3E3E3E6B00000000000000003434343C717171FF717171FF7171
      71FF3434343C1D1D1D1EC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FF707070FF7070
      70FF707070FF6F6F6FFF707070FF707070FF6F6F6FFF707070FF707070FF6F6F
      6FFF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090AE3B3B3BE5000000FF000000FF000000FF000000FF0000
      00FF000000FF1F1F1FDA2828283300000000717171FF717171FF717171FF7171
      71FF717171FF00000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C407777
      778BC0C0C0FF9E9E9EC3909090AEC0C0C0FF7777778B6060606B000000000000
      000000000000000000000000000000000000717171FF2D2D2D33717171FF2D2D
      2D33717171FF00000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090AEC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFABABABDA303030330000
      0000000000000000000000000000000000002121212400000000717171FF0000
      00002121212400000000000000000000000025252527B7B7B7E7E4E4E4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF727272DE0000
      0000000000000000000000000000000000000000000025252527B7B7B7E7C6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FF707070FF7070
      70FF707070FF6F6F6FFF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171E7727272EA3C3C3C480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FF000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FF808080FF808080FF808080FF808080FF8080
      80FF808080FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF707070FF00000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FF707070FF707070FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF747474FFD6D6D6FFD4D4D4FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FF676767FF0000000000000000FFFFFFFF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7474
      74FFD6D6D6FFD4D4D4FF747474FFFFFFFFFF0000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FF707070FF707070FF8080
      80FF00000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF747474FFD6D6
      D6FFD4D4D4FF747474FF717171FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF0000000000000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFBEBEBEFF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF747474FFD6D6D6FFD4D4
      D4FF747474FF717171FF838383FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF707070FF00000000676767FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FF676767FF0000000000000000FFFFFFFFFFFFFFFFC7C7C7FF7171
      71FF717171FF717171FF717171FF717171FF747474FFD6D6D6FFD6D6D6FF7474
      74FF717171FF838383FFEEEEEEFFFFFFFFFF00000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FF808080FF808080FF808080FF808080FF8080
      80FF808080FF707070FF707070FF707070FF00000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFCDCD
      CDFF747474FF717171FF717171FF747474FFD6D6D6FFFFFFFFFFE9E9E9FF8383
      83FF858585FFEEEEEEFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000707070FF707070FF707070FF000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF00000000676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFF
      FFFFFFFFFFFF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFD4D4D4FF767676FF767676FFD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FFFFFFFFFF0000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF808080FF0000
      00000000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF00000000000000000000000000000000808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0000
      00000000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCCCCCCFFCCCCCCFFEFEF
      EFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF7070
      70FF0000000000000000000000000000000000000000676767FF676767FF6767
      67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFC6C6C6FFC6C6C6FFCCCC
      CCFFFFFFFFFF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF8080
      80FF808080FF808080FF808080FF808080FF808080FF707070FF707070FF7070
      70FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF0000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      28323F3F3F761D1D1D2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003F3F
      3F76000000000000000000000000000000000000000000000000000000000000
      00003F3F3F760000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131442828
      28CD000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3D661D1D
      1D22000000000000000000000000000000000000000000000000000000000000
      00001D1D1D223F3F3F8900000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1D1D223F3F3F760000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      0000000000003F3F3F8928282832000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C3C3C990F0F0F100000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      0000000000000F0F0F10383838AB00000000000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF00000000000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000313131BB000000009F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF00000000282828CD000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3D3D
      3D66000000009F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF00000000282828323C3C3C99000000000000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      000000000000000000003C3C3C99282828320000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3838
      3854000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838543F3F3F89000000000000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      000000000000000000003F3F3F8938383854000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF00000000000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF00000000000000001D1D1D221D1D1DDD0F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F763F3F3F76000000009F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF000000003F3F3F763F3F3F760000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000003D3D3D661D1D1DDD1D1D1D220000
      0000000000009F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF000000003D3D3D663F3F3F76000000000000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      000000000000000000003F3F3F763D3D3D660000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF000000000000000000000000000000000F0F0F101D1D1DDD0F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838543F3F3F89000000000000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      000000000000000000003F3F3F8938383854000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF00000000000000009F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF000000000000000000000000383838AB3838
      3854000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F10313131BB000000009F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF00000000313131BB0F0F0F100000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3D3D
      3D66000000009F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF0000000000000000313131BB000000000000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00000000000000000000313131BB000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000000000009F9F
      9FFF00000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      00009F9F9FFF0000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F76313131440000
      000000000000000000009F9F9FFF00000000000000009F9F9FFF000000000000
      000000000000313131443F3F3F76000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000383838AB3D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000383838AB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C9900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3D663131
      31BB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282828323D3D
      3D66000000000000000000000000000000000000000000000000000000000000
      00003D3D3D661D1D1D2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      31443F3F3F762828283200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D22000000000000000000000000000000000000000000000000000000000000
      00001D1D1D220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373803535
      354D3535354D3535354D3535354D3535354D3535354D3535354D3535354D3535
      354D3535354D3535354D3535354D3535354D0000000000000000737373803535
      354D3535354D3535354D3535354D3535354D3535354D3535354D3535354D3535
      354D3535354D3535354D3535354D3535354D0000000000000000000000000000
      0000000000001818181B0D0D0D0E272727301C1C1C2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380F1F1
      F1FFF1F1F1FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2
      F2FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FF000000000000000073737380F1F1
      F1FFF1F1F1FFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2
      F2FFEAEAEAFF8B8B8BFFB0B0B0FFF5F5F5FF0000000000000000000000000000
      00001C1C1C203F3F3FB44545458545454581414141A915151518000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380F0F0
      F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
      F1FFF2F2F2FFF2F2F2FFF3F3F3FFF4F4F4FF000000000000000073737380F0F0
      F0FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFE8E8
      E8FF8A8A8AFF707070FF888888FFF4F4F4FF0000000000000000000000001414
      1416414141AB1B1B1BF8202020F04444448D424242A5434343A2121212140000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380EFEF
      EFFFEEEEEEFFEEEEEEFF909090FFA2A2A2FFEEEEEEFFEFEFEFFFEFEFEFFFF0F0
      F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FF000000000000000073737380EFEF
      EFFFEEEEEEFFEEEEEEFF909090FF919191FF838383FF6D6D6DFF858585FF8686
      86FF707070FF898989FFE7E7E7FFF3F3F3FF00000000000000000E0E0E0F4343
      439B1D1D1DF51C1C1CF61C1C1CF6232323EC45454587414141AB4343439A0F0F
      0F10000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380EDED
      EDFFEDEDEDFFEDEDEDFFBABABAFF828282FFB5B5B5FFEEEEEEFFEEEEEEFFD3D3
      D3FFBDBDBDFFF0F0F0FFF1F1F1FFF2F2F2FF000000000000000073737380EDED
      EDFFEDEDEDFFEDEDEDFFA2A2A2FF6B6B6BFFADADADFFD5D5D5FFB1B1B1FF6C6C
      6CFF7C7C7CFFF0F0F0FFF1F1F1FFF2F2F2FF0000000008080809454545834343
      43A0444444982E2E2EDB1C1C1CF61C1C1CF6262626E9454545823F3F3FB14444
      44910B0B0B0C0000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380ECEC
      ECFFECECECFFECECECFFECECECFFE4E4E4FF7B7B7BFFBFBFBFFF9B9B9BFF9292
      92FF939393FFF0F0F0FFF0F0F0FFF1F1F1FF000000000000000073737380ECEC
      ECFFECECECFFECECECFF858585FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFACAC
      ACFF747474FFF0F0F0FFF0F0F0FFF1F1F1FF04040405444444793B3B3BBF4444
      4492303030D7383838C51F1F1FF21D1D1DF51B1B1BF7282828E54444447E3D3D
      3DB6454545870808080900000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380EBEB
      EBFFEBEBEBFFEAEAEAFFEAEAEAFFEBEBEBFFC2C2C2FF9C9C9CFFD2D2D2FFEDED
      EDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FF000000000000000073737380EBEB
      EBFFEBEBEBFFEAEAEAFF737373FFD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
      D8FF737373FFEFEFEFFFF0F0F0FFF1F1F1FF43434374232323EC2F2F2FD94343
      439E262626E9333333D1434343A0232323EC1D1D1DF51B1B1BF72B2B2BE04444
      447C3D3D3DBB4444447E05050506000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000000000000073737380EAEA
      EAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE6E6E6FF878787FFEBEBEBFFECEC
      ECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FF000000000000000073737380EAEA
      EAFFEAEAEAFFE9E9E9FF848484FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
      B0FF858585FFEEEEEEFFEFEFEFFFF0F0F0FF424242A41D1D1DF51C1C1CF63232
      32D44343439B434343773D3D3DB64343439F1D1D1DF41C1C1CF61B1B1BF72D2D
      2DDC4444447A3B3B3BBF43434373040404050000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000080808090C0C0C0D72727286DDDD
      DDFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFBABABAFF868686FFE2E2E2FFEBEB
      EBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFF080808090C0C0C0D71717186DDDD
      DDFFDCDCDCFFDCDCDCFFB9B9B9FF6C6C6CFFADADADFFD5D5D5FFB1B1B1FF6C6C
      6CFFC2C2C2FFEDEDEDFFEEEEEEFFEFEFEFFF131313154444449B1C1C1CF61B1B
      1BF8333333D244444499424242A64141416D4444448E303030D71B1B1BF71B1B
      1BF8313131D64444447B3A3A3AC1434343780000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000001919191D202020266F6F6F93C5C5
      C5FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFA1A1A1FF848484FFDCDCDCFFEAEA
      EAFFEBEBEBFFECECECFFEEEEEEFFEFEFEFFF1919191D202020266F6F6F93C5C5
      C5FFC4C4C4FFC4C4C4FFD1D1D1FFA8A8A8FF767676FF707070FF838383FFC1C1
      C1FFF0F0F0FFECECECFFEEEEEEFFEFEFEFFF00000000111111134444449D1C1C
      1CF61B1B1BF7242424EB454545874444447945454581414141AB262626E71D1D
      1DF41A1A1AF94444449344444490424242A60000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000525252FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF535353FFDCDCDCFFEAEA
      EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFF525252FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF535353FFDCDCDCFFEAEA
      EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFF0000000000000000121212144343
      439E1C1C1CF61C1C1CF6232323EC393939C44040406645454585434343732323
      23EC3E3E3EB54444447F44444493151515180000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000535353FF535353FF535353FF5353
      53FF535353FF535353FF535353FF535353FF535353FF535353FFDCDCDCFFE9E9
      E9FFEAEAEAFFEBEBEBFFEDEDEDFFEEEEEEFF535353FF535353FF535353FF5353
      53FF535353FF535353FF535353FF535353FF535353FF535353FFDCDCDCFFE9E9
      E9FFEAEAEAFFEBEBEBFFEDEDEDFFEEEEEEFF0000000000000000000000001212
      1214434343A01C1C1CF61B1B1BF7292929E33B3B3BBF4444448E3C3C3CBD3C3C
      3CBE4444447A4343439B1919191C000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000565656FF565656FF565656FF5656
      56FF565656FF565656FF565656FF565656FF565656FF565656FFDEDEDEFFE9E9
      E9FFAAAAAAFFAAAAAAFFAAAAAAFFA8A8A8DA565656FF565656FF565656FF5656
      56FF565656FF565656FF565656FF565656FF565656FF565656FFDEDEDEFFE9E9
      E9FFAAAAAAFFAAAAAAFFAAAAAAFFA8A8A8DA0000000000000000000000000000
      000013131315434343A11C1C1CF61B1B1BF7202020F0333333D2383838C54343
      43784343439F1F1F1F2400000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FFE4E4E4FFE8E8
      E8FFAAAAAAFFAAAAAAFFA7A7A7D900000000585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FFE4E4E4FFE8E8
      E8FFAAAAAAFFAAAAAAFFA5A5A5D9000000000000000000000000000000000000
      00000000000013131315434343A21C1C1CF61A1A1AF9333333D1434343774343
      43A22424242C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380E6E6
      E6FFE5E5E5FFE4E4E4FFE3E3E3FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFAAAAAAFFA8A8A8DA0000000000000000000000000000000073737380E6E6
      E6FFE5E5E5FFE4E4E4FFE3E3E3FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFAAAAAAFFA8A8A8DA00000000000000000000000000000000000000000000
      0000000000000000000014141416434343A3323232D43D3D3D5D444444992A2A
      2A35000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073737380E7E7
      E7FFE6E6E6FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE6E6E6FFE8E8E8FFE9E9
      E9FFA8A8A8DA000000000000000000000000000000000000000073737380E7E7
      E7FFE6E6E6FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE6E6E6FFE8E8E8FFE9E9
      E9FFA8A8A8DA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001818181B2C2C2C380C0C0C0D1E1E1E230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000232323276161618D727272CF717171FF717171FF727272CF6161618D2323
      23270000000000000000000000000000000002020203000000003939393D6C6C
      6CC63D3D3D6400000000404040438B8B8BD23535354A00000000929292A47676
      76AA111111130000000002020203030303040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5572717171F6717171FF717171FF717171FF717171FF717171FF717171FF7171
      71F6555555720000000000000000000000000000000000000000989898A4DBDB
      DBFF232323F93A3A3A59AFAFAFB2FCFCFCFF5E5E5EE4838383A4FFFFFFFFE4E4
      E4FF747474CA2A2A2A3000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505066E6E6EB77171
      71FF717171FF717171FF717171FFFFFFFFFFFFFFFFFF717171FF717171FF7171
      71FF717171FF6E6E6EB705050506000000000000000025252526CBCBCBECE9E9
      E9FFB5B5B5FF3C3C3CFFC5C5C5FCF7F7F7FBDCDCDCFF8B8B8BFFC3C3C3FDF9F9
      F9FAE4E4E4FF949494F15757577A0D0D0D0E0000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00008C8C8CD82C2C2C3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636393717171FF7171
      71FF717171FF717171FF717171FFFFFFFFFFFFFFFFFF717171FF717171FF7171
      71FF717171FF717171FF6262629000000000000000006565656CE8E8E8FFD9D9
      D9FDE1E1E1FDB2B2B2FF545454FFD1D1D1FFF7F7F7FDDADADAFC7A7A7AFFC6C6
      C6FFFAFAFAFBF5F5F5FFC9C9C9FF7C7C7CC10000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000969696FF939393F656565669000000000000000000000000000000000000
      0000000000000000000000000000000000002828282D717171FC717171FF7171
      71FF717171FF717171FF717171FF8F8F8FFF8F8F8FFF717171FF717171FF7171
      71FF717171FF717171FF717171FC2828282D00000000A3A3A3B6EBEBEBFFD5D5
      D5FADBDBDBFFE3E3E3FDA6A6A6FE6B6B6BFFE1E1E1FFFBFBFBFFC2C2C2FF7373
      73FFF4F4F4FFF7F7F7F7EEEEEEFF878787E20000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000969696FF969696FF969696FF7A7A7AAB0B0B0B0C00000000000000000000
      00000000000000000000000000000000000063636393717171FF717171FF7171
      71FF717171FF717171FF8F8F8FFFFFFFFFFFD7D7D7FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6262629023232324CECECEEDE2E2E2FFD9D9
      D9FCD9D9D9FFE3E3E3FFBDBDBDFF585858FFDEDEDEFFF8F8F8FFADADADFF9E9E
      9EFFFCFCFCFFFBFBFBFCD6D6D6FF5B5B5B822121212400000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000969696FF969696FF969696FF969696FF8E8E8EDE2929292D000000000000
      000000000000000000000000000000000000727272DB717171FF717171FF7171
      71FF717171FF717171FF808080FFFDFDFDFFF3F3F3FF838383FF717171FF7171
      71FF717171FF717171FF717171FF717171D552525257E4E4E4FFDBDBDBFFDADA
      DAFEDCDCDCFFDFDFDFFF838383FF959595FFF7F7F7FFE7E7E7FF777777FFD2D2
      D2FFFCFCFCFCF9F9F9FFA6A6A6FA3030303A717171ED3636363F000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000969696FF969696FF969696FF969696FF969696FF939393F33F3F3F480000
      000000000000000000000000000000000000707070F9717171FF717171FF7171
      71FF717171FF717171FF717171FFBDBDBDFFFFFFFFFFEBEBEBFF828282FF7171
      71FF717171FF717171FF717171FF717171F37F7F7F8AEBEBEBFFD7D7D7FBDADA
      DAFFE0E0E0FFCCCCCCFF505050FFCACACAFFFBFBFBFFC1C1C1FF868686FFF4F4
      F4FFF9F9F9FAECECECFF7B7B7BBF04040405717171FF707070F94B4B4B600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000969696FF969696FF969696FF969696FF969696FF969696FF949494FC5858
      586C00000000000000000000000000000000707070F9717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FFC7C7C7FFFFFFFFFFE9E9E9FF8080
      80FF717171FF717171FF717171FF717171F0A1A1A1B4EAEAEAFFD7D7D7FBDADA
      DAFFE3E3E3FFA1A1A1FF6D6D6DFFEDEDEDFFF2F2F2FF909090FFBABABAFFFDFD
      FDFEFDFDFDFFC8C8C8FF5050507000000000717171FF717171FF717171FF2F2F
      2F36000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000969696FF969696FF969696FF969696FF969696FF969696FF949494FC5858
      586C00000000000000000000000000000000717171D8717171FF717171FF7171
      71FF717171FF8C8C8CFF717171FF717171FF717171FFCCCCCCFFFFFFFFFFBEBE
      BEFF717171FF717171FF717171FF717171D5B9B9B9CFE6E6E6FFD7D7D7FCDDDD
      DDFFDADADAFF626262FFADADADFFFAFAFAFFD6D6D6FF767676FFE5E5E5FFFAFA
      FAFBF6F6F6FF969696E82121212500000000717171FF707070F94B4B4B600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000969696FF969696FF969696FF969696FF969696FF939393F33F3F3F480000
      00000000000000000000000000000000000062626290717171FF717171FF7373
      73FFF5F5F5FFFFFFFFFF8F8F8FFF717171FF717171FFB1B1B1FFFFFFFFFFC7C7
      C7FF717171FF717171FF717171FF6161618DC3C3C3EFE4E4E4FFD7D7D7FEE2E2
      E2FFBBBBBBFF4B4B4BFFDBDBDBFFF8F8F8FFAAAAAAFE9E9E9EFFFCFCFCFFFBFB
      FBFCDEDEDEFF696969A30000000000000000717171ED3636363F000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000969696FF969696FF969696FF969696FF8D8D8DDB2929292D000000000000
      0000000000000000000000000000000000002828282D717171FC717171FF7171
      71FFBBBBBBFFFFFFFFFFECECECFFAEAEAEFFB8B8B8FFF8F8F8FFFBFBFBFF8F8F
      8FFF717171FF717171FF717171FC2626262A686868FFCCCCCCFFE0E0E0FDE1E1
      E1FF848484FE8F8F8FFDF7F7F7FFE7E7E7FF808080FFD3D3D3FDFCFCFCFCFAFA
      FAFFADADADFF3C3C3C4B00000000050505062121212400000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000969696FF969696FF969696FF767676A20B0B0B0C00000000000000000000
      0000000000000000000000000000000000000000000062626290717171FF7171
      71FF737373FFBBBBBBFFFDFDFDFFFFFFFFFFFFFFFFFFF0F0F0FF9A9A9AFF7171
      71FF717171FF717171FF6161618D000000003E3E3E9C5D5D5DFFD0D0D0FFD3D3
      D3FB414141FF868686FFEDEDEDFDCECECEFD4A4A4AFFCACACAFFF8F8F8F9EAEA
      EAFF7B7B7BCA0404040500000000010101020000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000969696FF939393F350505060000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505066E6E6EB77171
      71FF717171FF717171FF7D7D7DFF9A9A9AFF8F8F8FFF717171FF717171FF7171
      71FF717171FF6E6E6EB70505050600000000000000003E3E3E98707070FF9999
      99FF414141D44A4A4AC19F9F9FFF9A9A9AFF565656A1787878C2D2D2D2FFBDBD
      BDFF5252526E0000000003030304000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000888888CC2424242700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5572717171F6717171FF717171FF717171FF717171FF717171FF717171FF7171
      71F65555557200000000000000000000000000000000000000004040408D1414
      14FF4A4A4A7D00000000515151C9464646FF1A1A1A1D0B0B0B0C7D7D7DE08686
      86EE131313140000000002020203000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000232323276161618D717171CC717171FC717171FC717171CC6161618D2323
      2327000000000000000000000000000000000404040500000000000000004A4A
      4A772B2B2B35000000001D1D1D204A4A4A6308080809000000002A2A2A2E4A4A
      4A59000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1AFF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF0000000000000000000000000000
      00000000000000000000000000005A5A5A671313131400000000000000000000
      000000000000000000000000000000000000707070FFE2E2E2E6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF1A1A1AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFF0000000000000000000000000000
      00003232323E5E5E5EFF666666F3767676CF797979BC00000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD1D1D1FF474747FF747474FF747474FFA4A4A4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFF00000000000000001717171A6565
      65BD505050EF303030FF282828FF3F3F3FFF0A0A0AFF353535FF6B6B6BE86060
      60973B3B3B49020202030000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFFFFFFFFFF8F8
      F8FF747474FFD1D1D1FF474747FFFFFFFFFFFFFFFFFFA4A4A4FFA4A4A4FFFFFF
      FFFFD1D1D1FF747474FFFFFFFFFF1A1A1AFF0000000000000000A8A8A8FF8D8D
      8DFF6C6C6CFF5B5B5BFE636363FF525252FF474747FE000000FE2B2B2BFF3E3E
      3EFF686868FF1E1E1E200000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFFFFFFFFFF8F8
      F8FF474747FFD1D1D1FF474747FF747474FF747474FFC3C3C3FF474747FFD1D1
      D1FF474747FFD1D1D1FFFFFFFFFF1A1A1AFF000000000E0E0E0FC7C7C7FFC8C8
      C8FEBABABAFFCFCFCFFFA9A9A9FF858585FF636363FF2A2A2AFF050505FF5959
      59FF666666FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFFFFFFFFFF8F8
      F8FF474747FFD1D1D1FF474747FFEAEAEAFFEAEAEAFFF8F8F8FFE4E4E4FF4747
      47FFA4A4A4FFFFFFFFFFFFFFFFFF1A1A1AFF0000000033333337CCCCCCFF8484
      84FF333333FF404040FF656565FFA1A1A1FFD8D8D8FFC2C2C2FF000000FF4A4A
      4AFF808080B7000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFFFFFFFFFF8F8
      F8FF474747FFD1D1D1FF474747FF747474FF747474FFA4A4A4FFA4A4A4FF4747
      47FF474747FFFFFFFFFFFFFFFFFF1A1A1AFF000000005454545FCBCBCBFF9494
      94FF4E4E4EFF2F2F2FFF404040FF3D3D3DFF393939FFE2E2E2FF7C7C7CFF0000
      00FF5656567A000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFFA4A4A4FFA4A4
      A4FF474747FFA4A4A4FFA4A4A4FFF8F8F8FFF8F8F8FFD1D1D1FF474747FFF1F1
      F1FF747474FFA4A4A4FFFFFFFFFF1A1A1AFF0000000074747487C9C9C9FFCCCC
      CCFFCCCCCCFF151515FF575757FF656565FFA9A9A9FFDCDCDCFFC6C6C6FF9494
      94FF313131FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFF747474FFA4A4
      A4FFA4A4A4FFA4A4A4FFA4A4A4FFF8F8F8FFC3C3C3FFC3C3C3FFA4A4A4FFFFFF
      FFFFF1F1F1FF747474FFFFFFFFFF1A1A1AFF00000000939393B0CACACAFFCECE
      CEFFA3A3A3FF171717FF929292FFE2E2E2FFDADADAFFDEDEDEFFBEBEBEFE6B6B
      6BFF000000FF414141A10000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFF474747FFFFFF
      FFFFFFFFFFFFFFFFFFFF474747FFEAEAEAFF474747FFA4A4A4FF747474FFF8F8
      F8FF474747FFA4A4A4FFFFFFFFFF1A1A1AFF00000000737373D7808080FFD6D6
      D6FF878787FF1E1E1EFFBABABAFFE0E0E0FFE3E3E3FFE8E8E8FFADADADFF8080
      80C2A2A2A2EC000000FF1010101200000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFF474747FFF1F1
      F1FF474747FFF1F1F1FF474747FFEAEAEAFF474747FFA4A4A4FF747474FF4747
      47FFA4A4A4FFFFFFFFFFFFFFFFFF1A1A1AFF00000000616161FFB6B6B6FFE5E5
      E5FF6E6E6EFF3D3D3DFFD0D0D0FFEAEAEAFFEDEDEDFFFCFCFCFF949494FF6262
      627E21212125616161FF353535B100000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF1A1A1AFFFFFFFFFF474747FF7474
      74FF747474FF747474FF474747FFEAEAEAFF474747FFA4A4A4FF474747FF4747
      47FFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFF00000000606060FF7D7D7DFE6767
      67FF595959FF5A5A5AFFE7E7E7FFFEFEFEFF6B6B6BFFB0B0B0FE8E8E8EFF2828
      282C00000000696969801E1E1EFF0B0B0B0C707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF1A1A1AFFFFFFFFFF474747FF4747
      47FFFFFFFFFF747474FF474747FFF1F1F1FFA4A4A4FFA4A4A4FF747474FFA4A4
      A4FF747474FFFFFFFFFFFFFFFFFF1A1A1AFF272727299B9B9BFF565656FF4646
      46FF424242FE878787FF6C6C6CFF8D8D8DFF787878FED6D6D6FF7E7E7EC50000
      000000000000000000005E5E5ECD3D3D3D97717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF1A1A1AFFFFFFFFFF474747FFD1D1
      D1FFFFFFFFFFD1D1D1FF474747FFEAEAEAFF747474FFD1D1D1FFA4A4A4FFFFFF
      FFFFA4A4A4FFA4A4A4FFFFFFFFFF1A1A1AFF00000000272727298787878ECDCD
      CDF3D2D2D2FFA1A1A1FF555555FF777777FEBCBCBCFEC3C3C3FF141414160000
      000000000000000000000000000028282832717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF1A1A1AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFF0000000000000000000000000000
      00002020202184848485EAEAEAEAEEEEEEFFEEEEEEFF818181A6000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1AFF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF0000000000000000000000000000
      0000000000000000000000000000171717188787878A0A0A0A0B000000000000
      00000000000000000000000000000000000000000000717171FF717171FF5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFE6E6E6E6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000717171FF0000
      00000000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000727272EA717171FF7171
      71FF6D6D6DF900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF00000000717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FFFFFFFFFFFFFFFFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000007171
      71FF0000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000727272EA717171FF7171
      71FF6D6D6DF900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FF7070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF00000000717171FF717171FF5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF00000000717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000717171FF717171FF0000
      00000000000000000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF676767FF0000000000000000727272EA717171FF7171
      71FF6D6D6DF900000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000058585878717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC7070
      70FE5F5F5F870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000005050506696969A27171
      71FF717171FF717171FF717171F03636363F717171F6717171FF717171FF7171
      71FF717171FF717171FF696969A2050505060000000000000000000000000000
      0000707070F95858587816161618000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005D5D5D84717171FF7171
      71FF717171FF717171F658585878717171F6717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF5D5D5D840000000000000000000000000000
      00005C5C5C81717171FF717171F30000000023232327696969A5444444540000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000727272DE717171FF5858
      5878000000003434343C717171F6717171FF717171ED44444454444444540000
      00000000000058585878717171FF727272DB0000000000000000131313155C5C
      5C8123232327717171F6020202036E6E6EB75252526C2C2C2C32737373D46B6B
      6BAE1313131500000000000000000000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000717171FF717171FF0B0B
      0B0C000000004B4B4B60717171FF737373E142424251737373E1717171FF4B4B
      4B600000000008080809717171FF707070F90000000021212124717171E28A8A
      8ABF303030300B0B0B0C6E6E6EB7717171FF717171FF5959597B2929292A8282
      82B3717171E2161616180000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000727272DE717171FF5858
      587800000000000000004444445444444454717171ED717171FF717171F63434
      343C0000000058585878717171FF727272DB02020203717171CF767676F7B6B6
      B6FFB0B0B0F44F4F4F5C5F5F5F87717171FF717171FF717171FF5F5F5F872121
      21217F7F7FE56B6B6BAE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5C81717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171F65959597B7171
      71F6717171FF717171FF717171FF5D5D5D844949495D777777D1E8E8E8FFB9B9
      B9FF7A7A7AFF858585FB414141486161618D717171FF717171FF717171FF6363
      639322222223727272C846464657000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505063737373F696969A27171
      71FF717171FF717171FF717171FF717171FF717171F63636363F717171F07171
      71FF717171FF717171FF696969A2050505066C6C6CB49D9D9DC5FFFFFFFFFFFF
      FFFF848484FFEDEDEDFFE4E4E4E42424242462626290717171FF717171FF6A6A
      6AAB111111121919191B5D5D5D84000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000055555571858585F98E8E8E944040
      4044000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171EAD7D7D7E7FFFFFFFFFFFF
      FFFF777777FFF8F8F8FFFFFFFFFFE4E4E4E421212121646464966A6A6AAB1414
      1415727272CF696969A50808080900000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000787878D5A7A7A7FF7A7A7AFF7070
      70FF707070FF707070FF707070FF707070FF707070FF7A7A7AFFA7A7A7FF7878
      78D500000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF7C7C7CFB34343438111111127272
      72CF717171FF717171F0020202030000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF0000000000000000727272FCF7F7F7FFFFFFFFFF7373
      73FFFDFDFDFFFFFFFFFFFFFFFFFFFAFAFAFF737373FFFFFFFFFFF8F8F8FF7373
      73F800000000000000000000000000000000717171EAD7D7D7E7FFFFFFFFFFFF
      FFFF777777FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7DC313131356969
      69A2717171FC2626262A1B1B1B1E00000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000727272FCF7F7F7FFFFFFFFFF7373
      73FFFCFCFCFFFFFFFFFFFFFFFFFFFDFDFDFF737373FFFFFFFFFFF7F7F7FF7272
      72FC000000000000000000000000000000006C6C6CB49D9D9DC5FFFFFFFFFFFF
      FFFF848484FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFF8D8D8DF61818
      1818000000003C3C3C456A6A6AA8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000797979D3AFAFAFFF909090FF7070
      70FF707070FF707070FF707070FF707070FF707070FF8E8E8EFFAFAFAFFF7979
      79D3000000000000000000000000000000004848485A777777D1EBEBEBFFB9B9
      B9FF7A7A7AFF7C7C7CFF707070FF707070FF707070FF7C7C7CFF7A7A7AFFB9B9
      B9FFEBEBEBFF777777D146464657000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005353536E7B7B7BFAF0F0F0FF9B9B
      9BFFD7D7D7FFFFFFFFFFFFFFFFFFD6D6D6FF9B9B9BFFEEEEEEFF787878FB5353
      536E0000000000000000000000000000000002020203717171CC757575F7B6B6
      B6FFB3B3B3FFAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEFFABABABFFB6B6
      B6FF757575F76B6B6BAE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506747474D9B1B1B1FCC5C5
      C5FFA7A7A7FFFFFFFFFFFFFFFFFFA7A7A7FFCCCCCCFFB1B1B1FC747474D90505
      0506000000000000000000000000000000000000000021212124717171E28787
      87BFEBEBEBF97D7D7DFFF8F8F8FFFFFFFFFFF8F8F8FF838383FFE7E7E7FA8787
      87BF707070E4161616180000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919191B757575D78C8C
      8CF5808080FFCBCBCBFFCBCBCBFF808080FF8C8C8CF5757575D71919191B0000
      0000000000000000000000000000000000000000000000000000131313156B6B
      6BAE757575DA8F8F8FE39D9D9DF5F8F8F8FF9B9B9BF68F8F8FE3757575DA6B6B
      6BAE1313131500000000000000000000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF000000000000000000000000727272EA717171FF7070
      70F90202020300000000676767FF676767FF676767FF676767FF676767FF6767
      67FF676767FF676767FF00000000000000000000000000000000050505065252
      526C767676D7707070FE707070FE767676D75252526C05050506000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3E4B64646497707070E7707070FE707070E7646464973E3E3E4B0000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005959597B717171FC5F5F
      5F87000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005050506696969A27171
      71FF717171FF717171FF717171F03636363F717171F6717171FF717171FF7171
      71FF717171FF717171FF696969A2050505060000000005050506696969A27171
      71FF717171FF717171FF717171F03636363F717171F6717171FF717171FF7171
      71FF717171FF717171FF696969A2050505060000000005050506696969A27171
      71FF717171FF717171FF717171F03636363F717171F6717171FF717171FF7171
      71FF717171FF717171FF696969A205050506B3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FF000000005D5D5D84717171FF7171
      71FF717171FF717171F658585878717171F6717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF5D5D5D84000000005D5D5D84717171FF7171
      71FF717171FF717171F658585878717171F6717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF5D5D5D84000000005D5D5D84717171FF7171
      71FF717171FF717171F658585878717171F6717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF5D5D5D84B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF00000000727272DE717171FF5858
      5878000000003434343C717171F6717171FF717171ED44444454444444540000
      00000000000058585878717171FF727272DB00000000727272DE717171FF5858
      5878000000003434343C717171F6717171FF717171ED44444454444444540000
      00000000000058585878717171FF727272DB00000000727272DE717171FF5858
      5878000000003434343C717171F6717171FF717171ED44444454444444540000
      00000000000058585878717171FF727272DBB3B3B3FFFFFFFFFF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FFFFFFFFFFB3B3B3FF00000000717171FF717171FF0B0B
      0B0C000000004B4B4B60717171FF737373E142424251737373E1717171FF4B4B
      4B600000000008080809717171FF707070F900000000717171FF717171FF0B0B
      0B0C000000004B4B4B60717171FF737373E142424251737373E1717171FF4B4B
      4B600000000008080809717171FF707070F900000000717171FF717171FF0B0B
      0B0C000000004B4B4B60717171FF737373E142424251737373E1717171FF4B4B
      4B600000000008080809717171FF707070F9B3B3B3FFFFFFFFFF8F8F8FFF8F8F
      8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
      8FFF8F8F8FFF8F8F8FFFFFFFFFFFB3B3B3FF00000000727272DE717171FF5858
      587800000000000000004444445444444454717171ED717171FF717171F63434
      343C0000000058585878717171FF727272DB00000000727272DE717171FF5656
      567500000000000000004444445444444454717171ED717171FF717171F63434
      343C0000000056565675717171FF727272DB00000000727272DE717171FF5656
      567500000000000000004444445444444454717171ED717171FF717171F63434
      343C0000000056565675717171FF727272DBB3B3B3FFFFFFFFFF929292FF8F8F
      8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
      8FFF8F8F8FFF8F8F8FFFFFFFFFFFB3B3B3FF000000005C5C5C81717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171F65959597B7171
      71F6717171FF717171FF717171FF5D5D5D84000000005C5C5C81717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171F65959597B7171
      71F6717171FF717171FF717171FF5D5D5D84000000005C5C5C81717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171F65959597B7171
      71F6717171FF717171FF717171FF5D5D5D84B3B3B3FFFFFFFFFFEFEFEFFFC5C5
      C5FFAFAFAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF939393FF909090FF8F8F
      8FFF8F8F8FFF8F8F8FFFFFFFFFFFB3B3B3FF050505063737373F696969A27171
      71FF717171FF717171FF717171FF717171FF717171F63636363F717171F07171
      71FF717171FF717171FF696969A2050505060000000005050506696969A27171
      71FF717171FF717171FF717171FF717171FF717171F63636363F717171F07171
      71FF717171FF717171FF696969A2050505060000000005050506696969A27171
      71FF717171FF717171FF717171FF717171FF717171F63636363F717171F07171
      71FF717171FF717171FF696969A205050506B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F6F6FFCFCFCFFFC7C7C7FFE3E3E3FFFFFFFFFFEAEAEAFFAEAE
      AEFFA3A3A3FF8F8F8FFFFFFFFFFFB3B3B3FF55555571858585F98E8E8E944040
      4044000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FFFFFFFFFFB3B3B3FF787878D5A7A7A7FF7A7A7AFF7070
      70FF707070FF707070FF707070FF707070FF707070FF7A7A7AFFA7A7A7FF7878
      78D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF727272FCF7F7F7FFFFFFFFFF7373
      73FFFDFDFDFFFFFFFFFFFFFFFFFFFAFAFAFF737373FFFFFFFFFFF8F8F8FF7373
      73F8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCFCFCFFFF3F3F3FFF3F3F3FFAEAEAEFF8C8C8CFFD2D2
      D2FFF0F0F0FFF8F8F8FFFFFFFFFFB3B3B3FF727272FCF7F7F7FFFFFFFFFF7373
      73FFFCFCFCFFFFFFFFFFFFFFFFFFFDFDFDFF737373FFFFFFFFFFF7F7F7FF7272
      72FC0000000000000000000000000000000000000000000000005B5B5B7E7171
      71FF707070C60B0B0B0C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000B0B0B0C6F6F6FC37171
      71FF5B5B5B7E0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFB0B0B0FFEEEE
      EEFFEEEEEEFFB0B0B0FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FFFFFFFFFFB3B3B3FF797979D3AFAFAFFF909090FF7070
      70FF707070FF707070FF707070FF707070FF707070FF8E8E8EFFAFAFAFFF7979
      79D3000000000000000000000000000000000000000000000000000000005B5B
      5B7E717171FF707070C60B0B0B0CFFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0B0B0B0C707070C6717171FF5B5B
      5B7E000000000000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFFFFFFFFF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FFFFFFFFFFB3B3B3FF5353536E7B7B7BFAF0F0F0FF9B9B
      9BFFD7D7D7FFFFFFFFFFFFFFFFFFD6D6D6FF9B9B9BFFEEEEEEFF787878FB5353
      536E00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF707070C6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070C6717171FF717171FF7171
      71FF717171FF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF05050506747474D9B1B1B1FCC5C5
      C5FFA7A7A7FFFFFFFFFFFFFFFFFFA7A7A7FFCCCCCCFFB1B1B1FC747474D90505
      050600000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF6F6F6FC3F8F8F8FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF6F6F6FC3717171FF717171FF7171
      71FF717171FF717171FF717171FFFFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FF000000001919191B757575D78C8C
      8CF5808080FFCBCBCBFFCBCBCBFF808080FF8C8C8CF5757575D71919191B0000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5C81717171FF6F6F6FC30B0B0B0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF080808096F6F6FC3717171FF5C5C
      5C81000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505065252
      526C767676D7707070FE707070FE767676D75252526C05050506000000000000
      00000000000000000000000000000000000000000000000000005C5C5C817171
      71FF6F6F6FC30B0B0B0C00000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF00000000080808096F6F6FC37171
      71FF5C5C5C810000000000000000FFFFFFFF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      000000000000707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      050651515169707070BA767676F0767676FF747474CC6A6A6AA23A3A3A450000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000111111123636
      363F767676FC767676FF767676FF767676FF767676FF767676FF767676FC2D2D
      2D330E0E0E0F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D2D2D33808080F03939
      39425E5E5E84767676FF767676FF767676FF767676FF767676FF5E5E5E843A3A
      3A42909090E72727272A000000000000000000000000343434404E4E4EFF4E4E
      4EFF5757579000000000000000004E4E4EFF4E4E4EFF00000000000000005757
      57904E4E4EFF4E4E4EFF34343440000000000000000000000000000000005B5B
      5BAA4E4E4EFF4949496600000000414141554E4E4EFF4E4E4EFF1E1E1E220000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000050505067C7C7CD8828282FF8080
      80E716161618747474C9767676FF767676FF767676FF747474C9161616188F8F
      8FE4969696FF888888CC05050506000000000000000000000000535353804E4E
      4EFF4E4E4EFF3E3E3E50000000004E4E4EFF4E4E4EFF00000000343434404E4E
      4EFF4E4E4EFF5757579000000000000000000000000000000000000000005050
      50774E4E4EFF55555588000000005B5B5BBB4E4E4EFF5B5B5BAA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000004E4E4E60828282FF828282FF8282
      82FF747474B11E1E1E21767676F0767676FF767676F01E1E1E217D7D7DB19696
      96FF969696FF969696FF4C4C4C5A000000000000000000000000000000005A5A
      5AD04E4E4EFF535353F00F0F0F104E4E4EFF4E4E4EFF0F0F0F10535353F04E4E
      4EFF5A5A5AD00000000000000000000000000000000000000000000000003737
      37444E4E4EFF5B5B5BBB2B2B2B334E4E4EFF535353EE10101011000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F10343434400F0F0F10000000004E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000777777BD828282FF828282FF8282
      82FF828282FF5555556C47474757767676FF474747575858586C969696FF9696
      96FF969696FF969696FF818181BA000000000000000000000000000000001D1D
      1D20535353F04E4E4EFF5C5C5CB04E4E4EFF4E4E4EFF5C5C5CB04E4E4EFF5353
      53F01D1D1D200000000000000000000000000000000000000000000000001E1E
      1E224E4E4EFF535353EE5B5B5BAA4E4E4EFF5555558800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF5B5B5BC04E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000808080ED828282FF828282FF8282
      82FF828282FF818181F92828282D3E3E3E4B2929292D939393F9969696FF9696
      96FF969696FF969696FF919191EA000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4646
      4660000000000000000000000000000000000000000000000000000000000000
      0000585858DD4E4E4EFF535353EE4E4E4EFF2B2B2B3300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4E4E4EFF575757E04E4E4EFF4E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000808080FC828282FF828282FF8282
      82FF808080ED6F6F6FA2323232390000000033333339767676A2919191ED9696
      96FF969696FF969696FF949494FC000000000000000000000000000000000000
      00005C5C5CB04E4E4EFF5A5A5AD04E4E4EFF4E4E4EFF5A5A5AD04E4E4EFF5C5C
      5CB0000000000000000000000000000000000000000000000000000000000000
      00005B5B5BAA4E4E4EFF5B5B5BBB4E4E4EFF5B5B5BBB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4D4D4D70000000001D1D1D204E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000007F7F7FE47F7F7FEA6D6D6D9C4040
      404B0E0E0E0F474747517F7F7FAB00000000909090AB4A4A4A510E0E0E0F3F3F
      3F487474749C919191EA8F8F8FE4000000000000000000000000000000004D4D
      4D704E4E4EFF4E4E4EFF292929304E4E4EFF4E4E4EFF292929304E4E4EFF4E4E
      4EFF4D4D4D700000000000000000000000000000000000000000000000000000
      0000505050774E4E4EFF55555588555555884E4E4EFF5B5B5BAA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000002626262A0E0E0E0F4B4B4B578181
      81AE9C9C9CF6A0A0A0FFA0A0A0FF00000000C6C6C6FFC6C6C6FFC0C0C0F69292
      92AE505050570E0E0E0F2727272A000000000000000000000000292929305353
      53F04E4E4EFF53535380000000004E4E4EFF4E4E4EFF00000000535353804E4E
      4EFF4E4E4EFF2929293000000000000000000000000000000000000000000000
      0000373737444E4E4EFF5B5B5BBB000000005B5B5BBB4E4E4EFF595959990000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      3440000000000000000000000000000000005E5E5E729D9D9DF9A0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FF00000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC1C1C1F93030303300000000000000000F0F0F105A5A5AD04E4E
      4EFF5A5A5AD000000000000000004E4E4EFF4E4E4EFF00000000000000005A5A
      5AD04E4E4EFF575757E00F0F0F10000000000000000000000000000000000000
      00001E1E1E224E4E4EFF535353EE00000000000000005A5A5ACC4E4E4EFF5555
      5588000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF3434
      344000000000000000000000000000000000242424279B9B9BF3A0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FF00000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFA0A0A0C300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000474747519D9D9DF9A0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FF00000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFACACACD51717171800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003939393F9595
      95DEA0A0A0FFA0A0A0FFA0A0A0FF00000000C6C6C6FFC6C6C6FFC6C6C6FF9797
      97B4141414150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      050654545463878787BA9C9C9CF600000000ACACACD58C8C8CA5363636390000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      000000000000000000000000000000000000646464CC636363DD000000000000
      00000000000000000000383838445D5D5DFF5353537742424255606060EE5D5D
      5DFF646464BB646464CC646464CC0000000000000000343434404E4E4EFF4E4E
      4EFF5757579000000000000000004E4E4EFF4E4E4EFF00000000000000005757
      57904E4E4EFF4E4E4EFF34343440000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      000000000000000000000000000000000000535353775D5D5DFF383838440000
      000000000000000000005F5F5F995D5D5DFF1E1E1E22646464CC636363DD0000
      00002C2C2C33606060EE646464CC000000000000000000000000535353804E4E
      4EFF4E4E4EFF3E3E3E50000000004E4E4EFF4E4E4EFF00000000343434404E4E
      4EFF4E4E4EFF5757579000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000010101011606060EE5F5F5F990000
      00000000000000000000636363DD646464BB00000000646464BB636363DD4242
      425500000000646464CC646464CC000000000000000000000000000000005A5A
      5AD04E4E4EFF535353F00F0F0F104E4E4EFF4E4E4EFF0F0F0F10535353F04E4E
      4EFF5A5A5AD000000000000000000000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000000000
      0000000000000000000000000000707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000626262AA5D5D5DFF5D5D
      5DFF5D5D5DFF5D5D5DFF5D5D5DFF4C4C4C660000000010101011595959886464
      64CC5D5D5DFF5D5D5DFF646464CC000000000000000000000000000000001D1D
      1D20535353F04E4E4EFF5C5C5CB04E4E4EFF4E4E4EFF5C5C5CB04E4E4EFF5353
      53F01D1D1D200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C48707070C6707070F0707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000424242555D5D5DFF3838
      3844000000005F5F5F99606060EE000000000000000000000000000000000000
      000000000000646464CC646464CC000000000000000000000000000000000000
      0000464646604E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4646
      4660000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4251707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000636363DD5F5F
      5F9900000000636363DD5F5F5F9900000000000000002C2C2C33595959880000
      00002C2C2C335D5D5DFF5F5F5F99000000000000000000000000000000000000
      00005C5C5CB04E4E4EFF5A5A5AD04E4E4EFF4E4E4EFF5A5A5AD04E4E4EFF5C5C
      5CB0000000000000000000000000000000000000000000000000000000007070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000007070
      70DB707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000595959886363
      63DD424242555D5D5DFF38383844000000000000000010101011646464BB5D5D
      5DFF5D5D5DFF646464BB1E1E1E22000000000000000000000000000000004D4D
      4D704E4E4EFF4E4E4EFF292929304E4E4EFF4E4E4EFF292929304E4E4EFF4E4E
      4EFF4D4D4D700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202037070
      70FF707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      00000000000000000000000000000000000000000000000000001E1E1E225D5D
      5DFF646464CC636363DD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929305353
      53F04E4E4EFF53535380000000004E4E4EFF4E4E4EFF00000000535353804E4E
      4EFF4E4E4EFF2929293000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70DB707070FF707070FF707070FF707070FF0000000000000000707070FF0000
      0000000000000000000000000000000000000000000000000000000000006464
      64BB5D5D5DFF5353537700000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F105A5A5AD04E4E
      4EFF5A5A5AD000000000000000004E4E4EFF4E4E4EFF00000000000000005A5A
      5AD04E4E4EFF575757E00F0F0F100000000000000000707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF000000000000000000000000000000004242
      4251707070FF707070FF707070FF707070FF4B4B4B6000000000707070FF4B4B
      4B60000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424242516F6F6FC9707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000038383842707070FF5C5C5C810000000000000000050505066161618D7171
      71E7717171E76161618D050505060000000000000000050505066161618D7171
      71E7717171E76161618D05050506000000000000000000000000000000000000
      00000000000000000000707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF707070FF707070FF0000000000000000989898B7C6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6CA41E1E1E210000
      0000707070FF77777784707070FF00000000000000005F5F5F876E6E6EB71616
      1618161616186E6E6EB75F5F5F8A00000000000000005F5F5F876E6E6EB71616
      1618161616186E6E6EB75F5F5F8A000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FF828282E04D4D
      4D63707070FFF3F3F3FF707070FF0000000000000000727272EA1919191B0000
      0000000000001919191B727272EA0000000000000000727272EA1919191B0000
      0000000000001919191B727272EA000000000000000000000000000000000000
      00000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FFEEEEEEFF9393
      93E0C9C9C9C99D9D9DFA4141414D0000000000000000727272EA161616180000
      00000000000016161618727272EA0000000000000000727272EA161616180000
      00000000000016161618727272EA00000000707070FF707070FF707070FF7070
      70FF707070FF00000000707070FFFFFFFFFF717171FF717171FF717171FF7171
      71FF717171FFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF0000000000000000000000000000
      00000000000000000000000000000000000000000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF0000000000000000000000005F5F5F876F6F6FC02F2F
      2F362F2F2F36707070C46A6A6AA900000000000000006A6A6AAA707070C42F2F
      2F362F2F2F366F6F6FC05F5F5F8700000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF707070FF707070FF707070FF717171FF717171FFFFFFFFFF7171
      71FF717171FFFFFFFFFF717171FF717171FF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF707070FF747474E600000000050505065D5D5D847272
      72E4727272EA707070F86F6F6FFC3C3C3C483C3C3C486F6F6FFC707070F87272
      72EA727272E45D5D5D840505050600000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFF717171FF717171FF717171FF7171
      71FF717171FFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FFFFFFFFFF777777F14B4B4B60717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFFFFF
      FFFFFFFFFFFFEEEEEEFF808080E21E1E1E210000000000000000000000000000
      0000000000006C6C6CB4707070FF707070ED717171EA707070FF6D6D6DB70000
      000000000000000000000000000000000000707070FFFFFFFFFF717171FF7171
      71FF717171FFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF777777F14949495D00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFFFFF
      FFFFEEEEEEFF808080E221212124000000000000000000000000000000000000
      00000000000011111112717171DE707070FF707070FF717171DE111111120000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFF717171FF717171FFFFFFFFFF7070
      70FF707070FF707070FF707070FF0000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF00000000707070FF707070FF707070FF7070
      70FF707070FF4848485A0000000000000000717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FFFFFFFFFFEEEE
      EEFF808080E42323232700000000000000000000000000000000000000000000
      000000000000000000006666669C707070FF707070FF6767679F000000000000
      000000000000000000000000000000000000707070FFFFFFFFFF717171FF7171
      71FF717171FFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
      70FFD6D6D6FF717171EA2F2F2F360000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFFFFFFFFF717171FF7171
      71FF717171FF717171FFFFFFFFFFFFFFFFFF00000000707070FFEDEDEDFF7F7F
      7FE52525252AFFFFFFFF00000000000000000000000000000000000000000000
      0000000000004848485A707070FF707070FF707070FF707070FF4848485A0000
      000000000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7070
      70FF717171EA2F2F2F36000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000707070FF7F7F7FE52828
      282DFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00002525252A707070F3707070FF6464649664646496707070FF707070F32525
      252A00000000000000000000000000000000707070FFFFFFFFFF717171FF7171
      71FFFFFFFFFFFFFFFFFF707070FF707070FF707070FF707070FF707070FF7070
      70FF2F2F2F3600000000000000000000000000000000C6C6C6FFC6C6C6FFC6C6
      C6FF00000000000000000000000000000000000000000000000000000000C6C6
      C6FFC6C6C6FFC6C6C6FF0000000000000000717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000717171EF2A2A2A30FFFF
      FFFFFFFFFFFF717171FF00000000000000000000000000000000000000000000
      00006F6F6FC3707070FF707070C60505050605050506707070C6707070FF6F6F
      6FC300000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6FFC6C6C6FF0000
      0000707070FF707070FF707070FF707070FF707070FF707070FF707070FF0000
      0000C6C6C6FFC6C6C6FF0000000000000000717171FFFFFFFFFF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF717171FF00000000000000000000000000000000000000003333
      333C707070FF717171EA1919191B00000000000000001919191B717171EA7070
      70FF3333333C000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF707070FF717171EA2F2F2F360000000000000000000000000000
      000000000000000000000000000000000000000000009D9D9DBDC6C6C6FF0000
      00006E6E6EBD707070FF707070FF707070FF707070FF707070FF6E6E6EBD0000
      0000C6C6C6FF9D9D9DBD0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000004B4B
      4B60707070FC38383842000000000000000000000000000000003636363F7070
      70FC4B4B4B60000000000000000000000000707070FF707070FF707070FF7070
      70FF707070FF707070FF2F2F2F36000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E6E6EBD00000000686868A200000000000000000000
      000000000000000000000000000000000000717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF00000000000000000000000000000000000000002F2F
      2F36585858780000000000000000000000000000000000000000000000005858
      58782F2F2F360000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E6E6EBD707070FF6767679F00000000000000000000
      000000000000000000000000000000000000717171FF717171FFFFFFFFFF7171
      71FF717171FFFFFFFFFF717171FF717171FFFFFFFFFF717171FF717171FFFFFF
      FFFF717171FF717171FF00000000000000000000000002020203646464967070
      70F01919191B000000001919191B707070F06464649602020203000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6CB47070
      70FF6D6D6DB7565656756D6D6DB7707070FF6C6C6CB400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003636363F7070
      70FF707070FF707070FF707070FF707070FF3636363F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0F717171ED6F6F6FC05959
      597B0B0B0B0C0000000000000000000000000000000000000000000000000B0B
      0B0C5959597B6F6F6FC0717171ED0E0E0E0F0000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6A6AAB7070
      70FF707070F06A6A6AAB707070F0707070FF6A6A6AAB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0F717171FF717171FF7171
      71FF717171E73C3C3C48000000000000000000000000000000003C3C3C487171
      71E7717171FF717171FF717171FF0E0E0E0F0000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF2F2F2F36000000002F2F2F36707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E0F3636363F6A6A
      6AA8717171FF707070F92A2A2A3000000000000000002A2A2A30707070F97171
      71FF6A6A6AA83636363F0E0E0E0F000000000000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF7070
      70FF2F2F2F36000000002F2F2F36707070FF707070FF707070FF707070FF0000
      0000000000000000000000000000000000000000000000000000000000006464
      6490757575FF757575F32F2F2F36000000002F2F2F36757575F3757575FF6262
      628D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000064646496717171FF6C6C6CB100000000000000006C6C6CB1717171FF6464
      6496000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868A27070
      70FF707070F06A6A6AAB707070F0707070FF686868A200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006969699F757575FF767676F04848485A757575ED757575FF6969699F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000011111112717171FF717171F00000000000000000717171F0717171FF0E0E
      0E0F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F367070
      70FF707070FF707070FF707070FF707070FF3131313900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202036C6C6CAB757575FF757575FF757575FF6E6E6EAE020202030000
      0000000000000000000000000000000000000000000000000000000000004848
      485A717171FC717171FF707070F93A3A3A450000000000000000000000000000
      000011111112717171FF717171F60000000000000000717171F6717171FF1111
      1112000000000000000000000000000000003A3A3A45707070F9717171FF7171
      71FC4848485A0000000000000000000000000000000000000000696969A57070
      70FF6D6D6DB7565656756D6D6DB7707070FF6A6A6AA82A2A2A306E6E6EBD2323
      2327212121246E6E6EBD2A2A2A30000000000000000000000000000000000000
      0000000000001E1E1E21757575FC757575FF757575FC1E1E1E21000000000000
      0000000000000000000000000000000000000000000000000000383838427070
      70F9717171FF717171FC42424251000000000000000000000000000000000000
      000064646496717171FF6F6F6FC300000000000000006F6F6FC3717171FF6464
      6496000000000000000000000000000000000000000042424251717171FC7171
      71FF707070F93838384200000000000000000000000005050506696969A57070
      70F31919191B000000001919191B707070F3696969A564646498707070FF6C6C
      6CB46C6C6CB4707070FF64646496000000000000000000000000000000000000
      000013131315757575DB757575FF757575FC757575FF757575DB131313150000
      000000000000000000000000000000000000000000002F2F2F36717171F67171
      71FF717171FF4A4A4A5D00000000000000000000000011111112383838426A6A
      6AA8717171FF717171FF3E3E3E4B00000000000000003E3E3E4B717171FF7171
      71FF6A6A6AA838383842111111120000000000000000000000004A4A4A5D7171
      71FF717171FF717171F62F2F2F36000000000000000000000000000000001313
      1315000000000000000000000000131313150000000011111112707070F37070
      70FF707070FF707070F313131315000000000000000000000000000000000E0E
      0E0F757575D2757575FF757575D21C1C1C1E757575D2757575FF757575D20E0E
      0E0F0000000000000000000000000000000023232327727272EA717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF707070F95858587800000000000000000000000000000000565656757070
      70F9717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF727272EA232323270000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF3131
      31392D2D2D33707070FC707070FF707070FF0000000000000000080808097272
      72C9757575FF757575D8131313150000000013131315757575D8757575FF7272
      72C90808080900000000000000000000000021212124727272EA717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171ED717171CC6262
      6290212121240000000000000000000000000000000000000000000000002121
      212462626290717171CC717171ED717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171E7212121240000000000000000000000000000
      000000000000000000000000000000000000707070FF707070FF707070FF3333
      333C2D2D2D33707070FC707070FF707070FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002828282D717171ED7171
      71FF717171FF4848485A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004848485A7171
      71FF717171FF717171ED2828282D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111112707070F37070
      70FF707070FF707070F313131315000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F367171
      71F3717171FF707070F93434343C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003434343C707070F97171
      71FF717171F32F2F2F3600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064646496707070FF6C6C
      6CB46C6C6CB4707070FF64646496000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003838
      3842717171F6717171FF727272EA212121240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021212124727272EA717171FF7171
      71F6383838420000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A306E6E6EBD2323
      2327212121246E6E6EBD2A2A2A30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF6E6E6EB73131313900000000000000000000
      0000000000000000000000000000000000000000000000000000707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF707070FF7070
      70FF707070FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5B816E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000005B5B5B816E6E6EFF6E6E
      6EFF6E6E6EFF00000000696969A5717171FF727272DE050505060B0B0B0C8B8B
      8BEB6E6E6EFF6E6E6EFF6E6E6EFF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FF5757576000000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFFFFFFFFF6E6E6EFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFF000000002A2A2A30717171D8050505065C5C5C815F5F5F8A0909
      0909898989EF6E6E6EFF6E6E6EFF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FF8C8C8CA500000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFFFFFFFFF6E6E6EFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFF4E4E4E4E00000000000000005C5C5C81717171FF717171FF6363
      639316161617878787F46E6E6EFF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFD3D3D3FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFB5B5B5E400000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFF9F9F9F9545454540000000062626290717171FF717171FF7171
      71FF666666991B1B1B1D848484F6000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFEBEBEBFFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF2828282A000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFFFFFFFFFFFFFFFFFFFCFCFCFC60606060000000006666669C717171FF7171
      71FF717171FF6767679F2828282B000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFFEFEFEFFCCCCCCFFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF5E5E5E69000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF7E7E7EA3020202036A6A6AA87171
      71FF717171FF6A6A6AAB11111112020202030000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFFFFFFFFFE3E3E3FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF929292AE000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF848484B4050505066C6C
      6CB16A6A6AAB14141415727272CF6A6A6AA80000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFFFFFFFFFF9F9F9FFC7C7
      C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFB8B8B8EA000000006E6E6EFF6E6E6EFFB3B3
      B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBDBDBDFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFB3B3
      B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E7E0505
      050614141415727272CF717171FF717171F00000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFFFFFFFFFFFFFFFFFE8E8
      E8FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FF979797B4000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A
      8A8A08080809707070C6717171FC505050690000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF707070FF000000000000000000000000C6C6C6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC6C6C6FF0000000000000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF969696965151515C5151515C000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF707070FF7070
      70FF707070FF000000000000000000000000C6C6C6FFECECECFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC6C6C6FF0000000000000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FFFFFFFFFF7777
      77F14B4B4B600000000000000000000000005A5A5A63C4C4C4FBC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFD2D2D2FBFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFC6C6C6FF0000000000000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF000000000000000000000000707070FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070FF777777F14949
      495D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080809A9A9A9CCD6D6D6F9FFFFFFFFFFFF
      FFFFFFFFFFFFC6C6C6FF0000000000000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF6E6E6EFF6E6E6EFF000000000000000000000000707070FF7070
      70FF707070FF707070FF707070FF707070FF707070FF707070FF4848485A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E0FAEAEAED7C6C6C6FFC6C6
      C6FFC6C6C6FF999999B30000000000000000000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF00000000000000006E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFF80010000
      FFFF800080010000FF07800080010000FF0F800080010000F00F800080010000
      F08F800080010000F88F800080010000F88FA00080010000F88F800080010000
      F803000080010000F801040080010000C03F040080010000C01F570080010000
      FFFF9F8080010000FFFF1FFFFFFF0000F1F8FFFFFFFFFFFFF000FFFFFFFFFFFF
      F0008003FFFFFFFFF80180030000FFFFF80180030000FFFF180180030000E007
      080180030000FFFF180180030000FFFF9000800300008001900080030000FFFF
      91F880030000FFFF9E1F80030000E007801F80030000FFFF000F80030000FFFF
      000FFFFFFFFFFFFF1F8FFFFFFFFFFFFFFFFFFFFFE3FFEFF7FFFFFFFFCFFFCFF3
      EDB7EDB7CFFF9DB9EDB7EDB7CFFF9DB980018001CFFFA005EDB7EDB7C8013DBC
      EDB7EDB7CFFF3DBC800180018FFF2004EDB7EDB718013DBCEDB7EDB78FFF3DBC
      80018001CFFF2004EDB7EDB7C801BDBDEDB7EDB7CFFF9DB9FFFFFFFFCFFFDFFB
      FFFFFFFFCFFFCFF3FFFFFFFFE3FFEFF7FFFFC000C000F87FFFFFC000C000F03F
      C003C000C000E01FC003C000C000C00FC003C000C0008007C003C000C0000003
      C003C000C0000001C003C000C0000000C003000000000000C003000000008000
      C00300000000C000C00300000000E001C00300000000F003C00300010001F807
      FFFFC003C003FC0FFFFFC007C007FE1FF00F0000FFFFFFFFE0070000E000FFFF
      80010000E000F3FF80010000E000F1FF00000000E000F07F000000006000F03F
      000000002000F01F000000001FFFF00F000000000FFFF00F000000001FFFF01F
      000000002000F03F000000006000F07F80010000E000F1FF80010000E000F3FF
      E0070000E000FFFFF00F0000E000FFFF0000FFFF0000FE7F000000000000F07F
      00007FFE0000C00300007FFE0000C00300007FFE0000800700007FFE00008007
      00007FFE0000800700007FFE0000800700007FFE0000800300007FFE00008001
      00007FFE0000800100007FFE00008008000000000000001C000000000000801E
      000000000000F03F0000FFFF0000FE3F8FFFFFFFFC000000EFFF87FFFC000000
      DC018403FC0000008FFF87FFFC000000FFFFFFFFE0000000FFFFFFFFE0000000
      8FFFFFFFE0000000DFFF87FFE0000000EC018403000700008FFF87FF00070000
      FFFFFFFF00070000FFFFFFFF000700008FFFFFFF003F0000DFFF87FF003F0000
      9C018403003F00009FFF87FF003F00008000F1FFFFFFFFFF8000F11F8FFF8FFF
      8818C00784038403880880038FFF8FFF8C080003FFFFFFFF80000001FFFFFFFF
      00000001FFFFFFFF0FFF00018FFF8FFF000F000184038403000F00018FFF8FFF
      000F0009FFFFFFFF000F0001FFFFFFFF000F0003FFFFFFFF000F80038FFF8FFF
      801FC00784038403C03FF01F8FFF8FFFFFFF8000800080000000800080008000
      0000881888188818000088088808880800008C088C088C080000800080008000
      000000008000800000000FFFFFFFFFFF0000000FFE00FE000000000FFE00FE00
      0000000FC20086000000000FE0000E000000000F000000000000000F00000000
      0000801FE0000E00FFFFC03FC2008600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF801FE007F8018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8001800180018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FE007F8018001
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001800180018001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F
      FFFFFFFFE007C007FFFFFFFFFFFF80038661E21FFF8F0001C243E23FFF8F0001
      E007E03FF88F0001E007E07FF00F0001F00FF07FF00F0101F00FF07FF10F0101
      E007F03FF38F0101C243F11FF38F01018661F18FF38F0103FFFFFFFFFFFF8103
      FFFFFFFFFFFFC107FFFFFFFFFFFFE11FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEDFFFFFFFFFE007FEDF3C018661FFFFFEDF1C11C243FFFFFEDF
      1C89E0078001FEDF8081E007FFFFF0DF89F9F00FFFFFE0DFC991F00FE007E0DF
      C181E007FFFFC0DFC3FFC243FFFFE0DFE3FF86618001E04FFFFFFFFFFFFFF007
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFF18181FC018100FF91
      8181FC018100FF819999FC018100FF81999904018100FF838181000181000080
      8001000181000080F81F000181010081F81F000181030083FC3F000181FF0083
      F81F000380030083F00F00078FE30083F00F03FF901300C3E18700FF90130003
      E3C701FFFD7F0003E7E7FFFFFC7F0003843FFFFFFFFFFFFFC07FFFFFFFFFFFFF
      C07FFFFFFF07E0FFC07FFFFFFF03C0FF041FFFFFFF8181FF041FE10FFFF18FFF
      C07FF01FFFF18FFFC07FF01FE0F18F07C001F83FC1F18F838401F01F838181C1
      EE81E00F0003C000FF00C1070007E000FF00FFFF83FFFFC1FF81FFFFC1FFFF83
      FF81FFFFE0FFFF07FF81FFFFFFFFFFFFFFFFFFFFFFFFFC7FC007FFFF80018401
      C007000180018401C007000180018301C007000180018101C007000080018081
      C007000080018000C007000080018000C007000080018000C007000080018000
      C007000380018001C007000380018001C007000380018001C00FFE0380018001
      C01FFF0380018001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupActionTab: TPopupActionBar
    Left = 232
    Top = 240
    object ActPopupTabClose: TMenuItem
      Action = ActTabClose
    end
  end
end

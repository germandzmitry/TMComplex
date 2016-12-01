object SettingsForm: TSettingsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SettingsForm'
  ClientHeight = 348
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pBottom: TPanel
    Left = 0
    Top = 315
    Width = 602
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pBottom'
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      602
      33)
    object BtnOK: TButton
      Left = 438
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'BtnOK'
      TabOrder = 0
      OnClick = BtnOKClick
      ExplicitTop = 6
    end
    object BtnCancel: TButton
      Left = 519
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'BtnCancel'
      TabOrder = 1
      OnClick = BtnCancelClick
      ExplicitTop = 6
    end
  end
  object tvSettings: TTreeView
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 172
    Height = 307
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 2
    Align = alLeft
    DoubleBuffered = True
    HideSelection = False
    Indent = 19
    ParentDoubleBuffered = False
    ReadOnly = True
    TabOrder = 1
    OnClick = tvSettingsClick
    ExplicitLeft = 10
    ExplicitTop = 10
    ExplicitHeight = 292
  end
  object pClient: TPanel
    AlignWithMargins = True
    Left = 182
    Top = 5
    Width = 415
    Height = 308
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 2
    Align = alClient
    Caption = 'pClient'
    TabOrder = 2
    ExplicitLeft = 192
    ExplicitTop = 33
    ExplicitWidth = 185
    ExplicitHeight = 41
    object bClientBottom: TBevel
      Left = 1
      Top = 296
      Width = 413
      Height = 11
      Align = alBottom
      Shape = bsBottomLine
      ExplicitTop = 280
      ExplicitWidth = 398
    end
    object pcSettings: TPageControl
      Left = 1
      Top = 1
      Width = 413
      Height = 295
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      ActivePage = TabPDFViewer
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 10
      ExplicitWidth = 400
      ExplicitHeight = 292
      object TabPDFViewer: TTabSheet
        Caption = 'TabPDFViewer'
        ExplicitWidth = 392
        ExplicitHeight = 261
        object btnPDFViewerOther: TSpeedButton
          Left = 359
          Top = 173
          Width = 23
          Height = 23
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          OnClick = btnPDFViewerOtherClick
        end
        object btnPDFViewerSumatra: TSpeedButton
          Left = 359
          Top = 49
          Width = 23
          Height = 23
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          OnClick = btnPDFViewerSumatraClick
        end
        object rbPDFViewerDefault: TRadioButton
          Left = 3
          Top = 3
          Width = 190
          Height = 17
          Caption = 'rbPDFViewerDefault'
          TabOrder = 0
          OnClick = rbPDFViewer
        end
        object rbPDFViewerOther: TRadioButton
          Left = 3
          Top = 151
          Width = 190
          Height = 17
          Caption = 'rbPDFViewerOther'
          TabOrder = 1
          OnClick = rbPDFViewer
        end
        object rbPDFViewerSumatra: TRadioButton
          Left = 3
          Top = 27
          Width = 190
          Height = 17
          Caption = 'rbPDFViewerSumatra'
          TabOrder = 2
          OnClick = rbPDFViewer
        end
        object ePDFViewerSumatra: TEdit
          Left = 19
          Top = 50
          Width = 334
          Height = 21
          TabOrder = 3
          Text = 'ePDFViewerSumatra'
        end
        object ePDFViewerOther: TEdit
          Left = 19
          Top = 174
          Width = 334
          Height = 21
          TabOrder = 4
          Text = 'ePDFViewerOther'
        end
        object pPDFViewerSumatra: TPanel
          Left = 19
          Top = 77
          Width = 334
          Height = 68
          Caption = 'pPDFViewerSumatra'
          TabOrder = 5
          object rbPDFViewerSumatraFirstPage: TRadioButton
            Left = 0
            Top = 0
            Width = 305
            Height = 17
            Caption = 'rbPDFViewerSumatraFirstPage'
            TabOrder = 0
          end
          object rbPDFViewerSumatraLastOpenPage: TRadioButton
            Left = 0
            Top = 23
            Width = 305
            Height = 17
            Caption = 'rbPDFViewerSumatraLastOpenPage'
            TabOrder = 1
          end
          object rbPDFViewerSumatraSynctex: TRadioButton
            Left = 0
            Top = 46
            Width = 305
            Height = 17
            Caption = 'rbPDFViewerSumatraSynctex'
            TabOrder = 2
          end
        end
      end
      object TabApplication: TTabSheet
        Caption = 'TabApplication'
        ImageIndex = 1
        ExplicitWidth = 390
        ExplicitHeight = 259
      end
      object TabTex: TTabSheet
        Caption = 'TabTex'
        ImageIndex = 2
        ExplicitWidth = 390
        ExplicitHeight = 259
        object cbTexOpenDocAfterCompile: TCheckBox
          Left = 3
          Top = 3
          Width = 374
          Height = 17
          Caption = 'cbTexOpenDocAfterCompile'
          TabOrder = 0
        end
      end
      object TabTexPdflatex: TTabSheet
        Caption = 'TabTexPdflatex'
        ImageIndex = 3
        ExplicitWidth = 390
        ExplicitHeight = 259
        DesignSize = (
          405
          264)
        object lTexPDFlatexInteraction: TLabel
          Left = 3
          Top = 6
          Width = 116
          Height = 13
          Caption = 'lTexPDFlatexInteraction'
        end
        object ComboBox1: TComboBox
          Left = 257
          Top = 3
          Width = 145
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          ItemIndex = 1
          TabOrder = 0
          Text = 'nonstopmode'
          Items.Strings = (
            'batchmode'
            'nonstopmode'
            'scrollmode'
            'errorstopmode')
          ExplicitLeft = 242
        end
      end
    end
  end
end

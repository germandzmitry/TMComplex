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
  object pcSettings: TPageControl
    AlignWithMargins = True
    Left = 192
    Top = 10
    Width = 400
    Height = 292
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ActivePage = TabPDFViewer
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object TabPDFViewer: TTabSheet
      Caption = 'TabPDFViewer'
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
      object Panel1: TPanel
        Left = 19
        Top = 77
        Width = 334
        Height = 68
        Caption = 'Panel1'
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
    end
    object TabTex: TTabSheet
      Caption = 'TabTex'
      ImageIndex = 2
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
      DesignSize = (
        392
        261)
      object lTexPDFlatexInteraction: TLabel
        Left = 3
        Top = 6
        Width = 116
        Height = 13
        Caption = 'lTexPDFlatexInteraction'
      end
      object ComboBox1: TComboBox
        Left = 244
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
      end
    end
  end
  object pBottom: TPanel
    Left = 0
    Top = 312
    Width = 602
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pBottom'
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      602
      36)
    object BtnOK: TButton
      Left = 438
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'BtnOK'
      TabOrder = 0
      OnClick = BtnOKClick
    end
    object BtnCancel: TButton
      Left = 519
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'BtnCancel'
      TabOrder = 1
      OnClick = BtnCancelClick
    end
  end
  object tvSettings: TTreeView
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 172
    Height = 292
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 10
    Align = alLeft
    DoubleBuffered = True
    HideSelection = False
    Indent = 19
    ParentDoubleBuffered = False
    ReadOnly = True
    TabOrder = 2
    OnClick = tvSettingsClick
  end
end

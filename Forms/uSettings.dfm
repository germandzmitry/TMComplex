object SettingsForm: TSettingsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SettingsForm'
  ClientHeight = 400
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
    Left = 187
    Top = 10
    Width = 405
    Height = 339
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ActivePage = TabPDFViewer
    Style = tsButtons
    TabOrder = 0
    object TabPDFViewer: TTabSheet
      Caption = 'TabPDFViewer'
      object btnPDFViewerOther: TSpeedButton
        Left = 359
        Top = 99
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
        OnClick = rbPDFViewerDefaultClick
      end
      object rbPDFViewerOther: TRadioButton
        Left = 3
        Top = 77
        Width = 190
        Height = 17
        Caption = 'rbPDFViewerOther'
        TabOrder = 1
        OnClick = rbPDFViewerOtherClick
      end
      object rbPDFViewerSumatra: TRadioButton
        Left = 3
        Top = 27
        Width = 190
        Height = 17
        Caption = 'rbPDFViewerSumatra'
        TabOrder = 2
        OnClick = rbPDFViewerSumatraClick
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
        Top = 100
        Width = 334
        Height = 21
        TabOrder = 4
        Text = 'ePDFViewerOther'
      end
    end
    object TabApplication: TTabSheet
      Caption = 'TabApplication'
      ImageIndex = 1
    end
  end
  object pBottom: TPanel
    Left = 0
    Top = 364
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
    Height = 344
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 10
    Align = alLeft
    AutoExpand = True
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    OnClick = tvSettingsClick
  end
end

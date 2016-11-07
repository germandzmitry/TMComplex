object fSettings: TfSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fSettings'
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
      ExplicitWidth = 281
      ExplicitHeight = 162
      object btnPDFViewerOther: TSpeedButton
        Left = 359
        Top = 127
        Width = 23
        Height = 23
        Caption = '...'
        OnClick = btnPDFViewerOtherClick
      end
      object btnPDFViewerSumatra: TSpeedButton
        Left = 359
        Top = 63
        Width = 23
        Height = 23
        Caption = '...'
        OnClick = btnPDFViewerSumatraClick
      end
      object lePDFViewerOther: TLabeledEdit
        Left = 19
        Top = 128
        Width = 334
        Height = 21
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'lePDFViewerOther'
        TabOrder = 0
      end
      object rbPDFViewerDefault: TRadioButton
        Left = 3
        Top = 3
        Width = 113
        Height = 17
        Caption = 'rbPDFViewerDefault'
        TabOrder = 1
        OnClick = rbPDFViewerDefaultClick
      end
      object rbPDFViewerOther: TRadioButton
        Left = 3
        Top = 91
        Width = 113
        Height = 17
        Caption = 'rbPDFViewerOther'
        TabOrder = 2
        OnClick = rbPDFViewerOtherClick
      end
      object rbPDFViewerSumatra: TRadioButton
        Left = 3
        Top = 27
        Width = 126
        Height = 17
        Caption = 'rbPDFViewerSumatra'
        TabOrder = 3
        OnClick = rbPDFViewerSumatraClick
      end
      object lePDFViewerSumatra: TLabeledEdit
        Left = 19
        Top = 64
        Width = 334
        Height = 21
        EditLabel.Width = 99
        EditLabel.Height = 13
        EditLabel.Caption = 'lePDFViewerSumatra'
        TabOrder = 4
      end
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
    ExplicitTop = 360
    ExplicitWidth = 587
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
      ExplicitLeft = 423
      ExplicitTop = 118
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
      ExplicitLeft = 504
      ExplicitTop = 118
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
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitHeight = 354
  end
end

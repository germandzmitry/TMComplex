object InsertImageForm: TInsertImageForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'InsertImageForm'
  ClientHeight = 410
  ClientWidth = 807
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
  DesignSize = (
    807
    410)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpenImage: TSpeedButton
    Left = 327
    Top = 7
    Width = 23
    Height = 23
    Caption = '...'
    OnClick = btnOpenImageClick
  end
  object Bevel1: TBevel
    Left = 356
    Top = 8
    Width = 5
    Height = 363
    Anchors = [akLeft, akTop, akBottom]
    Shape = bsLeftLine
  end
  object BtnCancel: TButton
    Left = 724
    Top = 377
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 0
    OnClick = BtnCancelClick
    ExplicitLeft = 734
    ExplicitTop = 387
  end
  object BtnOk: TButton
    Left = 643
    Top = 377
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOk'
    Default = True
    TabOrder = 1
    OnClick = BtnOkClick
    ExplicitLeft = 653
    ExplicitTop = 387
  end
  object eImageFileName: TEdit
    Left = 8
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 2
    Text = 'eImageFileName'
  end
  object cbCopyToProjectFolder: TCheckBox
    Left = 8
    Top = 35
    Width = 342
    Height = 17
    Caption = 'cbCopyToProjectFolder'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = cbCopyToProjectFolderClick
  end
  object eInsertImageFileName: TEdit
    Left = 8
    Top = 58
    Width = 342
    Height = 21
    TabOrder = 4
    Text = 'eInsertImageFileName'
  end
  object sbParam: TScrollBox
    Left = 8
    Top = 85
    Width = 342
    Height = 290
    Anchors = [akLeft, akTop, akBottom]
    BorderStyle = bsNone
    TabOrder = 5
    object gbSize: TGroupBox
      Left = 0
      Top = 4
      Width = 342
      Height = 103
      Caption = 'gbSize'
      TabOrder = 0
      object eScale: TEdit
        Left = 280
        Top = 18
        Width = 33
        Height = 21
        NumbersOnly = True
        TabOrder = 0
        Text = '50'
        OnChange = eScaleChange
      end
      object rbScale: TRadioButton
        Left = 16
        Top = 20
        Width = 113
        Height = 17
        Caption = 'rbScale'
        TabOrder = 1
        OnClick = rbSize
      end
      object udScale: TUpDown
        Left = 313
        Top = 18
        Width = 16
        Height = 21
        Associate = eScale
        Min = 1
        Position = 50
        TabOrder = 2
      end
      object rbWidth: TRadioButton
        Left = 16
        Top = 47
        Width = 113
        Height = 17
        Caption = 'rbWidth'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = rbSize
      end
      object eWidth: TEdit
        Left = 208
        Top = 45
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 4
        Text = 'eWidth'
      end
      object eHeight: TEdit
        Left = 208
        Top = 72
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 5
        Text = 'eHeight'
      end
      object rbHeight: TRadioButton
        Left = 16
        Top = 74
        Width = 113
        Height = 17
        Caption = 'rbHeight'
        TabOrder = 6
        OnClick = rbSize
      end
    end
    object gbOption: TGroupBox
      Left = 0
      Top = 113
      Width = 342
      Height = 148
      Caption = 'gbOption'
      TabOrder = 1
      object iTrim: TImage
        Left = 234
        Top = 75
        Width = 32
        Height = 32
        AutoSize = True
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          6C4944415478DA63641860C038E81CD0D0D0F09F569601CDC6B00FAB03EAEBEB
          51C4FC9A77326CAA7527DA226CEA1B1B1B471D30841C7096C98268CB8805C6FF
          4E0CA1101875C0A803461D30EA8051078C3A60D40103EE80D106C9A80306DC01
          44DB442220CA01F40603EE0000A5BD4E30E98071F20000000049454E44AE4260
          82}
        Proportional = True
      end
      object cbAngle: TCheckBox
        Left = 16
        Top = 25
        Width = 113
        Height = 17
        Caption = 'cbAngle'
        TabOrder = 0
        OnClick = cbOption
      end
      object eAngle: TEdit
        Left = 280
        Top = 21
        Width = 33
        Height = 21
        NumbersOnly = True
        TabOrder = 1
        Text = '90'
        OnChange = eAngleChange
      end
      object udAngle: TUpDown
        Left = 313
        Top = 21
        Width = 16
        Height = 21
        Associate = eAngle
        Max = 360
        Position = 90
        TabOrder = 2
      end
      object cbTrim: TCheckBox
        Left = 16
        Top = 83
        Width = 113
        Height = 17
        Caption = 'cbTrim'
        TabOrder = 3
        OnClick = cbOption
      end
      object eTrimTop: TEdit
        Left = 225
        Top = 48
        Width = 32
        Height = 21
        NumbersOnly = True
        TabOrder = 4
        Text = '10'
      end
      object udTrimTop: TUpDown
        Left = 257
        Top = 48
        Width = 16
        Height = 21
        Associate = eTrimTop
        Position = 10
        TabOrder = 5
      end
      object eTrimRight: TEdit
        Left = 280
        Top = 81
        Width = 33
        Height = 21
        NumbersOnly = True
        TabOrder = 6
        Text = '10'
      end
      object udTrimRight: TUpDown
        Left = 313
        Top = 81
        Width = 16
        Height = 21
        Associate = eTrimRight
        Position = 10
        TabOrder = 7
      end
      object eTrimLeft: TEdit
        Left = 174
        Top = 81
        Width = 33
        Height = 21
        NumbersOnly = True
        TabOrder = 8
        Text = '10'
      end
      object eTrimBottom: TEdit
        Left = 225
        Top = 113
        Width = 32
        Height = 21
        NumbersOnly = True
        TabOrder = 9
        Text = '10'
      end
      object udTrimBottom: TUpDown
        Left = 257
        Top = 113
        Width = 16
        Height = 21
        Associate = eTrimBottom
        Position = 10
        TabOrder = 10
      end
      object udTrimLeft: TUpDown
        Left = 207
        Top = 81
        Width = 16
        Height = 21
        Associate = eTrimLeft
        Position = 10
        TabOrder = 11
      end
    end
  end
  object pImage: TPanel
    Left = 367
    Top = 8
    Width = 432
    Height = 363
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'pImage'
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
    DesignSize = (
      432
      363)
    object Image: TImage
      Left = 79
      Top = 99
      Width = 218
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      Center = True
      Proportional = True
    end
  end
end

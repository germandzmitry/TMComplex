object AboutForm: TAboutForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 272
  ClientWidth = 431
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    431
    272)
  PixelsPerInch = 96
  TextHeight = 13
  object lVersion: TLabel
    Left = 116
    Top = 53
    Width = 37
    Height = 13
    Caption = 'lVersion'
  end
  object ImageIcon: TImage
    Left = 8
    Top = 8
    Width = 102
    Height = 82
    Center = True
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
      00400806000000AA6971DE000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000003
      734944415478DAED9B5D48145114C7CFA89596D6128959D0B645BB511A6168DB
      97661BA1456C6A894249F8D226F4226D41141141F4013E486C3E49986E12DA16
      7D2852884666583E94461A51FBD08715A1646045D4DC8119AE6BB333777663EE
      CCDEFFD35CE7DED939BF7BCEBDE79E410E625C9CDE2FA0B71800BD5F406FA902
      70B8E9E2010EE20EF1BD97701C9784DF3B57E681A3CD757ADB21ABF3E507C3DA
      A808C0DBE8DBC7C5730D72F7CD0FC0EFEBE2673D3796017CE201A4C63280DF3C
      80B8980570E4EAA53FE1EE33000C0003C000440A207946226C5C9609F9196BA4
      BF0DBD0BC2E3D72F60F07DD0DC00562EB042E93A178C7D1F87C0936E78F3E523
      A4A558A024270FACA9E9D03BFC1C02FD0FCD0900195F915B0813BF7EC285DB7E
      18FF3131E9FEB19D7B61CEACE48820500B00CD72D5B662489C361D3A079E42FB
      40DF943E79F655B03D6BBD70DDD2DB097D6F87CC03A072532138165A85EBD381
      CB53665FD4A9924A01120A91DA8E16D97E860220BA3E125AECEA1FB4A90225E7
      29860350BE760BACB6D955195590912DED0EC80BCEDC6A343600B4E59D28DA2F
      B59562DB366F3E78B6EE92DA75F76E083B856101642F76C06E67BED4AEB9D30C
      23DF46550323DD11A8035094B5019CF64CA9AD66ACB81022053F7F00DFFD9BC6
      05505D500A6996B9C235DAFF4FB6D62B8E11F3019231D402C06753EDA256E572
      0B59A128A5B0A116004A7EAA7794496DB5EE1C0A806421A40A40E88AAE16009E
      0B203574B7A93E245105004F804800E07903D2DDFE1EE81A7EC600181E805699
      0680560F2039199A12806117C198DF0643F3FA91D1AF50D37E8D1840B8FA01D5
      0090F0B4566D2688A7CFA44762EA008426356AC6E2D0940A28D403C00B1C486A
      DC19FD8628D2AA107500480B1CA1FD490E42540240C2635A6946F1020A692D80
      5A0078B95B29A6F1020AC9FE4F350024D10BE43E8A881217402DB34F35003CB6
      E5727BFCCB91AFE33A51EC530F00490C053903C5D9D7FA55887A0038049415FE
      EBE36824C61B0200120A07E7D215930E3CA8FCDDF36A5093DB1B0EC0FF1403C0
      0030000C0003C00030000C40C4001CE98B604FCE6648499AA9B74D44E2784505
      C0717785E18C8F0A00AFDF37C63F63F659DED58DF81F56D100D0CA3FA3D8E372
      830DABCD1B451103A86EAA5D1ECF253CE29F63D1DB182D8A781144F25EF139B8
      04EEA5DEC6E806C0CC6200F47E01BD15F300FE02590EF95F5E7672B400000000
      49454E44AE426082}
  end
  object lCaption: TLabel
    Left = 116
    Top = 39
    Width = 160
    Height = 13
    Caption = 'Training and metodology complex'
  end
  object lName: TLabel
    Left = 116
    Top = 8
    Width = 115
    Height = 25
    Caption = 'TM Complex'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lVersionDate: TLabel
    Left = 116
    Top = 67
    Width = 60
    Height = 13
    Caption = 'lVersionDate'
  end
  object lDeveloper: TLabel
    Left = 116
    Top = 104
    Width = 51
    Height = 13
    Caption = 'lDeveloper'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lEmail: TLabel
    Left = 116
    Top = 118
    Width = 28
    Height = 13
    Caption = 'email:'
  end
  object lMiKTeX: TLabel
    Left = 116
    Top = 152
    Width = 38
    Height = 13
    Caption = 'MiKTeX:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lDebug: TLabel
    Left = 237
    Top = 18
    Width = 30
    Height = 13
    Caption = 'debug'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lHistory: TLinkLabel
    Left = 8
    Top = 243
    Width = 38
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = '<a>History</a>'
    TabOrder = 0
    OnClick = lHistoryClick
    ExplicitTop = 240
  end
  object BtnOK: TButton
    Left = 348
    Top = 239
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOK'
    TabOrder = 1
    OnClick = BtnOKClick
    ExplicitTop = 236
  end
  object eEmail: TEdit
    Left = 150
    Top = 118
    Width = 151
    Height = 13
    TabStop = False
    BorderStyle = bsNone
    ReadOnly = True
    TabOrder = 2
    Text = 'germandzmitry@gmail.com'
  end
  object mMiKTeX: TMemo
    Left = 113
    Top = 171
    Width = 310
    Height = 57
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      'mMiKTeX')
    ReadOnly = True
    TabOrder = 3
  end
end

object EditorEncodingForm: TEditorEncodingForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EditorEncodingForm'
  ClientHeight = 74
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    334
    74)
  PixelsPerInch = 96
  TextHeight = 13
  object lDocEncoding: TLabel
    Left = 8
    Top = 11
    Width = 63
    Height = 13
    Caption = 'lDocEncoding'
  end
  object BtnOk: TButton
    Left = 170
    Top = 41
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    TabOrder = 0
    OnClick = BtnOkClick
    ExplicitLeft = 481
    ExplicitTop = 314
  end
  object BtnCancel: TButton
    Left = 251
    Top = 41
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitLeft = 562
    ExplicitTop = 314
  end
  object cbEncoding: TComboBox
    Left = 136
    Top = 8
    Width = 190
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitWidth = 436
  end
end

object EditorEncodingForm: TEditorEncodingForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EditorEncodingForm'
  ClientHeight = 74
  ClientWidth = 264
  Color = clBtnFace
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
    264
    74)
  PixelsPerInch = 96
  TextHeight = 13
  object lEncoding: TLabel
    Left = 8
    Top = 11
    Width = 45
    Height = 13
    Caption = 'lEncoding'
  end
  object BtnOk: TButton
    Left = 100
    Top = 41
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOk'
    TabOrder = 0
    OnClick = BtnOkClick
    ExplicitLeft = 170
  end
  object BtnCancel: TButton
    Left = 181
    Top = 41
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitLeft = 251
  end
  object cbEncoding: TComboBox
    Left = 86
    Top = 8
    Width = 170
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
end

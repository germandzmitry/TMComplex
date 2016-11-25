object InsertTableForm: TInsertTableForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'InsertTableForm'
  ClientHeight = 99
  ClientWidth = 214
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
    214
    99)
  PixelsPerInch = 96
  TextHeight = 13
  object lRows: TLabel
    Left = 106
    Top = 11
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'lRows'
  end
  object lColumns: TLabel
    Left = 92
    Top = 38
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'lColumns'
  end
  object BtnCancel: TButton
    Left = 131
    Top = 66
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitLeft = 132
    ExplicitTop = 40
  end
  object BtnOk: TButton
    Left = 50
    Top = 66
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOk'
    Default = True
    TabOrder = 0
    OnClick = BtnOkClick
    ExplicitLeft = 283
    ExplicitTop = 168
  end
  object eRows: TEdit
    Left = 140
    Top = 8
    Width = 66
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 2
    Text = 'eRows'
  end
  object eColumns: TEdit
    Left = 140
    Top = 35
    Width = 66
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 3
    Text = 'eRows'
  end
end

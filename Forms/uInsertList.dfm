object InsertListForm: TInsertListForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'InsertListForm'
  ClientHeight = 73
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
    73)
  PixelsPerInch = 96
  TextHeight = 13
  object lList: TLabel
    Left = 8
    Top = 11
    Width = 126
    Height = 13
    Alignment = taRightJustify
    Caption = 'lList'
  end
  object BtnCancel: TButton
    Left = 131
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitTop = 60
  end
  object BtnOk: TButton
    Left = 50
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOk'
    Default = True
    TabOrder = 0
    OnClick = BtnOkClick
    ExplicitTop = 60
  end
  object eItemCount: TEdit
    Left = 140
    Top = 8
    Width = 66
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 2
    Text = 'eItemCount'
  end
end

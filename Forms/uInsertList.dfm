object InsertListForm: TInsertListForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'InsertListForm'
  ClientHeight = 93
  ClientWidth = 318
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
    318
    93)
  PixelsPerInch = 96
  TextHeight = 13
  object lList: TLabel
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = 'lList'
  end
  object BtnCancel: TButton
    Left = 235
    Top = 60
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 1
    OnClick = BtnCancelClick
    ExplicitLeft = 288
    ExplicitTop = 150
  end
  object BtnOk: TButton
    Left = 154
    Top = 60
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOk'
    Default = True
    TabOrder = 0
    OnClick = BtnOkClick
    ExplicitLeft = 207
    ExplicitTop = 150
  end
  object eItemCount: TEdit
    Left = 8
    Top = 27
    Width = 302
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 2
    Text = 'eItemCount'
    ExplicitWidth = 355
  end
end

object EditorGoToLineForm: TEditorGoToLineForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EditorGoToLineForm'
  ClientHeight = 73
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
    73)
  PixelsPerInch = 96
  TextHeight = 13
  object lLineNum: TLabel
    Left = 8
    Top = 11
    Width = 42
    Height = 13
    Caption = 'lLineNum'
  end
  object eLine: TEdit
    Left = 86
    Top = 8
    Width = 170
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 0
    Text = 'eLine'
  end
  object BtnOk: TButton
    Left = 100
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnOK'
    Default = True
    TabOrder = 1
    OnClick = BtnOkClick
    ExplicitLeft = 105
  end
  object BtnCancel: TButton
    Left = 181
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'BtnCancel'
    TabOrder = 2
    OnClick = BtnCancelClick
    ExplicitLeft = 89
  end
end

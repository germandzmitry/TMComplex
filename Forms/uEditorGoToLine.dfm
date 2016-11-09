object EditorGoToLineForm: TEditorGoToLineForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EditorGoToLineForm'
  ClientHeight = 73
  ClientWidth = 172
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
    172
    73)
  PixelsPerInch = 96
  TextHeight = 13
  object eLine: TEdit
    Left = 8
    Top = 8
    Width = 156
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 0
    Text = 'eLine'
  end
  object BtnOk: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancel: TButton
    Left = 89
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = BtnCancelClick
  end
end

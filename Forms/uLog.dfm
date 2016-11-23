object LogForm: TLogForm
  Left = 0
  Top = 0
  Caption = 'LogForm'
  ClientHeight = 315
  ClientWidth = 609
  Color = clBtnFace
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lvLog: TListView
    Left = 280
    Top = 32
    Width = 305
    Height = 128
    BorderStyle = bsNone
    Columns = <
      item
        Caption = 'Type'
      end
      item
        Caption = 'File'
        Width = 100
      end
      item
        Caption = 'Row'
      end
      item
        AutoSize = True
        Caption = 'Description'
      end>
    ColumnClick = False
    DoubleBuffered = True
    ReadOnly = True
    RowSelect = True
    ParentDoubleBuffered = False
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = lvLogDblClick
  end
  object mLog: TMemo
    Left = 56
    Top = 32
    Width = 218
    Height = 124
    BorderStyle = bsNone
    Color = clBlack
    DoubleBuffered = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'MemoLog')
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 609
    Height = 26
    ActionManager = ActMngLog
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
  end
  object ActListLog: TActionList
    Images = ilLog
    Left = 80
    Top = 264
    object ActLogConsole: TAction
      Category = 'Log'
      Caption = 'ActLogConsole'
      Checked = True
      GroupIndex = 1
      ImageIndex = 0
      OnExecute = ActLogConsoleExecute
    end
    object ActLogMessage: TAction
      Category = 'Log'
      Caption = 'ActLogMessage'
      GroupIndex = 1
      ImageIndex = 1
      OnExecute = ActLogMessageExecute
    end
    object ActLogClear: TAction
      Category = 'Log'
      Caption = 'ActLogClear'
      ImageIndex = 2
      OnExecute = ActLogClearExecute
    end
    object ActLogMsgError: TAction
      Category = 'Log'
      Caption = 'ActLogMsgError'
      ImageIndex = 3
      OnExecute = ActLogMsgErrorExecute
    end
    object ActLogMsgWarning: TAction
      Category = 'Log'
      Caption = 'ActLogMsgWarning'
      ImageIndex = 4
      OnExecute = ActLogMsgWarningExecute
    end
    object ActlogMsgBadBox: TAction
      Category = 'Log'
      Caption = 'ActlogMsgBadBox'
      ImageIndex = 5
      OnExecute = ActlogMsgBadBoxExecute
    end
  end
  object ilLog: TImageList
    Left = 160
    Top = 264
    Bitmap = {
      494C010106000800580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3FFFF63F3
      FFFF63F3FFFF63F3FFFF63F3FFFF0000000000000000E19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE19974FFE199
      74FFE19974FFE19974FFE19974FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000000000000000
      0000DCD6F651D3CBF369727273FF727272FF727272FF727272FF727272FF7272
      72FF727272FF727272FF727272FF00000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFC0E0F4FF82C2
      EAFF82C2EAFF82C2EAFF7EB9DEFF719CB7FF7FBBE1FF82C2EAFF82C2EAFF83C2
      EAFFCCE6F6FFFFFFFFFF808080FF00000000000000000000000000000000CDC4
      F2789784E6FF9784E6FFBAAEEDA5FDFDFE030000000000000000000000000000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFF000000FF97928FFF808080FFFFFFFFFFA5D3F0FF82C2
      EAFF82C2EAFF82C2EAFF719CB6FF505050FF74A3C0FF82C2EAFF82C2EAFF82C2
      EAFFB0D8F2FFFFFFFFFF808080FF000000000000000000000000CDC4F2789784
      E6FF9784E6FFA797E9D5EAE6F930000000000000000000000000000000000000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FFFFFFFFFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF000000FFFFFFFFFF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFD6EBF8FF82C2
      EAFF82C2EAFF82C2EAFF80BEE4FF719AB4FF81BFE6FF82C2EAFF82C2EAFF82C2
      EAFFE3F1FAFFFFFFFFFF808080FF0000000000000000DED8F64E9784E6FF9784
      E6FFA797E9D5F4F2FB18DAD4F5579C8AE6F0C0B5EF9600000000000000000000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FFFFFFFFFF0000
      00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFA2D2
      EFFF82C2EAFF82C2EAFF7FBAE0FF5B6A73FF81BFE6FF82C2EAFF82C2EAFFADD7
      F1FFFFFFFFFFFFFFFFFF808080FF0000000000000000CDC4F2789784E6FFA797
      E9D5F4F2FB18DBD5F5549784E5FC9784E6FF9784E6FFBDB1EE9F000000000000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FFFFFFFFFF0000
      00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFE8F4
      FBFF83C3EAFF82C2EAFF77A9C8FF53585AFF7AB0D2FF82C2EAFF87C4EBFFF0F8
      FDFFFFFFFFFFFFFFFFFF808080FF0000000000000000FDFDFE03B8ABEDABEAE6
      FA33DCD6F6519885E5F99784E6FF9784E6FF9784E6FF9784E6FFBEB2EE9C0000
      000000000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFB5DBF3FF82C2EAFF76A7C6FF505050FF7CB5D8FF82C2EAFFC1E1F5FFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000FDFDFE03F6F5
      FC129987E5F69784E6FF9784E6FF9784E6FF9784E6FF9784E6FF9784E6FFBEB2
      EE9C00000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFF5FAFDFF8AC6EBFF79ADCDFF5A676FFF7DB7DCFF91C9ECFFFAFDFEFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000000000000000
      0000B9ACEDA89784E6FF9784E6FF9784E6FF9784E6FF9784E6FF9784E6FF9784
      E6FFBEB2EE9C000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC9E4F6FF82C2EAFF82C2EAFF82C2EAFFD4EAF8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000000000000000
      0000FDFDFE03B8ABEDAB9784E6FF9784E6FF9784E6FF9784E6FF9784E6FF9784
      E6FF9784E6FFCDC4F2780000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFFCDCCCAFFCDCCCAFFCDCC
      CAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCCCAFFCDCC
      CAFFCDCCCAFFCDCCCAFFCDCCCAFF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFEFFFF9ACEEEFF82C2EAFFA4D3F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000000000000000
      000000000000FDFDFE03B8ABEDAB9784E6FF9784E6FF9784E6FF9784E6FF9784
      E6FF9784E6FFC4B9F08D0000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFFE0D9D3FFE0D9D3FFE0D9
      D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FFE0D9D3FF917968FFE0D9
      D3FF917968FFE0D9D3FF917968FF97928FFF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF000000000000000000000000000000000000
      00000000000000000000FDFDFE03B8ABEDAB9784E6FF9784E6FF9784E6FF9784
      E6FFB2A4EBBAFAF9FD090000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF0000000097928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF97928FFF9792
      8FFF97928FFF97928FFF97928FFF97928FFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
      0000000000000000000000000000FDFDFE03B8ABEDAB9784E6FF9784E6FFAFA1
      EBC0FAF9FD09000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFE03CAC1F17EC2B7EF93FAF9
      FD0900000000000000000000000000000000000000003953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953E0FF3953
      E0FF3953E0FF3953E0FF3953E0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000FFFFFFFF00000000FFFFFFFFFFFFFFFF00000001FFFF8001
      00000001F001800100000001E0FF800100000001C1FF800100000001807F8001
      00000001803F800100000001801F800100000001C00F800100000001F0078001
      00000001F003800100000001F803800100000001FC03800100000001FE078001
      FFFF0001FF0F8001FFFF0001FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActMngLog: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActLogConsole
            Caption = '&ActLogConsole'
            ImageIndex = 0
          end
          item
            Action = ActLogMessage
            Caption = 'A&ctLogMessage'
            ImageIndex = 1
          end
          item
            Caption = '-'
          end
          item
            Action = ActLogClear
            Caption = 'Ac&tLogClear'
            ImageIndex = 2
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = ActLogMsgError
            Caption = 'Act&LogMsgError'
            ImageIndex = 3
          end
          item
            Action = ActLogMsgWarning
            Caption = 'ActL&ogMsgWarning'
            ImageIndex = 4
          end
          item
            Action = ActlogMsgBadBox
            Caption = 'Actlo&gMsgBadBox'
            ImageIndex = 5
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActListLog
        Caption = 'ActListLog'
      end>
    Images = ilLog
    Left = 240
    Top = 264
    StyleName = 'Platform Default'
  end
end

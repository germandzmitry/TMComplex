object fEditor: TfEditor
  Left = 0
  Top = 0
  Caption = 'fEditor'
  ClientHeight = 350
  ClientWidth = 701
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Editor: TBCEditor
    Left = 8
    Top = 47
    Width = 425
    Height = 295
    Cursor = crIBeam
    ActiveLine.Indicator.Visible = False
    Caret.MultiEdit.Enabled = True
    Caret.NonBlinking.Enabled = False
    Caret.Options = []
    CodeFolding.Colors.Indent = clBlack
    CodeFolding.Hint.Font.Charset = DEFAULT_CHARSET
    CodeFolding.Hint.Font.Color = clWindowText
    CodeFolding.Hint.Font.Height = -11
    CodeFolding.Hint.Font.Name = 'Courier New'
    CodeFolding.Hint.Font.Style = []
    CodeFolding.Hint.Indicator.Glyph.Visible = False
    CompletionProposal.CloseChars = '()[]. '
    CompletionProposal.Columns = <
      item
      end>
    CompletionProposal.Font.Charset = DEFAULT_CHARSET
    CompletionProposal.Font.Color = clWindowText
    CompletionProposal.Font.Height = -11
    CompletionProposal.Font.Name = 'Courier New'
    CompletionProposal.Font.Style = []
    CompletionProposal.ShortCut = 16416
    CompletionProposal.Trigger.Chars = '.'
    CompletionProposal.Trigger.Enabled = False
    Directories.Colors = 'Colors'
    Directories.Highlighters = 'Highlighters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    LeftMargin.Font.Charset = DEFAULT_CHARSET
    LeftMargin.Font.Color = 13408665
    LeftMargin.Font.Height = -11
    LeftMargin.Font.Name = 'Courier New'
    LeftMargin.Font.Style = []
    LeftMargin.Width = 55
    Lines.Strings = (
      'Editor')
    LineSpacing = 0
    MatchingPair.Enabled = True
    Minimap.Font.Charset = DEFAULT_CHARSET
    Minimap.Font.Color = clWindowText
    Minimap.Font.Height = -1
    Minimap.Font.Name = 'Courier New'
    Minimap.Font.Style = []
    Minimap.Width = 140
    PopupMenu = Main.PopupAction
    RightMargin.Position = 80
    RightMargin.Visible = True
    Scroll.Options = [soShowVerticalScrollHint, soWheelClickMove]
    SpecialChars.Style = scsDot
    SyncEdit.ShortCut = 24650
    TabOrder = 0
    WordWrap.Enabled = False
    WordWrap.Indicator.Glyph.Data = {
      7E030000424D7E0300000000000036000000280000000F0000000E0000000100
      2000000000004803000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF008000000080000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF008000000080000000800000008000000080000000FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF008000000080000000FF00FF00FF00FF0080000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0080000000FF00FF00FF00FF0080000000FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00800000008000000080000000800000008000
      00008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00}
    WordWrap.Indicator.MaskColor = clFuchsia
    WordWrap.Width = wwwPage
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
  end
end

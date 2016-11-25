object LogLineFrame: TLogLineFrame
  Left = 0
  Top = 0
  Width = 490
  Height = 47
  AutoSize = True
  DoubleBuffered = True
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  ParentDoubleBuffered = False
  TabOrder = 0
  object BevelBottom: TBevel
    Left = 0
    Top = 44
    Width = 490
    Height = 3
    Align = alTop
    Shape = bsBottomLine
    ExplicitLeft = 3
    ExplicitTop = 105
  end
  object pFile: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pFile'
    TabOrder = 0
    ExplicitTop = -3
    object lFileLine: TLabel
      Left = 11
      Top = 6
      Width = 37
      Height = 13
      Caption = 'lFileLine'
    end
    object pColorFile: TPanel
      Left = 0
      Top = 0
      Width = 5
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      TabOrder = 0
    end
  end
  object pMsg: TPanel
    Left = 0
    Top = 25
    Width = 490
    Height = 19
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'pMsg'
    TabOrder = 1
    object lMsg: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 484
      Height = 13
      Align = alTop
      Caption = 'lMsg'
      Color = clWhite
      ParentColor = False
      WordWrap = True
      ExplicitTop = 11
    end
  end
end

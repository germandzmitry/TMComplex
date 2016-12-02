unit uLogLineHint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.RegularExpressions;

type
  TLogLineHintForm = class(TForm)
    lHint: TLabel;
    bFrame: TBevel;
    pColor: TPanel;
    pHint: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
  private
    FIndex: integer;
    { Private declarations }
    procedure SetPosition;
    procedure DrawFrame;
    procedure SetSize(aText: string);
  public
    { Public declarations }
    procedure CustomShow(aIndex: integer; aDes: string; aColor: TColor);
    procedure CustomHide();
  end;

var
  LogLineHintForm: TLogLineHintForm;

implementation

{$R *.dfm}

procedure TLogLineHintForm.FormCreate(Sender: TObject);
begin
  FIndex := -1;

  pHint.Align := alClient;
  pHint.Caption := '';

  pColor.Width := 5;
  pColor.Color := clRed;
  pColor.Align := alLeft;
  pColor.Caption := '';

  lHint.Align := alClient;
  bFrame.Align := alClient;
end;

procedure TLogLineHintForm.FormPaint(Sender: TObject);
begin
  DrawFrame;
end;

procedure TLogLineHintForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TLogLineHintForm.SetPosition;
var
  Rightmost, Bottommost: integer;
begin
  Rightmost := Screen.DesktopWidth;
  Bottommost := Screen.WorkAreaHeight;

  if Mouse.CursorPos.X > Rightmost - self.Width - 16 then
    self.Left := Rightmost - self.Width
  else
    self.Left := Mouse.CursorPos.X + 16;

  if Mouse.CursorPos.Y > Bottommost - self.Height - 16 then
    self.Top := Mouse.CursorPos.Y - self.Height - 10
  else
    self.Top := Mouse.CursorPos.Y + 16;
end;

procedure TLogLineHintForm.SetSize(aText: string);
var
  LRegEx: TRegEx;
  LMatches: TMatchCollection;
  LMaxStr: string;
  i, LMaxLen, LMaxIndex, LCalcWidth, lCalcHeight: integer;
  LRect: TRect;
begin
  if length(aText) = 0 then
    exit;

  LMaxLen := -1;
  LMaxIndex := -1;
  LRegEx := TRegEx.Create('(.+\n|.+$)');
  if LRegEx.IsMatch(aText) then
  begin
    LMatches := LRegEx.Matches(aText);
    for i := 0 to LMatches.Count - 1 do
      if length(LMatches.Item[i].Value) > LMaxLen then
      begin
        LMaxLen := length(LMatches.Item[i].Value);
        LMaxStr := LMatches.Item[i].Value;
        LMaxIndex := i;
      end;

    // считаем ширину по самой длинной строке
    LRect := Rect(1, 1, 10, 50);
    DrawText(lHint.Canvas.Handle, pwidechar(LMaxStr), LMaxLen, LRect, DT_LEFT or DT_CALCRECT);
    LCalcWidth := LRect.Right;

    // считаем высоту всего текста
    LRect := Rect(1, 1, LCalcWidth, 10);
    DrawText(lHint.Canvas.Handle, pwidechar(aText), length(aText), LRect, DT_LEFT or DT_WORDBREAK or
      DT_CALCRECT);
    lCalcHeight := LRect.Bottom;
  end;

  // if LCalcWidth < 100 then
  // LCalcWidth := 100;

  // Если строка слишком длинная, делаем короче
  // и заново считаем высоту и ширину текста
  if LCalcWidth > 400 then
  begin
    LCalcWidth := 400;
    LRect := Rect(1, 1, LCalcWidth, lCalcHeight);
    DrawText(lHint.Canvas.Handle, pwidechar(aText), length(aText), LRect, DT_LEFT or DT_WORDBREAK or
      DT_CALCRECT);
    LCalcWidth := LRect.Right;
    lCalcHeight := LRect.Bottom;
  end;

  // Делаю +10, т.к. видимо DrawText не считаем знаки _
  self.Width := LCalcWidth + pHint.Margins.Left + pHint.Margins.Right + pColor.Width +
    pColor.Margins.Left + pColor.Margins.Right + 10;
  self.Height := lCalcHeight + pHint.Margins.Top + pHint.Margins.Bottom + 2;

end;

procedure TLogLineHintForm.CustomShow(aIndex: integer; aDes: string; aColor: TColor);
begin
  SetPosition;
  lHint.Caption := aDes;
  if FIndex <> aIndex then
  begin
    SetSize(aDes);
    pColor.Color := aColor;
    ShowWindow(self.Handle, SW_SHOWNOACTIVATE);
    // Выставляем Visible := True, т.к. если не выставить,
    // то не будет работать метод Hide
    self.Visible := true;
    FIndex := aIndex;
  end;
end;

procedure TLogLineHintForm.DrawFrame;
begin
  // self.Canvas.Pen.Color := clBlack;
  // self.Canvas.Pen.Width := 1;
  // self.Canvas.MoveTo(1, 1);
  // self.Canvas.LineTo(self.Width - 2, 1);
  // self.Canvas.LineTo(self.Width - 2, self.Height - 2);
  // self.Canvas.LineTo(1, self.Height - 2);
  // self.Canvas.LineTo(1, 1);
end;

procedure TLogLineHintForm.CustomHide;
begin
  ShowWindow(self.Handle, SW_HIDE);
  FIndex := -1;
end;

end.

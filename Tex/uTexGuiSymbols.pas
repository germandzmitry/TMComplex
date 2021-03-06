unit uTexGuiSymbols;

interface

uses
  System.Classes, System.SysUtils, System.Types, Vcl.Controls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Dialogs, Vcl.ComCtrls, PngImage;

type
  TSymbol = class
  private
    FCommand: string;
    FMoveX: integer;
    FImage: TImage;
    FSpBtn: TSpeedButton;

    FOnSymbolClick: TNotifyEvent;

    procedure SymbolClick(Sender: TObject);
  protected
    procedure DoSymbolClick; dynamic;
  public
    constructor Create(aOwner: TComponent); overload;
    constructor Create(aOwner: TComponent; aCommand: string; aMoveX: integer; out aLeft: integer;
      aTop, aWidth, aHeight: integer; aResName, aName, aHint: string;
      Notify: TNotifyEvent); overload;
    constructor Create(aOwner: TComponent; aCommand: string; aMoveX: integer; out aLeft: integer;
      aTop: integer; aResName, aName, aHint: string; Notify: TNotifyEvent); overload;
    destructor Destroy(); Override;

    property Command: string read FCommand;
    property MoveX: integer read FMoveX;
    property Image: TImage read FImage write FImage;
    property SpBtn: TSpeedButton read FSpBtn write FSpBtn;
    property OnSymbolClick: TNotifyEvent read FOnSymbolClick write FOnSymbolClick;
  end;

const
  BtnHeight: integer = 24;
  BtnWidth: integer = 24;
  FLT: integer = 1;
  SLT: integer = 27;

type
  TSymbolClickEvent = procedure(Sender: TObject; const Symbol: TSymbol) of object;

type
  TTexGuiSymbols = class
    procedure DrawMath(aOwner: TComponent);
    procedure DrawGreek(aOwner: TComponent);
    procedure DrawSymbols(aOwner: TComponent);
    procedure DrawInternational(aOwner: TComponent);
    procedure DrawTypefase(aOwner: TComponent);
    procedure DrawFunctions(aOwner: TComponent);
    procedure Draw7(aOwner: TComponent);
    procedure Draw8(aOwner: TComponent);
    procedure Draw9(aOwner: TComponent);
    procedure Draw10(aOwner: TComponent);
    procedure Draw11(aOwner: TComponent);
    procedure Draw12(aOwner: TComponent);
    procedure Draw13(aOwner: TComponent);
  private
    FBevel: TList;
    FBtnImage: TList;
    FShowCaption: boolean;
    FShowPicture: boolean;

    FOnSymbolClick: TSymbolClickEvent;

    procedure Draw(aOwner: TComponent; aName, aResName, aHint: string; out aLeft: integer;
      aTop: integer; aCommand: string; aMoveX: integer); overload;
    procedure Draw(aOwner: TComponent; aName, aResName, aHint: string; out aLeft: integer;
      aTop, aWidth, aHeight: integer; aCommand: string; aMoveX: integer); overload;

    procedure DrawBevel(aOwner: TComponent; out aLeft: integer);

    procedure DrawMath1(aOwner: TComponent; out left: integer);
    procedure DrawMath2(aOwner: TComponent; out left: integer);
    procedure DrawMath3(aOwner: TComponent; out left: integer);
    procedure DrawMath4(aOwner: TComponent; out left: integer);
    procedure DrawMath5(aOwner: TComponent; out left: integer);
    procedure DrawMath6(aOwner: TComponent; out left: integer);
    procedure DrawMath7(aOwner: TComponent; out left: integer);
    procedure DrawMath8(aOwner: TComponent; out left: integer);
    procedure DrawMath9(aOwner: TComponent; out left: integer);

    procedure DrawGreek1(aOwner: TComponent; out left: integer);
    procedure DrawGreek2(aOwner: TComponent; out left: integer);
    procedure DrawGreek3(aOwner: TComponent; out left: integer);

    procedure DrawSymbols1(aOwner: TComponent; out left: integer);
    procedure DrawSymbols2(aOwner: TComponent; out left: integer);
    procedure DrawSymbols3(aOwner: TComponent; out left: integer);
    procedure DrawSymbols4(aOwner: TComponent; out left: integer);
    procedure DrawSymbols5(aOwner: TComponent; out left: integer);

    procedure DrawInternational1(aOwner: TComponent; out left: integer);
    procedure DrawInternational2(aOwner: TComponent; out left: integer);
    procedure DrawInternational3(aOwner: TComponent; out left: integer);
    procedure DrawInternational4(aOwner: TComponent; out left: integer);
    procedure DrawInternational5(aOwner: TComponent; out left: integer);

    procedure DrawTypeface1(aOwner: TComponent; out left: integer);

    procedure DrawFunctions1(aOwner: TComponent; out left: integer);
    procedure DrawFunctions2(aOwner: TComponent; out left: integer);

    procedure Draw71(aOwner: TComponent; out left: integer);
    procedure Draw72(aOwner: TComponent; out left: integer);
    procedure Draw73(aOwner: TComponent; out left: integer);
    procedure Draw75(aOwner: TComponent; out left: integer);

    procedure Draw81(aOwner: TComponent; out left: integer);
    procedure Draw82(aOwner: TComponent; out left: integer);
    procedure Draw83(aOwner: TComponent; out left: integer);

    procedure Draw91(aOwner: TComponent; out left: integer);
    procedure Draw92(aOwner: TComponent; out left: integer);
    procedure Draw93(aOwner: TComponent; out left: integer);
    procedure Draw94(aOwner: TComponent; out left: integer);

    procedure Draw101(aOwner: TComponent; out left: integer);
    procedure Draw102(aOwner: TComponent; out left: integer);
    procedure Draw103(aOwner: TComponent; out left: integer);

    procedure Draw111(aOwner: TComponent; out left: integer);
    procedure Draw112(aOwner: TComponent; out left: integer);
    procedure Draw113(aOwner: TComponent; out left: integer);

    procedure Draw121(aOwner: TComponent; out left: integer);
    procedure Draw122(aOwner: TComponent; out left: integer);
    procedure Draw123(aOwner: TComponent; out left: integer);

    procedure Draw131(aOwner: TComponent; out left: integer);
    procedure Draw132(aOwner: TComponent; out left: integer);

    procedure SymbolClick(Sender: TObject);
  protected
    procedure DoSymbolClick(Symbol: TSymbol); dynamic;
  public
    constructor Create();
    destructor Destroy(); Override;

    property ShowCaption: boolean read FShowCaption write FShowCaption;
    property ShowPictrue: boolean read FShowPicture write FShowPicture;

    property OnSymbolClick: TSymbolClickEvent read FOnSymbolClick write FOnSymbolClick;
  end;

implementation

{ TSymbol }

constructor TSymbol.Create(aOwner: TComponent);
begin
  self.FCommand := '';
  self.FMoveX := 0;

  self.FImage := TImage.Create(aOwner);
  FImage.Parent := (aOwner as TWinControl);
  FImage.Center := true;

  FSpBtn := TSpeedButton.Create(aOwner);
  FSpBtn.Parent := (aOwner as TWinControl);
  FSpBtn.Flat := true;
  FSpBtn.ShowHint := true;
end;

constructor TSymbol.Create(aOwner: TComponent; aCommand: string; aMoveX: integer;
  out aLeft: integer; aTop: integer; aResName, aName, aHint: string; Notify: TNotifyEvent);
begin
  Create(aOwner, aCommand, aMoveX, aLeft, aTop, BtnWidth, BtnHeight, aResName, aName,
    aHint, Notify);
end;

constructor TSymbol.Create(aOwner: TComponent; aCommand: string; aMoveX: integer;
  out aLeft: integer; aTop, aWidth, aHeight: integer; aResName, aName, aHint: string;
  Notify: TNotifyEvent);
var
  Png: TPngImage;
begin
  self.Create(aOwner);

  self.FCommand := aCommand;
  self.FMoveX := aMoveX;

  self.FImage.left := aLeft;
  self.FImage.Top := aTop;
  self.FImage.Width := aWidth;
  self.FImage.Height := aHeight;

  Png := TPngImage.Create;
  try
    Png.LoadFromResourceName(HInstance, aResName);
    FImage.Picture.Graphic := Png;
  finally
    Png.Free;
  end;

  self.FSpBtn.left := aLeft;
  self.FSpBtn.Top := aTop;
  self.FSpBtn.Width := aWidth;
  self.FSpBtn.Height := aHeight;
  self.FSpBtn.Name := aName;
  // Self.FSpBtn.Caption := aName;
  self.FSpBtn.Hint := aHint;
  self.FSpBtn.OnClick := SymbolClick;

  self.OnSymbolClick := Notify;
  Inc(aLeft, aWidth);
end;

destructor TSymbol.Destroy;
begin
  FCommand := '';
  FreeAndNil(FSpBtn);
  FreeAndNil(FImage);
end;

procedure TSymbol.SymbolClick(Sender: TObject);
begin
  DoSymbolClick;
end;

procedure TSymbol.DoSymbolClick();
begin
  if Assigned(FOnSymbolClick) then
    FOnSymbolClick(self);
end;

{ TTexGuiSymbols }

constructor TTexGuiSymbols.Create();
begin
  FShowCaption := false;
  FShowPicture := true;

  FBevel := TList.Create;
  FBtnImage := TList.Create;
end;

destructor TTexGuiSymbols.Destroy;
var
  s: TSymbol;
  b: TBevel;
begin
  while FBevel.Count > 0 do
  begin
    b := FBevel.Last;
    FBevel.Delete(FBevel.Count - 1);
    b.Free;
  end;
  FBevel.Free;

  while FBtnImage.Count > 0 do
  begin
    s := FBtnImage.Last;
    FBtnImage.Delete(FBtnImage.Count - 1);
    s.Free;
  end;
  FBtnImage.Free;

end;

procedure TTexGuiSymbols.Draw(aOwner: TComponent; aName, aResName, aHint: string;
  out aLeft: integer; aTop: integer; aCommand: string; aMoveX: integer);
begin
  FBtnImage.Add(TSymbol.Create(aOwner, aCommand, aMoveX, aLeft, aTop, aResName, aName, aHint,
    SymbolClick));
end;

procedure TTexGuiSymbols.Draw(aOwner: TComponent; aName, aResName, aHint: string;
  out aLeft: integer; aTop, aWidth, aHeight: integer; aCommand: string; aMoveX: integer);
begin
  FBtnImage.Add(TSymbol.Create(aOwner, aCommand, aMoveX, aLeft, aTop, aWidth, aHeight, aResName,
    aName, aHint, SymbolClick));
end;

procedure TTexGuiSymbols.DrawBevel(aOwner: TComponent; out aLeft: integer);
var
  b: TBevel;
begin
  Inc(aLeft, 6);

  b := TBevel.Create(aOwner);
  with b do
  begin
    Parent := (aOwner as TWinControl);
    left := aLeft;
    Top := 3;
    Width := 1;
    Height := (aOwner as TWinControl).Height - 6;
    Shape := bsLeftLine;
  end;
  Inc(aLeft, 6);
  FBevel.Add(b);
end;

procedure TTexGuiSymbols.DrawMath(aOwner: TComponent);
var
  pLeft: integer;
  p: TPanel;
  ps: TPageScroller;
  owner: TComponent;
begin
  p := TPanel.Create(aOwner);
  p.Parent := aOwner as TWinControl;
  p.BevelOuter := bvNone;
  p.left := 0;
  p.Top := 0;
  p.Width := p.Parent.Width;
  p.Height := p.Parent.Height;
  owner := p;

  pLeft := 2;
  DrawMath1(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath2(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath3(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath4(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath5(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath6(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath7(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath8(owner, pLeft);
  DrawBevel(owner, pLeft);
  DrawMath9(owner, pLeft);

  p.Width := pLeft;

  ps := TPageScroller.Create(aOwner);
  ps.Parent := aOwner as TWinControl;
  ps.left := 0;
  ps.Top := 0;
  ps.Width := p.Width;
  ps.Height := p.Height;
  ps.Align := alClient;
  ps.Control := p;
  ps.Visible := true;
end;

procedure TTexGuiSymbols.DrawGreek(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  DrawGreek1(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawGreek2(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawGreek3(aOwner, pLeft);
end;

procedure TTexGuiSymbols.DrawSymbols(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  DrawSymbols1(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawSymbols2(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawSymbols3(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawSymbols4(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawSymbols5(aOwner, pLeft);
end;

procedure TTexGuiSymbols.DrawInternational(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  DrawInternational1(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawInternational2(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawInternational3(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawInternational4(aOwner, pLeft);
  // DrawBevel(aOwner, pLeft);
  // DrawInternational5(aOwner, pLeft);
end;

procedure TTexGuiSymbols.DrawTypefase(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  DrawTypeface1(aOwner, pLeft);
end;

procedure TTexGuiSymbols.DrawFunctions(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  DrawFunctions1(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  DrawFunctions2(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw7(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw71(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw72(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw73(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw75(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw8(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw81(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw82(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw83(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw9(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw91(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw92(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw93(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw94(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw10(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw101(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw102(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw103(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw11(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw111(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw112(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw113(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw12(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw121(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw122(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw123(aOwner, pLeft);
end;

procedure TTexGuiSymbols.Draw13(aOwner: TComponent);
var
  pLeft: integer;
begin
  pLeft := 2;
  Draw131(aOwner, pLeft);
  DrawBevel(aOwner, pLeft);
  Draw132(aOwner, pLeft);
end;

procedure TTexGuiSymbols.SymbolClick(Sender: TObject);
begin
  DoSymbolClick(Sender as TSymbol);
end;

procedure TTexGuiSymbols.DoSymbolClick(Symbol: TSymbol);
begin
  if Assigned(FOnSymbolClick) then
    FOnSymbolClick(self, Symbol);
end;

procedure TTexGuiSymbols.DrawGreek1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  FBtnImage.Add(TSymbol.Create(aOwner, '\Gamma', 0, sLeft, FLT, 'gamma', 'btn_greek1_00', 'Gamma',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Delta', 0, sLeft, FLT, 'delta', 'btn_greek1_01', 'Delta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Theta', 0, sLeft, FLT, 'theta', 'btn_greek1_02', 'Theta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Lambda', 0, sLeft, FLT, 'lambda', 'btn_greek1_03',
    'Lambda', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Xi', 0, sLeft, FLT, 'xi', 'btn_greek1_04', 'Xi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Pi', 0, sLeft, FLT, 'pi', 'btn_greek1_05', 'Pi',
    SymbolClick));

  sLeft := left;
  FBtnImage.Add(TSymbol.Create(aOwner, '\Sigma', 0, sLeft, SLT, 'sigma', 'btn_greek1_10', 'Sigma',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Upsilon', 0, sLeft, SLT, 'upsilon', 'btn_greek1_11',
    'Upsilon', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Phi', 0, sLeft, SLT, 'phi', 'btn_greek1_12', 'Phi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Psi', 0, sLeft, SLT, 'psi', 'btn_greek1_13', 'Psi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\Omega', 0, sLeft, SLT, 'omega', 'btn_greek1_14', 'Omega',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\$', 0, sLeft, SLT, 'dol', 'btn_greek1_15', '$',
    SymbolClick));

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawGreek2(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  FBtnImage.Add(TSymbol.Create(aOwner, '\alpha', 0, sLeft, FLT, 'alphas', 'btn_greek2_00', 'alpha',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\beta', 0, sLeft, FLT, 'betas', 'btn_greek2_01', 'beta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\gamma', 0, sLeft, FLT, 'gammas', 'btn_greek2_02', 'gamma',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\delta', 0, sLeft, FLT, 'deltas', 'btn_greek2_03', 'delta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\epsilon', 0, sLeft, FLT, 'epsilons', 'btn_greek2_04',
    'epsilon', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\varepsilon', 0, sLeft, FLT, 'varepsilons', 'btn_greek2_05',
    'varepsilon', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\zeta', 0, sLeft, FLT, 'zetas', 'btn_greek2_06', 'zeta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\eta', 0, sLeft, FLT, 'etas', 'btn_greek2_07', 'eta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\theta', 0, sLeft, FLT, 'thetas', 'btn_greek2_08', 'theta',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\vartheta', 0, sLeft, FLT, 'varthetas', 'btn_greek2_09',
    'vartheta', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\iota', 0, sLeft, FLT, 'iotas', 'btn_greek2_010', 'iota',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\kappa', 0, sLeft, FLT, 'kappas', 'btn_greek2_011', 'kappa',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\lambda', 0, sLeft, FLT, 'lambdas', 'btn_greek2_012',
    'lambda', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\mu', 0, sLeft, FLT, 'mus', 'btn_greek2_013', 'mu',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\nu', 0, sLeft, FLT, 'nus', 'btn_greek2_014', 'nu',
    SymbolClick));

  sLeft := left;
  FBtnImage.Add(TSymbol.Create(aOwner, '\xi', 0, sLeft, SLT, 'xis', 'btn_greek2_10', 'xi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, 'o', 0, sLeft, SLT, 'os', 'btn_greek2_11', '0',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\pi', 0, sLeft, SLT, 'pis', 'btn_greek2_12', 'pi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\varpi', 0, sLeft, SLT, 'varpis', 'btn_greek2_13', 'varpi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\rho', 0, sLeft, SLT, 'rhos', 'btn_greek2_14', 'rho',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\varrho', 0, sLeft, SLT, 'varrhos', 'btn_greek2_15',
    'varrho', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\sigma', 0, sLeft, SLT, 'sigmas', 'btn_greek2_16', 'sigma',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\varsigma', 0, sLeft, SLT, 'varsigmas', 'btn_greek2_17',
    'varsigma', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\tau', 0, sLeft, SLT, 'taus', 'btn_greek2_18', 'tau',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\upsilon', 0, sLeft, SLT, 'upsilons', 'btn_greek2_19',
    'upsilon', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\phi', 0, sLeft, SLT, 'phis', 'btn_greek2_110', 'phi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\varphi', 0, sLeft, SLT, 'varphis', 'btn_greek2_111',
    'varphi', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\chi', 0, sLeft, SLT, 'chis', 'btn_greek2_112', 'chi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\psi', 0, sLeft, SLT, 'psis', 'btn_greek2_113', 'psi',
    SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\omega', 0, sLeft, SLT, 'omegas', 'btn_greek2_114', 'omega',
    SymbolClick));

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawGreek3(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_greek3_00', 'digamma', 'digamma', sLeft, FLT, '\digamma', 0);
  Draw(aOwner, 'btn_greek3_01', 'beth', 'beth', sLeft, FLT, '\beth', 0);

  sLeft := left;
  Draw(aOwner, 'btn_greek3_10', 'gimel', 'gimel', sLeft, SLT, '\gimel', 0);
  Draw(aOwner, 'btn_greek3_11', 'daleth', 'daleth', sLeft, SLT, '\daleth', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawSymbols1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm1_00', 'aleph', 'aleph', sLeft, FLT, '\aleph', 0);
  Draw(aOwner, 'btn_sm1_01', 'hbar', 'hbar', sLeft, FLT, '\hbar', 0);
  Draw(aOwner, 'btn_sm1_02', 'imath', 'imath', sLeft, FLT, '\imath', 0);
  Draw(aOwner, 'btn_sm1_03', 'jmath', 'jmath', sLeft, FLT, '\jmath', 0);
  Draw(aOwner, 'btn_sm1_04', 'ell', 'ell', sLeft, FLT, '\ell', 0);
  Draw(aOwner, 'btn_sm1_05', 'wp', 'wp', sLeft, FLT, '\wp', 0);
  Draw(aOwner, 'btn_sm1_06', 're', 'Re', sLeft, FLT, '\re', 0);
  Draw(aOwner, 'btn_sm1_07', 'im', 'Im', sLeft, FLT, '\im', 0);
  Draw(aOwner, 'btn_sm1_08', 'prime', 'prime', sLeft, FLT, '\prime', 0);
  Draw(aOwner, 'btn_sm1_09', 'emptyset', 'emptyset', sLeft, FLT, '\emptyset', 0);
  Draw(aOwner, 'btn_sm1_010', 'angle', 'angle', sLeft, FLT, '\angle', 0);
  Draw(aOwner, 'btn_sm1_011', 'mho', 'mho', sLeft, FLT, '\mho', 0);
  Draw(aOwner, 'btn_sm1_012', 'cdot', 'cdot', sLeft, FLT, '\cdot', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm1_10', 'infty', 'infty', sLeft, SLT, '\infty', 0);
  Draw(aOwner, 'btn_sm1_11', 'partial', 'partial', sLeft, SLT, '\partial', 0);
  Draw(aOwner, 'btn_sm1_12', 'nabla', 'nabla', sLeft, SLT, '\nabla', 0);
  Draw(aOwner, 'btn_sm1_13', 'triangle', 'triangle', sLeft, SLT, '\triangle', 0);
  Draw(aOwner, 'btn_sm1_14', 'forall', 'forall', sLeft, SLT, '\forall', 0);
  Draw(aOwner, 'btn_sm1_15', 'exists', 'exists', sLeft, SLT, '\exists', 0);
  Draw(aOwner, 'btn_sm1_16', 'neg', 'neg', sLeft, SLT, '\neg', 0);
  Draw(aOwner, 'btn_sm1_17', 'surd', 'surd', sLeft, SLT, '\surd', 0);
  Draw(aOwner, 'btn_sm1_18', 'top', 'top', sLeft, SLT, '\top', 0);
  Draw(aOwner, 'btn_sm1_19', 'bot', 'bot', sLeft, SLT, '\bot', 0);
  Draw(aOwner, 'btn_sm1_110', 'backslash', 'backslash', sLeft, SLT, '\backslash', 0);
  Draw(aOwner, 'btn_sm1_111', 'box', 'Box', sLeft, SLT, '\box', 0);
  Draw(aOwner, 'btn_sm1_112', 'diamond', 'diamond', sLeft, SLT, '\diamond', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawSymbols2(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm2_00', 'dag', 'dag', sLeft, FLT, '\dag', 0);
  Draw(aOwner, 'btn_sm2_01', 'ddag', 'ddag', sLeft, FLT, '\ddag', 0);
  Draw(aOwner, 'btn_sm2_02', 'symbols_S', 'S', sLeft, FLT, '\S', 0);
  Draw(aOwner, 'btn_sm2_03', 'symbols_P', 'P', sLeft, FLT, '\P', 0);
  Draw(aOwner, 'btn_sm2_04', 'maltese', 'maltese', sLeft, FLT, '\maltese', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm2_10', 'copyright', 'copyright', sLeft, SLT, '\copyright', 0);
  Draw(aOwner, 'btn_sm2_11', 'circledR', 'circledR', sLeft, SLT, '\circledR', 0);
  Draw(aOwner, 'btn_sm2_12', 'pounds', 'pounds', sLeft, SLT, '\pounds', 0);
  Draw(aOwner, 'btn_sm2_13', 'yen', 'yen', sLeft, SLT, '\yen', 0);
  Draw(aOwner, 'btn_sm2_14', 'checkmark', 'checkmark', sLeft, SLT, '\checkmark', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawSymbols3(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm3_00', 'flat', 'flat', sLeft, FLT, '\flat', 0);
  Draw(aOwner, 'btn_sm3_01', 'natural', 'natural', sLeft, FLT, '\natural', 0);
  Draw(aOwner, 'btn_sm3_02', 'sharp', 'sharp', sLeft, FLT, '\sharp', 0);
  Draw(aOwner, 'btn_sm3_03', 'r3303', '||', sLeft, FLT, '\|', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm3_10', 'clubsuit', 'clubsuit', sLeft, SLT, '\clubsuit', 0);
  Draw(aOwner, 'btn_sm3_11', 'diamondsuit', 'diamondsuit', sLeft, SLT, '\diamondsuit', 0);
  Draw(aOwner, 'btn_sm3_12', 'heartsuit', 'heartsuit', sLeft, SLT, '\heartsuit', 0);
  Draw(aOwner, 'btn_sm3_13', 'spadesuit', 'spadesuit', sLeft, SLT, '\spadesuit', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawSymbols4(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm4_00', 'ulcorner', 'ulcorner', sLeft, FLT, '\ulcorner', 0);
  Draw(aOwner, 'btn_sm4_01', 'urcorner', 'urcorner', sLeft, FLT, '\urcorner', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm4_10', 'llcorner', 'llcorner', sLeft, SLT, '\llcorner', 0);
  Draw(aOwner, 'btn_sm4_11', 'lrcorner', 'lrcorner', sLeft, SLT, '\lrcorner', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawSymbols5(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm5_00', 'ldots', 'ldots', sLeft, FLT, '\ldots', 0);
  Draw(aOwner, 'btn_sm5_01', 'cdots', 'cdots', sLeft, FLT, '\cdots', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm5_10', 'vdots', 'vdots', sLeft, SLT, '\vdots', 0);
  Draw(aOwner, 'btn_sm5_11', 'ddots', 'ddots', sLeft, SLT, '\ddots', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawInternational1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_int1_00', 'r4101', '\`{o}', sLeft, FLT, '\`{}', -1);
  Draw(aOwner, 'btn_int1_01', 'r4102', '\''{o}', sLeft, FLT, '\''{}', -1);
  Draw(aOwner, 'btn_int1_02', 'r4103', '\^{o}', sLeft, FLT, '\^{}', -1);
  Draw(aOwner, 'btn_int1_03', 'r4104', '\"{o}', sLeft, FLT, '\"{}', -1);
  Draw(aOwner, 'btn_int1_04', 'r4105', '\~{o}', sLeft, FLT, '\~{}', -1);
  Draw(aOwner, 'btn_int1_05', 'r4106', '\={o}', sLeft, FLT, '\={}', -1);
  Draw(aOwner, 'btn_int1_06', 'r4107', '\.{o}', sLeft, FLT, '\.{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_int1_10', 'r4111', '\u{o}', sLeft, SLT, '\u{}', -1);
  Draw(aOwner, 'btn_int1_11', 'r4112', '\v{o}', sLeft, SLT, '\v{}', -1);
  Draw(aOwner, 'btn_int1_12', 'r4113', '\H{o}', sLeft, SLT, '\H{}', -1);
  Draw(aOwner, 'btn_int1_13', 'r4114', '\t{oo}', sLeft, SLT, '\t{}', -1);
  Draw(aOwner, 'btn_int1_14', 'r4115', '\c{o}', sLeft, SLT, '\c{}', -1);
  Draw(aOwner, 'btn_int1_15', 'r4116', '\d{o}', sLeft, SLT, '\d{}', -1);
  Draw(aOwner, 'btn_int1_16', 'r4117', '\b{o}', sLeft, SLT, '\b{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawInternational2(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_int2_00', 'r4201', '\c{c}', sLeft, FLT, '\c{}', -1);
  Draw(aOwner, 'btn_int2_01', 'r4202', '?`', sLeft, FLT, '?`', 0);

  sLeft := left;
  Draw(aOwner, 'btn_int2_10', 'r4211', '\c{C}', sLeft, SLT, '\c{}', -1);
  Draw(aOwner, 'btn_int2_11', 'r4212', '!`', sLeft, SLT, '!`', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawInternational3(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm3_00', 'r4301', '{\oe}', sLeft, FLT, '{\oe}', 0);
  Draw(aOwner, 'btn_sm3_01', 'r4302', '{\ae}', sLeft, FLT, '{\ae}', 0);
  Draw(aOwner, 'btn_sm3_02', 'r4303', '{\aa}', sLeft, FLT, '{\aa}', 0);
  Draw(aOwner, 'btn_sm3_03', 'r4304', '{\o}', sLeft, FLT, '{\o}', 0);
  Draw(aOwner, 'btn_sm3_04', 'r4305', '{\l}', sLeft, FLT, '{\l}', 0);
  Draw(aOwner, 'btn_sm3_05', 'r4306', '{\i}', sLeft, FLT, '{\i}', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm3_10', 'r4311', '{\OE}', sLeft, SLT, '{\OE}', 0);
  Draw(aOwner, 'btn_sm3_11', 'r4312', '{\AE}', sLeft, SLT, '{\AE}', 0);
  Draw(aOwner, 'btn_sm3_12', 'r4313', '{\AA}', sLeft, SLT, '{\AA}', 0);
  Draw(aOwner, 'btn_sm3_13', 'r4314', '{\O}', sLeft, SLT, '{\O}', 0);
  Draw(aOwner, 'btn_sm3_14', 'r4315', '{\L}', sLeft, SLT, '{\L}', 0);
  Draw(aOwner, 'btn_sm3_15', 'r4316', '{\euro}', sLeft, SLT, '{\euro}', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawInternational4(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_sm4_00', 'r4401', '\"{a}', sLeft, FLT, '\"{a}', 0);
  Draw(aOwner, 'btn_sm4_01', 'r4402', '\"{e}', sLeft, FLT, '\"{e}', 0);
  Draw(aOwner, 'btn_sm4_02', 'r4403', '\"{\i}', sLeft, FLT, '\"{\i}', 0);
  Draw(aOwner, 'btn_sm4_03', 'r4404', '\"{o}', sLeft, FLT, '\"{o}', 0);
  Draw(aOwner, 'btn_sm4_04', 'r4405', '\"{u}', sLeft, FLT, '\"{u}', 0);
  Draw(aOwner, 'btn_sm4_05', 'r4406', '\"{y}', sLeft, FLT, '\"{y}', 0);
  Draw(aOwner, 'btn_sm4_06', 'r4407', '{\ss}', sLeft, FLT, '{\ss}', 0);

  sLeft := left;
  Draw(aOwner, 'btn_sm4_10', 'r4411', '\"{A}', sLeft, SLT, '\"{A}', 0);
  Draw(aOwner, 'btn_sm4_11', 'r4412', '\"{E}', sLeft, SLT, '\"{E}', 0);
  Draw(aOwner, 'btn_sm4_12', 'r4413', '\"{I}', sLeft, SLT, '\"{I}', 0);
  Draw(aOwner, 'btn_sm4_13', 'r4414', '\"{O}', sLeft, SLT, '\"{O}', 0);
  Draw(aOwner, 'btn_sm4_14', 'r4415', '\"{U}', sLeft, SLT, '\"{U}', 0);
  Draw(aOwner, 'btn_sm4_15', 'r4416', '\"{Y}', sLeft, SLT, '\"{Y}', 0);
  // Draw(aOwner, 'btn_sm4_06', 'r4404', '{\ss}', sLeft, FLT, '{\ss}', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawInternational5(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  // Draw(aOwner, 'btn_sm5_00', 'ldots', 'ldots', sLeft, FLT, '\ldots', 0);

  sLeft := left;
  // Draw(aOwner, 'btn_sm5_10', 'vdots', 'vdots', sLeft, SLT, '\vdots', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawTypeface1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_tp1_00', 'emph', '\emph{...}', sLeft, FLT, 90, BtnHeight, '\emph{}', -1);
  Draw(aOwner, 'btn_tp1_01', 'textrm', '\textrm{...}', sLeft, FLT, 90, BtnHeight, '\textrm{}', -1);
  Draw(aOwner, 'btn_tp1_02', 'textbf', '\textbf{...}', sLeft, FLT, 90, BtnHeight, '\textbf{}', -1);
  Draw(aOwner, 'btn_tp1_03', 'textsf', '\textsf{...}', sLeft, FLT, 90, BtnHeight, '\textsf{}', -1);
  Draw(aOwner, 'btn_tp1_04', 'texttt', '\texttt{...}', sLeft, FLT, 90, BtnHeight, '\texttt{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_tp1_10', 'textmd', '\textmd{...}', sLeft, SLT, 90, BtnHeight, '\textmd{}', -1);
  Draw(aOwner, 'btn_tp1_11', 'textit', '\textit{...}', sLeft, SLT, 90, BtnHeight, '\textit{}', -1);
  Draw(aOwner, 'btn_tp1_12', 'textsc', '\textsc{...}', sLeft, SLT, 90, BtnHeight, '\textsc{}', -1);
  Draw(aOwner, 'btn_tp1_13', 'textsl', '\textsl{...}', sLeft, SLT, 90, BtnHeight, '\textsl{}', -1);
  Draw(aOwner, 'btn_tp1_14', 'verb', '\verb{...}', sLeft, SLT, 90, BtnHeight, '\verb{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawFunctions1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_fn1_00', 'arccos', 'arccos', sLeft, FLT, 65, BtnHeight, '\arccos', 0);
  Draw(aOwner, 'btn_fn1_01', 'arcsin', 'arcsin', sLeft, FLT, 65, BtnHeight, '\arcsin', 0);
  Draw(aOwner, 'btn_fn1_02', 'arctan', 'arctan', sLeft, FLT, 65, BtnHeight, '\arctan', 0);

  sLeft := left;
  Draw(aOwner, 'btn_fn1_10', 'lim', 'lim', sLeft, SLT, 65, BtnHeight, '\lim', 0);
  Draw(aOwner, 'btn_fn1_11', 'liminf', 'liminf', sLeft, SLT, 65, BtnHeight, '\liminf', 0);
  Draw(aOwner, 'btn_fn1_12', 'limsup', 'limsup', sLeft, SLT, 65, BtnHeight, '\limsup', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawFunctions2(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_fn2_00', 'arg', 'arg', sLeft, FLT, 45, BtnHeight, '\arg', 0);
  FBtnImage.Add(TSymbol.Create(aOwner, '\cos', 0, sLeft, FLT, 45, BtnHeight, 'cos', 'btn_fn2_01',
    'cos', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\cosh', 0, sLeft, FLT, 45, BtnHeight, 'cosh', 'btn_fn2_02',
    'cosh', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\cot', 0, sLeft, FLT, 45, BtnHeight, 'cot', 'btn_fn2_03',
    'cot', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\coth', 0, sLeft, FLT, 45, BtnHeight, 'coth', 'btn_fn2_04',
    'coth', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\csc', 0, sLeft, FLT, 45, BtnHeight, 'csc', 'btn_fn2_05',
    'csc', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\det', 0, sLeft, FLT, 45, BtnHeight, 'det', 'btn_fn2_06',
    'det', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\dim', 0, sLeft, FLT, 45, BtnHeight, 'dim', 'btn_fn2_07',
    'dim', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\exp', 0, sLeft, FLT, 45, BtnHeight, 'exp', 'btn_fn2_08',
    'exp', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\gcd', 0, sLeft, FLT, 45, BtnHeight, 'gcd', 'btn_fn2_09',
    'gcd', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\hom', 0, sLeft, FLT, 45, BtnHeight, 'hom', 'btn_fn2_010',
    'hom', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\inf', 0, sLeft, FLT, 45, BtnHeight, 'inf', 'btn_fn2_011',
    'inf', SymbolClick));

  sLeft := left;
  FBtnImage.Add(TSymbol.Create(aOwner, '\ker', 0, sLeft, SLT, 45, BtnHeight, 'ker', 'btn_fn2_10',
    'ker', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\lg', 0, sLeft, SLT, 45, BtnHeight, 'lg', 'btn_fn2_11',
    'lg', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\ln', 0, sLeft, SLT, 45, BtnHeight, 'ln', 'btn_fn2_12',
    'ln', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\log', 0, sLeft, SLT, 45, BtnHeight, 'log', 'btn_fn2_13',
    'log', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\max', 0, sLeft, SLT, 45, BtnHeight, 'max', 'btn_fn2_14',
    'max', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\min', 0, sLeft, SLT, 45, BtnHeight, 'min', 'btn_fn2_15',
    'min', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\sec', 0, sLeft, SLT, 45, BtnHeight, 'sec', 'btn_fn2_16',
    'sec', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\sin', 0, sLeft, SLT, 45, BtnHeight, 'sin', 'btn_fn2_17',
    'sin', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\sinh', 0, sLeft, SLT, 45, BtnHeight, 'sinh', 'btn_fn2_18',
    'sinh', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\sup', 0, sLeft, SLT, 45, BtnHeight, 'sup', 'btn_fn2_19',
    'sup', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\tan', 0, sLeft, SLT, 45, BtnHeight, 'tan', 'btn_fn2_110',
    'tan', SymbolClick));
  FBtnImage.Add(TSymbol.Create(aOwner, '\tanh', 0, sLeft, SLT, 45, BtnHeight, 'tanh', 'btn_fn2_111',
    'tanh', SymbolClick));

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw71(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_7_1_00', 'r7101', '(', sLeft, FLT, '(', 0);
  Draw(aOwner, 'btn_7_1_01', 'r7102', '[', sLeft, FLT, '[', 0);
  Draw(aOwner, 'btn_7_1_02', 'r7103', '{', sLeft, FLT, '\{', 0);
  Draw(aOwner, 'btn_7_1_03', 'r7104', 'lfloor', sLeft, FLT, '\lfloor', 0);
  Draw(aOwner, 'btn_7_1_04', 'r7105', 'lceil', sLeft, FLT, '\lceil', 0);
  Draw(aOwner, 'btn_7_1_05', 'r7106', 'langle', sLeft, FLT, '\langle', 0);
  Draw(aOwner, 'btn_7_1_06', 'r7107', '/', sLeft, FLT, '/', 0);
  Draw(aOwner, 'btn_7_1_07', 'r7108', '|', sLeft, FLT, '|', 0);

  sLeft := left;
  Draw(aOwner, 'btn_7_1_10', 'r7111', ')', sLeft, SLT, ')', 0);
  Draw(aOwner, 'btn_7_1_11', 'r7112', ']', sLeft, SLT, ']', 0);
  Draw(aOwner, 'btn_7_1_12', 'r7113', '}', sLeft, SLT, '\}', 0);
  Draw(aOwner, 'btn_7_1_13', 'r7114', 'rfloor', sLeft, SLT, '\rfloor', 0);
  Draw(aOwner, 'btn_7_1_14', 'r7115', 'rceil', sLeft, SLT, '\rceil', 0);
  Draw(aOwner, 'btn_7_1_15', 'r7116', 'rangle', sLeft, SLT, '\rangle', 0);
  Draw(aOwner, 'btn_7_1_16', 'r7117', 'backslash', sLeft, SLT, '\backslash', 0);
  Draw(aOwner, 'btn_7_1_17', 'r7118', '||', sLeft, SLT, '\|', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw72(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_7_2_00', 'uparrow', 'uparrow', sLeft, FLT, '\uparrow', 0);
  Draw(aOwner, 'btn_7_2_01', 'downarrow', 'downarrow', sLeft, FLT, '\downarrow', 0);
  Draw(aOwner, 'btn_7_2_02', 'updownarrow', 'updownarrow', sLeft, FLT, '\updownarrow', 0);

  sLeft := left;
  Draw(aOwner, 'btn_7_2_10', 'duparrow', 'Uparrow', sLeft, SLT, '\Uparrow', 0);
  Draw(aOwner, 'btn_7_2_11', 'ddownarrow', 'Downarrow', sLeft, SLT, '\Downarrow', 0);
  Draw(aOwner, 'btn_7_2_12', 'dupdownarrow', 'Updownarrow', sLeft, SLT, '\Updownarrow', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw73(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_7_3_00', 'upharpoonleft', 'upharpoonleft', sLeft, FLT, '\upharpoonleft', 0);
  Draw(aOwner, 'btn_7_3_01', 'upharpoonright', 'upharpoonright', sLeft, FLT, '\upharpoonright', 0);
  Draw(aOwner, 'btn_7_3_02', 'upuparrows', 'upuparrows', sLeft, FLT, '\upuparrows', 0);

  sLeft := left;
  Draw(aOwner, 'btn_7_3_10', 'downharpoonleft', 'downharpoonleft', sLeft, SLT,
    '\downharpoonleft', 0);
  Draw(aOwner, 'btn_7_3_11', 'downharpoonright', 'downharpoonright', sLeft, SLT,
    '\downharpoonright', 0);
  Draw(aOwner, 'btn_7_3_12', 'downdownarrows', 'downdownarrows', sLeft, SLT, '\downdownarrows', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw75(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_7_5_00', 'left', '\left', sLeft, FLT, 50, BtnHeight, '\left', 0);

  sLeft := left;
  Draw(aOwner, 'btn_7_5_10', 'right', '\right', sLeft, SLT, 50, BtnHeight, '\right', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw81(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_8_1_00', 'pm', 'pm', sLeft, FLT, '\pm', 0);
  Draw(aOwner, 'btn_8_1_01', 'mp', 'mp', sLeft, FLT, '\mp', 0);
  Draw(aOwner, 'btn_8_1_02', 'times', 'times', sLeft, FLT, '\times', 0);
  Draw(aOwner, 'btn_8_1_03', 'div', 'div', sLeft, FLT, '\div', 0);
  Draw(aOwner, 'btn_8_1_04', 'ast', 'ast', sLeft, FLT, '\ast', 0);
  Draw(aOwner, 'btn_8_1_05', 'star', 'star', sLeft, FLT, '\star', 0);
  Draw(aOwner, 'btn_8_1_06', 'circ', 'circ', sLeft, FLT, '\circ', 0);
  Draw(aOwner, 'btn_8_1_07', 'bullet', 'bullet', sLeft, FLT, '\bullet', 0);
  Draw(aOwner, 'btn_8_1_08', 'cdot', 'cdot', sLeft, FLT, '\cdot', 0);
  Draw(aOwner, 'btn_8_1_09', 'cap', 'cap', sLeft, FLT, '\cap', 0);
  Draw(aOwner, 'btn_8_1_010', 'cup', 'cup', sLeft, FLT, '\cup', 0);
  Draw(aOwner, 'btn_8_1_011', 'uplus', 'uplus', sLeft, FLT, '\uplus', 0);
  Draw(aOwner, 'btn_8_1_012', 'sqcap', 'sqcap', sLeft, FLT, '\sqcap', 0);
  Draw(aOwner, 'btn_8_1_013', 'sqcup', 'sqcup', sLeft, FLT, '\sqcup', 0);
  Draw(aOwner, 'btn_8_1_014', 'vee', 'vee', sLeft, FLT, '\vee', 0);
  Draw(aOwner, 'btn_8_1_015', 'wedge', 'wedge', sLeft, FLT, '\wedge', 0);

  sLeft := left;
  Draw(aOwner, 'btn_8_1_10', 'oplus', 'oplus', sLeft, SLT, '\oplus', 0);
  Draw(aOwner, 'btn_8_1_11', 'ominus', 'ominus', sLeft, SLT, '\ominus', 0);
  Draw(aOwner, 'btn_8_1_12', 'otimes', 'otimes', sLeft, SLT, '\otimes', 0);
  Draw(aOwner, 'btn_8_1_13', 'oslash', 'oslash', sLeft, SLT, '\oslash', 0);
  Draw(aOwner, 'btn_8_1_14', 'odot', 'odot', sLeft, SLT, '\odot', 0);
  Draw(aOwner, 'btn_8_1_15', 'bigcirc', 'bigcirc', sLeft, SLT, '\bigcirc', 0);
  Draw(aOwner, 'btn_8_1_16', 'setminus', 'setminus', sLeft, SLT, '\setminus', 0);
  Draw(aOwner, 'btn_8_1_17', 'wr', 'wr', sLeft, SLT, '\wr', 0);
  Draw(aOwner, 'btn_8_1_18', 'diamond', 'diamond', sLeft, SLT, '\diamond', 0);
  Draw(aOwner, 'btn_8_1_19', 'bigtriangleup', 'bigtriangleup', sLeft, SLT, '\bigtriangleup', 0);
  Draw(aOwner, 'btn_8_1_110', 'bigtriangledown', 'bigtriangledown', sLeft, SLT,
    '\bigtriangledown', 0);
  Draw(aOwner, 'btn_8_1_111', 'triangleleft', 'triangleleft', sLeft, SLT, '\triangleleft', 0);
  Draw(aOwner, 'btn_8_1_112', 'triangleright', 'triangleright', sLeft, SLT, '\triangleright', 0);
  Draw(aOwner, 'btn_8_1_113', 'amalg', 'amalg', sLeft, SLT, '\amalg', 0);
  Draw(aOwner, 'btn_8_1_114', 'dagger', 'dagger', sLeft, SLT, '\dagger', 0);
  Draw(aOwner, 'btn_8_1_115', 'ddagger', 'ddagger', sLeft, SLT, '\ddagger', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw82(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_8_2_00', 'nearrow', 'nearrow', sLeft, FLT, '\nearrow', 0);
  Draw(aOwner, 'btn_8_2_01', 'searrow', 'searrow', sLeft, FLT, '\searrow', 0);

  sLeft := left;
  Draw(aOwner, 'btn_8_2_10', 'nwarrow', 'nwarrow', sLeft, SLT, '\nwarrow', 0);
  Draw(aOwner, 'btn_8_2_11', 'swarrow', 'swarrow', sLeft, SLT, '\swarrow', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw83(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_8_3_00', 'longleftarrow', 'longleftarrow', sLeft, FLT, 35, BtnHeight,
    '\longleftarrow', 0);
  Draw(aOwner, 'btn_8_3_01', 'longrightarrow', 'longrightarrow', sLeft, FLT, 35, BtnHeight,
    '\longrightarrow', 0);
  Draw(aOwner, 'btn_8_3_02', 'longleftrightarrow', 'longleftrightarrow', sLeft, FLT, 35, BtnHeight,
    '\longleftrightarrow', 0);
  Draw(aOwner, 'btn_8_3_03', 'longmapsto', 'longmapsto', sLeft, FLT, 35, BtnHeight,
    '\longmapsto', 0);

  sLeft := left;
  Draw(aOwner, 'btn_8_3_10', 'longleftarrow_2', 'Longleftarrow', sLeft, SLT, 35, BtnHeight,
    '\Longleftarrow', 0);
  Draw(aOwner, 'btn_8_3_11', 'longrightarrow_2', 'Longrightarrow', sLeft, SLT, 35, BtnHeight,
    '\Longrightarrow', 0);
  Draw(aOwner, 'btn_8_3_12', 'longleftrightarrow_2', 'Longleftrightarrow', sLeft, SLT, 35,
    BtnHeight, '\Longleftrightarrow', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw91(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_9_1_00', 'leftarrow', 'leftarrow', sLeft, FLT, '\leftarrow', 0);
  Draw(aOwner, 'btn_9_1_01', 'rightarrow', 'rightarrow', sLeft, FLT, '\rightarrow', 0);
  Draw(aOwner, 'btn_9_1_02', 'leftrightarrow', 'leftrightarrow', sLeft, FLT, '\leftrightarrow', 0);

  sLeft := left;
  Draw(aOwner, 'btn_9_1_10', 'bleftarrow', 'Leftarrow', sLeft, SLT, '\Leftarrow', 0);
  Draw(aOwner, 'btn_9_1_11', 'brightarrow', 'Rightarrow', sLeft, SLT, '\Rightarrow', 0);
  Draw(aOwner, 'btn_9_1_12', 'bleftrightarrow', 'Leftrightarrow', sLeft, SLT, '\Leftrightarrow', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw92(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_9_2_00', 'nleftarrow', 'nleftarrow', sLeft, FLT, '\nleftarrow', 0);
  Draw(aOwner, 'btn_9_2_01', 'nrightarrow', 'nrightarrow', sLeft, FLT, '\nrightarrow', 0);
  Draw(aOwner, 'btn_9_2_02', 'nleftrightarrow', 'nleftrightarrow', sLeft, FLT,
    '\nleftrightarrow', 0);

  sLeft := left;
  Draw(aOwner, 'btn_9_2_10', 'nbleftarrow', 'nLeftarrow', sLeft, SLT, '\nLeftarrow', 0);
  Draw(aOwner, 'btn_9_2_11', 'nbrightarrow', 'nRightarrow', sLeft, SLT, '\nRightarrow', 0);
  Draw(aOwner, 'btn_9_2_12', 'nbleftrightarrow', 'nLeftrightarrow', sLeft, SLT,
    '\nLeftrightarrow', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw93(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_9_3_00', 'leftarrowtail', 'leftarrowtail', sLeft, FLT, '\leftarrowtail', 0);
  Draw(aOwner, 'btn_9_3_01', 'twoheadleftarrow', 'twoheadleftarrow', sLeft, FLT,
    '\twoheadleftarrow', 0);
  Draw(aOwner, 'btn_9_3_02', 'hookleftarrow', 'hookleftarrow', sLeft, FLT, '\hookleftarrow', 0);
  Draw(aOwner, 'btn_9_3_03', 'leftharpoonup', 'leftharpoonup', sLeft, FLT, '\leftharpoonup', 0);
  Draw(aOwner, 'btn_9_3_04', 'leftharpoondown', 'leftharpoondown', sLeft, FLT,
    '\leftharpoondown', 0);
  Draw(aOwner, 'btn_9_3_05', 'leftrightharpoons', 'leftrightharpoons', sLeft, FLT,
    '\leftrightharpoons', 0);
  Draw(aOwner, 'btn_9_3_06', 'leftleftarrows', 'leftleftarrows', sLeft, FLT, '\leftleftarrows', 0);
  Draw(aOwner, 'btn_9_3_07', 'leftrightarrows', 'leftrightarrows', sLeft, FLT,
    '\leftrightarrows', 0);
  Draw(aOwner, 'btn_9_3_08', 'blleftarrow', 'Lleftarrow', sLeft, FLT, '\Lleftarrow', 0);
  Draw(aOwner, 'btn_9_3_09', 'curvearrowleft', 'curvearrowleft', sLeft, FLT, '\curvearrowleft', 0);
  Draw(aOwner, 'btn_9_3_010', 'circlearrowleft', 'circlearrowleft', sLeft, FLT,
    '\circlearrowleft', 0);
  Draw(aOwner, 'btn_9_3_011', 'blsh', 'Lsh', sLeft, FLT, '\Lsh', 0);

  sLeft := left;
  Draw(aOwner, 'btn_9_3_10', 'rightarrowtail', 'rightarrowtail', sLeft, SLT, '\rightarrowtail', 0);
  Draw(aOwner, 'btn_9_3_11', 'twoheadrightarrow', 'twoheadrightarrow', sLeft, SLT,
    '\twoheadrightarrow', 0);
  Draw(aOwner, 'btn_9_3_12', 'hookrightarrow', 'hookrightarrow', sLeft, SLT, '\hookrightarrow', 0);
  Draw(aOwner, 'btn_9_3_13', 'rightharpoonup', 'rightharpoonup', sLeft, SLT, '\rightharpoonup', 0);
  Draw(aOwner, 'btn_9_3_14', 'rightharpoondown', 'rightharpoondown', sLeft, SLT,
    '\rightharpoondown', 0);
  Draw(aOwner, 'btn_9_3_15', 'rightleftharpoons', 'rightleftharpoons', sLeft, SLT,
    '\rightleftharpoons', 0);
  Draw(aOwner, 'btn_9_3_16', 'rightrightarrows', 'rightrightarrows', sLeft, SLT,
    '\rightrightarrows', 0);
  Draw(aOwner, 'btn_9_3_17', 'rightrightarrows', 'rightrightarrows', sLeft, SLT,
    '\rightrightarrows', 0);
  Draw(aOwner, 'btn_9_3_18', 'brrightarrow', 'Rrightarrow', sLeft, SLT, '\Rrightarrow', 0);
  Draw(aOwner, 'btn_9_3_19', 'curvearrowright', 'curvearrowright', sLeft, SLT,
    '\curvearrowright', 0);
  Draw(aOwner, 'btn_9_3_110', 'circlearrowright', 'circlearrowright', sLeft, SLT,
    '\circlearrowright', 0);
  Draw(aOwner, 'btn_9_3_111', 'brsh', 'Rsh', sLeft, SLT, '\Rsh', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw94(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_9_4_00', 'dashleftarrow', 'dashleftarrow', sLeft, FLT, 35, BtnHeight,
    '\dashleftarrow', 0);
  Draw(aOwner, 'btn_9_4_01', 'leftrightsquigarrow', 'leftrightsquigarrow', sLeft, FLT, 35,
    BtnHeight, '\leftrightsquigarrow', 0);
  Draw(aOwner, 'btn_9_4_02', 'mapsto', 'mapsto', sLeft, FLT, 35, BtnHeight, '\mapsto', 0);

  sLeft := left;
  Draw(aOwner, 'btn_9_4_10', 'dashrightarrow', 'dashrightarrow', sLeft, SLT, 35, BtnHeight,
    '\dashrightarrow', 0);
  Draw(aOwner, 'btn_9_4_11', 'rightsquigarrow', 'rightsquigarrow', sLeft, SLT, 35, BtnHeight,
    '\rightsquigarrow', 0);
  Draw(aOwner, 'btn_9_4_12', 'multimap', 'multimap', sLeft, SLT, 35, BtnHeight, '\multimap', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw101(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_10_1_00', 'r10101', '<', sLeft, FLT, '<', 0);
  Draw(aOwner, 'btn_10_1_01', 'leq', 'leq', sLeft, FLT, '\leq', 0);
  Draw(aOwner, 'btn_10_1_02', 'prec', 'prec', sLeft, FLT, '\prec', 0);
  Draw(aOwner, 'btn_10_1_03', 'preceq', 'preceq', sLeft, FLT, '\preceq', 0);
  Draw(aOwner, 'btn_10_1_04', 'll', 'll', sLeft, FLT, '\ll', 0);
  Draw(aOwner, 'btn_10_1_05', 'subset', 'subset', sLeft, FLT, '\subset', 0);
  Draw(aOwner, 'btn_10_1_06', 'subseteq', 'subseteq', sLeft, FLT, '\subseteq', 0);
  Draw(aOwner, 'btn_10_1_07', 'sqsubseteq', 'sqsubseteq', sLeft, FLT, '\sqsubseteq', 0);
  Draw(aOwner, 'btn_10_1_08', 'in', 'in', sLeft, FLT, '\in', 0);
  Draw(aOwner, 'btn_10_1_09', 'vdash', 'vdash', sLeft, FLT, '\vdash', 0);

  sLeft := left;
  Draw(aOwner, 'btn_10_1_10', 'r10111', '>', sLeft, SLT, '>', 0);
  Draw(aOwner, 'btn_10_1_11', 'geq', 'geq', sLeft, SLT, '\geq', 0);
  Draw(aOwner, 'btn_10_1_12', 'succ', 'succ', sLeft, SLT, '\succ', 0);
  Draw(aOwner, 'btn_10_1_13', 'succeq', 'succeq', sLeft, SLT, '\succeq', 0);
  Draw(aOwner, 'btn_10_1_14', 'gg', 'gg', sLeft, SLT, '\gg', 0);
  Draw(aOwner, 'btn_10_1_15', 'supset', 'supset', sLeft, SLT, '\supset', 0);
  Draw(aOwner, 'btn_10_1_16', 'supseteq', 'supseteq', sLeft, SLT, '\supseteq', 0);
  Draw(aOwner, 'btn_10_1_17', 'sqsupseteq', 'sqsupseteq', sLeft, SLT, '\sqsupseteq', 0);
  Draw(aOwner, 'btn_10_1_18', 'ni', 'ni', sLeft, SLT, '\ni', 0);
  Draw(aOwner, 'btn_10_1_19', 'dashv', 'dashv', sLeft, SLT, '\dashv', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw102(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_10_2_00', 'equiv', 'equiv', sLeft, FLT, '\equiv', 0);
  Draw(aOwner, 'btn_10_2_01', 'sim', 'sim', sLeft, FLT, '\sim', 0);
  Draw(aOwner, 'btn_10_2_02', 'simeq', 'simeq', sLeft, FLT, '\simeq', 0);
  Draw(aOwner, 'btn_10_2_03', 'asymp', 'asymp', sLeft, FLT, '\asymp', 0);
  Draw(aOwner, 'btn_10_2_04', 'approx', 'approx', sLeft, FLT, '\approx', 0);
  Draw(aOwner, 'btn_10_2_05', 'cong', 'cong', sLeft, FLT, '\cong', 0);
  Draw(aOwner, 'btn_10_2_06', 'neq', 'neq', sLeft, FLT, '\neq', 0);
  Draw(aOwner, 'btn_10_2_07', 'doteq', 'doteq', sLeft, FLT, '\doteq', 0);

  sLeft := left;
  Draw(aOwner, 'btn_10_2_10', 'models', 'models', sLeft, SLT, '\models', 0);
  Draw(aOwner, 'btn_10_2_11', 'perp', 'perp', sLeft, SLT, '\perp', 0);
  Draw(aOwner, 'btn_10_2_12', 'mid', 'mid', sLeft, SLT, '\mid', 0);
  Draw(aOwner, 'btn_10_2_13', 'parallel', 'parallel', sLeft, SLT, '\parallel', 0);
  Draw(aOwner, 'btn_10_2_14', 'smile', 'smile', sLeft, SLT, '\smile', 0);
  Draw(aOwner, 'btn_10_2_15', 'frown', 'frown', sLeft, SLT, '\frown', 0);
  Draw(aOwner, 'btn_10_2_16', 'propto', 'propto', sLeft, SLT, '\propto', 0);
  Draw(aOwner, 'btn_10_2_17', 'bowtie', 'bowtie', sLeft, SLT, '\bowtie', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw103(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_10_3_00', 'lhd', 'lhd', sLeft, FLT, '\lhd', 0);
  Draw(aOwner, 'btn_10_3_01', 'rhd', 'rhd', sLeft, FLT, '\rhd', 0);

  sLeft := left;
  Draw(aOwner, 'btn_10_3_10', 'unlhd', 'unlhd', sLeft, SLT, '\unlhd', 0);
  Draw(aOwner, 'btn_10_3_11', 'unrhd', 'unrhd', sLeft, SLT, '\unrhd', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw111(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_11_1_00', 'hbar', 'hbar', sLeft, FLT, '\hbar', 0);
  Draw(aOwner, 'btn_11_1_01', 'hslash', 'hslash', sLeft, FLT, '\hslash', 0);
  Draw(aOwner, 'btn_11_1_02', 'backprime', 'backprime', sLeft, FLT, '\backprime', 0);
  Draw(aOwner, 'btn_11_1_03', 'varnothing', 'varnothing', sLeft, FLT, '\varnothing', 0);
  Draw(aOwner, 'btn_11_1_04', 'vartriangle', 'vartriangle', sLeft, FLT, '\vartriangle', 0);
  Draw(aOwner, 'btn_11_1_05', 'triangledown', 'triangledown', sLeft, FLT, '\triangledown', 0);
  Draw(aOwner, 'btn_11_1_06', 'angle', 'angle', sLeft, FLT, '\angle', 0);
  Draw(aOwner, 'btn_11_1_07', 'sphericalangle', 'sphericalangle', sLeft, FLT, '\sphericalangle', 0);
  Draw(aOwner, 'btn_11_1_08', 'measuredangle', 'measuredangle', sLeft, FLT, '\measuredangle', 0);
  Draw(aOwner, 'btn_11_1_09', 'bgame', 'Game', sLeft, FLT, '\Game', 0);
  Draw(aOwner, 'btn_11_1_010', 'bfinv', 'Finv', sLeft, FLT, '\Finv', 0);
  Draw(aOwner, 'btn_11_1_011', 'exists', 'exists', sLeft, FLT, '\exists', 0);
  Draw(aOwner, 'btn_11_1_012', 'nexists', 'nexists', sLeft, FLT, '\nexists', 0);

  sLeft := left;
  Draw(aOwner, 'btn_11_1_10', 'square', 'square', sLeft, SLT, '\square', 0);
  Draw(aOwner, 'btn_11_1_11', 'blacksquare', 'blacksquare', sLeft, SLT, '\blacksquare', 0);
  Draw(aOwner, 'btn_11_1_12', 'lozenge', 'lozenge', sLeft, SLT, '\lozenge', 0);
  Draw(aOwner, 'btn_11_1_13', 'blacklozenge', 'blacklozenge', sLeft, SLT, '\blacklozenge', 0);
  Draw(aOwner, 'btn_11_1_14', 'blacktriangle', 'blacktriangle', sLeft, SLT, '\blacktriangle', 0);
  Draw(aOwner, 'btn_11_1_15', 'blacktriangledown', 'blacktriangledown', sLeft, SLT,
    '\blacktriangledown', 0);
  Draw(aOwner, 'btn_11_1_16', 'bigstar', 'bigstar', sLeft, SLT, '\bigstar', 0);
  Draw(aOwner, 'btn_11_1_17', 'complement', 'complement', sLeft, SLT, '\complement', 0);
  Draw(aOwner, 'btn_11_1_18', 'mho', 'mho', sLeft, SLT, '\mho', 0);
  Draw(aOwner, 'btn_11_1_19', 'eth', 'eth', sLeft, SLT, '\eth', 0);
  Draw(aOwner, 'btn_11_1_110', 'bbbbk', 'Bbbk', sLeft, SLT, '\Bbbk', 0);
  Draw(aOwner, 'btn_11_1_111', 'diagup', 'diagup', sLeft, SLT, '\diagup', 0);
  Draw(aOwner, 'btn_11_1_112', 'diagdown', 'diagdown', sLeft, SLT, '\diagdown', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw112(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_11_2_00', 'dotplus', 'dotplus', sLeft, FLT, '\dotplus', 0);
  Draw(aOwner, 'btn_11_2_01', 'smallsetminus', 'smallsetminus', sLeft, FLT, '\smallsetminus', 0);
  Draw(aOwner, 'btn_11_2_02', 'ltimes', 'ltimes', sLeft, FLT, '\ltimes', 0);
  Draw(aOwner, 'btn_11_2_03', 'rtimes', 'rtimes', sLeft, FLT, '\rtimes', 0);
  Draw(aOwner, 'btn_11_2_04', 'leftthreetimes', 'leftthreetimes', sLeft, FLT, '\leftthreetimes', 0);
  Draw(aOwner, 'btn_11_2_05', 'rightthreetimes', 'rightthreetimes', sLeft, FLT,
    '\rightthreetimes', 0);
  Draw(aOwner, 'btn_11_2_06', 'divideontimes', 'divideontimes', sLeft, FLT, '\divideontimes', 0);
  Draw(aOwner, 'btn_11_2_07', 'bcap', 'Cap', sLeft, FLT, '\Cap', 0);
  Draw(aOwner, 'btn_11_2_08', 'bcup', 'Cup', sLeft, FLT, '\Cup', 0);
  Draw(aOwner, 'btn_11_2_09', 'circledS', 'circledS', sLeft, FLT, '\circledS', 0);
  Draw(aOwner, 'btn_11_2_010', 'intercal', 'intercal', sLeft, FLT, '\intercal', 0);
  Draw(aOwner, 'btn_11_2_011', 'centerdot', 'centerdot', sLeft, FLT, '\centerdot', 0);

  sLeft := left;
  Draw(aOwner, 'btn_11_2_10', 'curlywedge', 'curlywedge', sLeft, SLT, '\curlywedge', 0);
  Draw(aOwner, 'btn_11_2_11', 'curlyvee', 'curlyvee', sLeft, SLT, '\curlyvee', 0);
  Draw(aOwner, 'btn_11_2_12', 'barwedge', 'barwedge', sLeft, SLT, '\barwedge', 0);
  Draw(aOwner, 'btn_11_2_13', 'veebar', 'veebar', sLeft, SLT, '\veebar', 0);
  Draw(aOwner, 'btn_11_2_14', 'doublebarwedge', 'doublebarwedge', sLeft, SLT, '\doublebarwedge', 0);
  Draw(aOwner, 'btn_11_2_15', 'boxplus', 'boxplus', sLeft, SLT, '\boxplus', 0);
  Draw(aOwner, 'btn_11_2_16', 'boxminus', 'boxminus', sLeft, SLT, '\boxminus', 0);
  Draw(aOwner, 'btn_11_2_17', 'boxtimes', 'boxtimes', sLeft, SLT, '\boxtimes', 0);
  Draw(aOwner, 'btn_11_2_18', 'boxdot', 'boxdot', sLeft, SLT, '\boxdot', 0);
  Draw(aOwner, 'btn_11_2_19', 'circledast', 'circledast', sLeft, SLT, '\circledast', 0);
  Draw(aOwner, 'btn_11_2_110', 'circleddash', 'circleddash', sLeft, SLT, '\circleddash', 0);
  Draw(aOwner, 'btn_11_2_111', 'circledcirc', 'circledcirc', sLeft, SLT, '\circledcirc', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw113(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_11_3_00', 'blacktriangleleft', 'blacktriangleleft', sLeft, FLT,
    '\blacktriangleleft', 0);
  Draw(aOwner, 'btn_11_3_01', 'blacktriangleright', 'blacktriangleright', sLeft, FLT,
    '\blacktriangleright', 0);

  sLeft := left;
  Draw(aOwner, 'btn_11_3_10', 'therefore', 'therefore', sLeft, SLT, '\therefore', 0);
  Draw(aOwner, 'btn_11_3_11', 'because', 'because', sLeft, SLT, '\because', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw121(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_12_1_00', 'leqq', 'leqq', sLeft, FLT, '\leqq', 0);
  Draw(aOwner, 'btn_12_1_01', 'leqslant', 'leqslant', sLeft, FLT, '\leqslant', 0);
  Draw(aOwner, 'btn_12_1_02', 'eqslantless', 'eqslantless', sLeft, FLT, '\eqslantless', 0);
  Draw(aOwner, 'btn_12_1_03', 'lesssim', 'lesssim', sLeft, FLT, '\lesssim', 0);
  Draw(aOwner, 'btn_12_1_04', 'lessapprox', 'lessapprox', sLeft, FLT, '\lessapprox', 0);
  Draw(aOwner, 'btn_12_1_05', 'preccurlyeq', 'preccurlyeq', sLeft, FLT, '\preccurlyeq', 0);
  Draw(aOwner, 'btn_12_1_06', 'curlyeqprec', 'curlyeqprec', sLeft, FLT, '\curlyeqprec', 0);
  Draw(aOwner, 'btn_12_1_07', 'precsim', 'precsim', sLeft, FLT, '\precsim', 0);
  Draw(aOwner, 'btn_12_1_08', 'precapprox', 'precapprox', sLeft, FLT, '\precapprox', 0);
  Draw(aOwner, 'btn_12_1_09', 'lessdot', 'lessdot', sLeft, FLT, '\lessdot', 0);
  Draw(aOwner, 'btn_12_1_010', 'sqsubset', 'sqsubset', sLeft, FLT, '\sqsubset', 0);
  Draw(aOwner, 'btn_12_1_011', 'vartriangleleft', 'vartriangleleft', sLeft, FLT,
    '\vartriangleleft', 0);
  Draw(aOwner, 'btn_12_1_012', 'trianglelefteq', 'trianglelefteq', sLeft, FLT,
    '\trianglelefteq', 0);
  Draw(aOwner, 'btn_12_1_013', 'bsubset', 'Subset', sLeft, FLT, '\Subset', 0);
  Draw(aOwner, 'btn_12_1_014', 'subseteq', 'subseteq', sLeft, FLT, '\subseteq', 0);
  Draw(aOwner, 'btn_12_1_015', 'subseteqq', 'subseteqq', sLeft, FLT, '\subseteqq', 0);

  sLeft := left;
  Draw(aOwner, 'btn_12_1_10', 'geqq', 'geqq', sLeft, SLT, '\geqq', 0);
  Draw(aOwner, 'btn_12_1_11', 'geqslant', 'geqslant', sLeft, SLT, '\geqslant', 0);
  Draw(aOwner, 'btn_12_1_12', 'eqslantgtr', 'eqslantgtr', sLeft, SLT, '\eqslantgtr', 0);
  Draw(aOwner, 'btn_12_1_13', 'gtrsim', 'gtrsim', sLeft, SLT, '\gtrsim', 0);
  Draw(aOwner, 'btn_12_1_14', 'gtrapprox', 'gtrapprox', sLeft, SLT, '\gtrapprox', 0);
  Draw(aOwner, 'btn_12_1_15', 'succcurlyeq', 'succcurlyeq', sLeft, SLT, '\succcurlyeq', 0);
  Draw(aOwner, 'btn_12_1_16', 'curlyeqsucc', 'curlyeqsucc', sLeft, SLT, '\curlyeqsucc', 0);
  Draw(aOwner, 'btn_12_1_17', 'succsim', 'succsim', sLeft, SLT, '\succsim', 0);
  Draw(aOwner, 'btn_12_1_18', 'succapprox', 'succapprox', sLeft, SLT, '\succapprox', 0);
  Draw(aOwner, 'btn_12_1_19', 'gtrdot', 'gtrdot', sLeft, SLT, '\gtrdot', 0);
  Draw(aOwner, 'btn_12_1_110', 'sqsupset', 'sqsupset', sLeft, SLT, '\sqsupset', 0);
  Draw(aOwner, 'btn_12_1_111', 'vartriangleright', 'vartriangleright', sLeft, SLT,
    '\vartriangleright', 0);
  Draw(aOwner, 'btn_12_1_112', 'trianglerighteq', 'trianglerighteq', sLeft, SLT,
    '\trianglerighteq', 0);
  Draw(aOwner, 'btn_12_1_113', 'bsupset', 'Supset', sLeft, SLT, '\Supset', 0);
  Draw(aOwner, 'btn_12_1_114', 'supseteq', 'supseteq', sLeft, SLT, '\supseteq', 0);
  Draw(aOwner, 'btn_12_1_115', 'supseteqq', 'supseteqq', sLeft, SLT, '\supseteqq', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw122(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_12_2_00', 'lessgtr', 'lessgtr', sLeft, FLT, '\lessgtr', 0);
  Draw(aOwner, 'btn_12_2_01', 'lesseqgtr', 'lesseqgtr', sLeft, FLT, '\lesseqgtr', 0);
  Draw(aOwner, 'btn_12_2_02', 'lesseqqgtr', 'lesseqqgtr', sLeft, FLT, '\lesseqqgtr', 0);
  Draw(aOwner, 'btn_12_2_03', 'lll', 'lll', sLeft, FLT, '\lll', 0);

  sLeft := left;
  Draw(aOwner, 'btn_12_2_10', 'gtrless', 'gtrless', sLeft, SLT, '\gtrless', 0);
  Draw(aOwner, 'btn_12_2_11', 'gtreqless', 'gtreqless', sLeft, SLT, '\gtreqless', 0);
  Draw(aOwner, 'btn_12_2_12', 'gtreqqless', 'gtreqqless', sLeft, SLT, '\gtreqqless', 0);
  Draw(aOwner, 'btn_12_2_13', 'ggg', 'ggg', sLeft, SLT, '\ggg', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw123(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_12_3_00', 'eqcirc', 'eqcirc', sLeft, FLT, '\eqcirc', 0);
  Draw(aOwner, 'btn_12_3_01', 'circeq', 'circeq', sLeft, FLT, '\circeq', 0);
  Draw(aOwner, 'btn_12_3_02', 'doteqdot', 'doteqdot', sLeft, FLT, '\doteqdot', 0);
  Draw(aOwner, 'btn_12_3_03', 'risingdotseq', 'risingdotseq', sLeft, FLT, '\risingdotseq', 0);
  Draw(aOwner, 'btn_12_3_04', 'fallingdotseq', 'fallingdotseq', sLeft, FLT, '\fallingdotseq', 0);
  Draw(aOwner, 'btn_12_3_05', 'triangleq', 'triangleq', sLeft, FLT, '\triangleq', 0);
  Draw(aOwner, 'btn_12_3_06', 'bumpeq', 'bumpeq', sLeft, FLT, '\bumpeq', 0);
  Draw(aOwner, 'btn_12_3_07', 'bbumpeq', 'Bumpeq', sLeft, FLT, '\Bumpeq', 0);
  Draw(aOwner, 'btn_12_3_08', 'vbdash', 'vDash', sLeft, FLT, '\vDash', 0);
  Draw(aOwner, 'btn_12_3_09', 'vbdash', 'vDash', sLeft, FLT, '\vDash', 0);
  Draw(aOwner, 'btn_12_3_010', 'bvvdash', 'Vvdash', sLeft, FLT, '\Vvdash', 0);
  Draw(aOwner, 'btn_12_3_011', 'between', 'between', sLeft, FLT, '\between', 0);

  sLeft := left;
  Draw(aOwner, 'btn_12_3_10', 'backsim', 'backsim', sLeft, SLT, '\backsim', 0);
  Draw(aOwner, 'btn_12_3_11', 'thicksim', 'thicksim', sLeft, SLT, '\thicksim', 0);
  Draw(aOwner, 'btn_12_3_12', 'backsimeq', 'backsimeq', sLeft, SLT, '\backsimeq', 0);
  Draw(aOwner, 'btn_12_3_13', 'thickapprox', 'thickapprox', sLeft, SLT, '\thickapprox', 0);
  Draw(aOwner, 'btn_12_3_14', 'approxeq', 'approxeq', sLeft, SLT, '\approxeq', 0);
  Draw(aOwner, 'btn_12_3_15', 'varpropto', 'varpropto', sLeft, SLT, '\varpropto', 0);
  Draw(aOwner, 'btn_12_3_16', 'smallsmile', 'smallsmile', sLeft, SLT, '\smallsmile', 0);
  Draw(aOwner, 'btn_12_3_17', 'smallfrown', 'smallfrown', sLeft, SLT, '\smallfrown', 0);
  Draw(aOwner, 'btn_12_3_18', 'shortmid', 'shortmid', sLeft, SLT, '\shortmid', 0);
  Draw(aOwner, 'btn_12_3_19', 'shortparallel', 'shortparallel', sLeft, SLT, '\shortparallel', 0);
  Draw(aOwner, 'btn_12_3_110', 'pitchfork', 'pitchfork', sLeft, SLT, '\pitchfork', 0);
  Draw(aOwner, 'btn_12_3_111', 'backepsilon', 'backepsilon', sLeft, SLT, '\backepsilon', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw131(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_13_1_00', 'nless', 'nless', sLeft, FLT, '\nless', 0);
  Draw(aOwner, 'btn_13_1_01', 'nleq', 'nleq', sLeft, FLT, '\nleq', 0);
  Draw(aOwner, 'btn_13_1_02', 'nleqslant', 'nleqslant', sLeft, FLT, '\nleqslant', 0);
  Draw(aOwner, 'btn_13_1_03', 'nleqq', 'nleqq', sLeft, FLT, '\nleqq', 0);
  Draw(aOwner, 'btn_13_1_04', 'lneq', 'lneq', sLeft, FLT, '\lneq', 0);
  Draw(aOwner, 'btn_13_1_05', 'lneqq', 'lneqq', sLeft, FLT, '\lneqq', 0);
  Draw(aOwner, 'btn_13_1_06', 'lvertneqq', 'lvertneqq', sLeft, FLT, '\lvertneqq', 0);
  Draw(aOwner, 'btn_13_1_07', 'lnsim', 'lnsim', sLeft, FLT, '\lnsim', 0);
  Draw(aOwner, 'btn_13_1_08', 'lnapprox', 'lnapprox', sLeft, FLT, '\lnapprox', 0);
  Draw(aOwner, 'btn_13_1_09', 'ntriangleleft', 'ntriangleleft', sLeft, FLT, '\ntriangleleft', 0);
  Draw(aOwner, 'btn_13_1_010', 'ntrianglelefteq', 'ntrianglelefteq', sLeft, FLT,
    '\ntrianglelefteq', 0);
  Draw(aOwner, 'btn_13_1_011', 'nprec', 'nprec', sLeft, FLT, '\nprec', 0);
  Draw(aOwner, 'btn_13_1_012', 'npreceq', 'npreceq', sLeft, FLT, '\npreceq', 0);
  Draw(aOwner, 'btn_13_1_013', 'precneqq', 'precneqq', sLeft, FLT, '\precneqq', 0);
  Draw(aOwner, 'btn_13_1_014', 'precnsim', 'precnsim', sLeft, FLT, '\precnsim', 0);
  Draw(aOwner, 'btn_13_1_015', 'precnapprox', 'precnapprox', sLeft, FLT, '\precnapprox', 0);
  Draw(aOwner, 'btn_13_1_016', 'nsubseteq', 'nsubseteq', sLeft, FLT, '\nsubseteq', 0);
  Draw(aOwner, 'btn_13_1_017', 'nsubseteqq', 'nsubseteqq', sLeft, FLT, '\nsubseteqq', 0);
  Draw(aOwner, 'btn_13_1_018', 'subsetneq', 'subsetneq', sLeft, FLT, '\subsetneq', 0);
  Draw(aOwner, 'btn_13_1_019', 'varsubsetneq', 'varsubsetneq', sLeft, FLT, '\varsubsetneq', 0);
  Draw(aOwner, 'btn_13_1_020', 'subsetneqq', 'subsetneqq', sLeft, FLT, '\subsetneqq', 0);
  Draw(aOwner, 'btn_13_1_021', 'varsubsetneqq', 'varsubsetneqq', sLeft, FLT, '\varsubsetneqq', 0);

  sLeft := left;
  Draw(aOwner, 'btn_13_1_10', 'ngtr', 'ngtr', sLeft, SLT, '\ngtr', 0);
  Draw(aOwner, 'btn_13_1_11', 'ngeq', 'ngeq', sLeft, SLT, '\ngeq', 0);
  Draw(aOwner, 'btn_13_1_12', 'ngeqslant', 'ngeqslant', sLeft, SLT, '\ngeqslant', 0);
  Draw(aOwner, 'btn_13_1_13', 'ngeqq', 'ngeqq', sLeft, SLT, '\ngeqq', 0);
  Draw(aOwner, 'btn_13_1_14', 'gneq', 'gneq', sLeft, SLT, '\gneq', 0);
  Draw(aOwner, 'btn_13_1_15', 'gneqq', 'gneqq', sLeft, SLT, '\gneqq', 0);
  Draw(aOwner, 'btn_13_1_16', 'gvertneqq', 'gvertneqq', sLeft, SLT, '\gvertneqq', 0);
  Draw(aOwner, 'btn_13_1_17', 'gnsim', 'gnsim', sLeft, SLT, '\gnsim', 0);
  Draw(aOwner, 'btn_13_1_18', 'gnapprox', 'gnapprox', sLeft, SLT, '\gnapprox', 0);
  Draw(aOwner, 'btn_13_1_19', 'ntriangleright', 'ntriangleright', sLeft, SLT, '\ntriangleright', 0);
  Draw(aOwner, 'btn_13_1_110', 'ntrianglerighteq', 'ntrianglerighteq', sLeft, SLT,
    '\ntrianglerighteq', 0);
  Draw(aOwner, 'btn_13_1_111', 'nsucc', 'nsucc', sLeft, SLT, '\nsucc', 0);
  Draw(aOwner, 'btn_13_1_112', 'nsucceq', 'nsucceq', sLeft, SLT, '\nsucceq', 0);
  Draw(aOwner, 'btn_13_1_113', 'succneqq', 'succneqq', sLeft, SLT, '\succneqq', 0);
  Draw(aOwner, 'btn_13_1_114', 'succnsim', 'succnsim', sLeft, SLT, '\succnsim', 0);
  Draw(aOwner, 'btn_13_1_115', 'succnapprox', 'succnapprox', sLeft, SLT, '\succnapprox', 0);
  Draw(aOwner, 'btn_13_1_116', 'nsupseteq', 'nsupseteq', sLeft, SLT, '\nsupseteq', 0);
  Draw(aOwner, 'btn_13_1_117', 'nsupseteqq', 'nsupseteqq', sLeft, SLT, '\nsupseteqq', 0);
  Draw(aOwner, 'btn_13_1_118', 'supsetneq', 'supsetneq', sLeft, SLT, '\supsetneq', 0);
  Draw(aOwner, 'btn_13_1_119', 'varsupsetneq', 'varsupsetneq', sLeft, SLT, '\varsupsetneq', 0);
  Draw(aOwner, 'btn_13_1_120', 'supsetneqq', 'supsetneqq', sLeft, SLT, '\supsetneqq', 0);
  Draw(aOwner, 'btn_13_1_121', 'varsupsetneqq', 'varsupsetneqq', sLeft, SLT, '\varsupsetneqq', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.Draw132(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_12_2_00', 'nsim', 'nsim', sLeft, FLT, '\nsim', 0);
  Draw(aOwner, 'btn_12_2_01', 'nshortmid', 'nshortmid', sLeft, FLT, '\nshortmid', 0);
  Draw(aOwner, 'btn_12_2_02', 'nshortparallel', 'nshortparallel', sLeft, FLT, '\nshortparallel', 0);
  Draw(aOwner, 'btn_12_2_03', 'nmid', 'nmid', sLeft, FLT, '\nmid', 0);
  Draw(aOwner, 'btn_12_2_04', 'nparallel', 'nparallel', sLeft, FLT, '\nparallel', 0);

  sLeft := left;
  Draw(aOwner, 'btn_12_2_10', 'ncong', 'ncong', sLeft, SLT, '\ncong', 0);
  Draw(aOwner, 'btn_12_2_11', 'nvdash', 'nvdash', sLeft, SLT, '\nvdash', 0);
  Draw(aOwner, 'btn_12_2_12', 'nvbdash', 'nvDash', sLeft, SLT, '\nvDash', 0);
  Draw(aOwner, 'btn_12_2_13', 'nbvdash', 'nVdash', sLeft, SLT, '\nVdash', 0);
  Draw(aOwner, 'btn_12_2_14', 'nbvbdash', 'nVDash', sLeft, SLT, '\nVDash', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath1(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math1_00', 'sum', 'sum', sLeft, FLT, '\sum', 0);
  Draw(aOwner, 'btn_math1_01', 'prod', 'prod', sLeft, FLT, '\prod', 0);
  Draw(aOwner, 'btn_math1_02', 'coprod', 'coprod', sLeft, FLT, '\coprod', 0);
  Draw(aOwner, 'btn_math1_03', 'int', 'int', sLeft, FLT, '\int', 0);
  Draw(aOwner, 'btn_math1_04', 'oint', 'oint', sLeft, FLT, '\oint', 0);
  Draw(aOwner, 'btn_math1_05', 'bigcap', 'bigcap', sLeft, FLT, '\bigcap', 0);
  Draw(aOwner, 'btn_math1_06', 'bigcup', 'bigcup', sLeft, FLT, '\bigcup', 0);

  sLeft := left;
  Draw(aOwner, 'btn_math1_10', 'bigsqcup', 'bigsqcup', sLeft, SLT, '\bigsqcup', 0);
  Draw(aOwner, 'btn_math1_11', 'bigvee', 'bigvee', sLeft, SLT, '\bigvee', 0);
  Draw(aOwner, 'btn_math1_12', 'bigwedge', 'bigwedge', sLeft, SLT, '\bigwedge', 0);
  Draw(aOwner, 'btn_math1_13', 'bigodot', 'bigodot', sLeft, SLT, '\bigodot', 0);
  Draw(aOwner, 'btn_math1_14', 'bigotimes', 'bigotimes', sLeft, SLT, '\bigotimes', 0);
  Draw(aOwner, 'btn_math1_15', 'bigoplus', 'bigoplus', sLeft, SLT, '\bigoplus', 0);
  Draw(aOwner, 'btn_math1_16', 'biguplus', 'biguplus', sLeft, SLT, '\biguplus', 0);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath2(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math2_00', 'mathbb', 'mathbb', sLeft, FLT, '\mathbb{}', -1);
  Draw(aOwner, 'btn_math2_01', 'mathbf', 'mathbf', sLeft, FLT, '\mathbf{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math2_10', 'mathcal', 'mathcal', sLeft, SLT, '\mathcal{}', -1);
  Draw(aOwner, 'btn_math2_11', 'mathrm', 'mathrm', sLeft, SLT, '\mathrm{}', -1);
  Draw(aOwner, 'btn_math2_12', 'mathfrak', 'mathfrak', sLeft, SLT, '\mathfrak{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath3(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math3_00', 'math300', 'x^{k}', sLeft, FLT, '^{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math3_10', 'math310', 'x_{k}', sLeft, SLT, '_{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath4(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math4_00', 'hat', 'hat', sLeft, FLT, '\hat{}', -1);
  Draw(aOwner, 'btn_math4_01', 'check', 'check', sLeft, FLT, '\check{}', -1);
  Draw(aOwner, 'btn_math4_02', 'breve', 'breve', sLeft, FLT, '\breve{}', -1);
  Draw(aOwner, 'btn_math4_03', 'acute', 'acute', sLeft, FLT, '\acute{}', -1);
  Draw(aOwner, 'btn_math4_04', 'grave', 'grave', sLeft, FLT, '\grave{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math4_10', 'tilde', 'tilde', sLeft, SLT, '\tilde{}', -1);
  Draw(aOwner, 'btn_math4_11', 'bar', 'bar', sLeft, SLT, '\bar{}', -1);
  Draw(aOwner, 'btn_math4_12', 'vec', 'vec', sLeft, SLT, '\vec{}', -1);
  Draw(aOwner, 'btn_math4_13', 'dot', 'dot', sLeft, SLT, '\dot{}', -1);
  Draw(aOwner, 'btn_math4_14', 'ddot', 'ddot', sLeft, SLT, '\ddot{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath5(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math5_00', 'sqrt', 'sqrt', sLeft, FLT, 44, BtnHeight, '\sqrt{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math5_10', 'sqrtn', 'sqrt[n]', sLeft, SLT, 44, BtnHeight, '\sqrt[n]{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath6(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math6_00', 'overline', 'overline', sLeft, FLT, 30, BtnHeight,
    '\overline{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math6_10', 'underline', 'underline', sLeft, SLT, 30, BtnHeight,
    '\underline{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath7(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math7_00', 'overleftarrow', 'overleftarrow', sLeft, FLT, 30, BtnHeight,
    '\overleftarrow{}', -1);
  Draw(aOwner, 'btn_math7_01', 'overrightarrow', 'overrightarrow', sLeft, FLT, 30, BtnHeight,
    '\overrightarrow{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math7_10', 'widetilde', 'widetilde', sLeft, SLT, 30, BtnHeight,
    '\widetilde{}', -1);
  Draw(aOwner, 'btn_math7_11', 'widehat', 'widehat', sLeft, SLT, 30, BtnHeight, '\widehat{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath8(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math8_00', 'overbrace', 'overbrace', sLeft, FLT, 30, BtnHeight,
    '\overbrace{}', -1);

  sLeft := left;
  Draw(aOwner, 'btn_math8_10', 'underbrace', 'underbrace', sLeft, SLT, 30, BtnHeight,
    '\underbrace{}', -1);

  left := sLeft;
end;

procedure TTexGuiSymbols.DrawMath9(aOwner: TComponent; out left: integer);
var
  sLeft: integer;
begin
  sLeft := left;
  Draw(aOwner, 'btn_math9_00', 'binom', '\binom{m}{k}', sLeft, FLT, 30, BtnHeight,
    '\binom{}{}', -3);

  sLeft := left;
  Draw(aOwner, 'btn_math9_10', 'frac', '\frac{abc}{xyz}', sLeft, SLT, 30, BtnHeight,
    '\frac{}{}', -3);

  left := sLeft;
end;

end.

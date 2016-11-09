unit uCustomPageControl;

// http://stackoverflow.com/questions/18282728/make-owner-drawn-tpagecontrol-tabs-look-nicer-like-without-owner-draw
// http://www.sql.ru/forum/177696/kak-izmenit-cvet-podsvetki-zakladki-pagecontrol-a-pri-tabsheet-highlighted-true
// http://stackoverflow.com/questions/10531153/close-button-of-a-tabsheet-not-supporting-vcl-styles

// http://delphiday.blogspot.com.by/2010/05/blog-post_16.html
// http://www.cyberforum.ru/delphi-beginners/thread74814.html

// http://stackoverflow.com/questions/16469976/painting-background-from-tsestylefont

interface

uses
  Winapi.Messages, Winapi.Windows, Vcl.ComCtrls, Vcl.Controls, Vcl.Graphics,
  Vcl.ImgList, System.Classes, CommCtrl, Vcl.Styles, Vcl.Themes;

type
  TClosePageNotify = procedure(Sender: TObject; TabIndex: integer) of object;

type
  TCustomPageControl = class(Vcl.ComCtrls.TPageControl)
  private
    FHotIndex: integer;
    FOnClosePage: TClosePageNotify;

    FTextFormat: TTextFormat;

    FCloseActivePage: boolean;
    FClosePageUsing: boolean;

  protected
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure WMMouseMove(var Message: TMessage); message WM_MOUSEMOVE;
    procedure WMMouseLeave(var Message: TMessage); message WM_MOUSELEAVE;

    procedure WMLButtonDown(var Message: TWMMouse); message WM_LBUTTONDOWN;
    procedure WMLButtonUp(var Message: TWMMouse); message WM_LBUTTONUP;

    procedure TCMAdjustRect(var Message: TMessage); message TCM_ADJUSTRECT;
    procedure TCMSetItemSize(var Message: TMessage); message TCM_SETITEMSIZE;
    procedure TCMSetPadding(var Message: TMessage); message TCM_SETPADDING;

    function GetButtonCloseRect(Index: integer): TRect;
    procedure DrawButtonCloseTab(DC: hDC; Tab: integer);

    procedure SetRectTop(out R: TRect);
    procedure SetRectLeft(out R: TRect);

    procedure DoOnClosePage(Index: integer); dynamic;
  public
    constructor Create(AOwner: TComponent); override;

    property OnClosePage: TClosePageNotify read FOnClosePage write FOnClosePage;
    property CloseActivePage: boolean read FCloseActivePage write FCloseActivePage default false;
    property ClosePageUsing: boolean read FClosePageUsing write FClosePageUsing default false;

    property TextFormat: TTextFormat read FTextFormat write FTextFormat;
  end;

implementation

{ TCustomPageControl }

constructor TCustomPageControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHotIndex := -1;
end;

procedure TCustomPageControl.CNDrawItem(var Message: TWMDrawItem);
var
  R, RIcon, RSeparator, RFrame: TRect;
  Rgn: HRGN;
  Page: TTabSheet;
  Details: TThemedElementDetails;
begin
  inherited;

  R := Message.DrawItemStruct.rcItem;
  Page := Pages[Message.DrawItemStruct.itemID];

  // we don't want to get clipped in the passed rectangle
  SelectClipRgn(Message.DrawItemStruct.hDC, 0);

  case self.TabPosition of
    tpTop:
      SetRectTop(R);
    tpBottom:
      ;
    tpLeft:
      SetRectLeft(R);
    tpRight:
      ;
  end;
  // FillRect(Message.DrawItemStruct.hDC, R, ColorToRGB(FColorNoSelect));
  // FillRect(Message.DrawItemStruct.hDC, R, clRed);

  // вертикальная линия в конце вкладки для визуального разделения вкладок
  if Page.TabIndex < self.PageCount - 1 then
  begin
    RSeparator := R;
    RSeparator.Left := R.Left + (R.Right - R.Left) - 4;

    Details := StyleServices.GetElementDetails(ttbSeparatorDisabled);
    StyleServices.DrawElement(Message.DrawItemStruct.hDC, Details, RSeparator);
  end;

  // разрисовываем вкладку в зависимости от состояния (выбрана/невыбрана)
  if Bool(Message.DrawItemStruct.itemState and ODS_SELECTED) then
    Details := StyleServices.GetElementDetails(ttbButtonPressed)
  else
  begin
    if (FHotIndex >= 0) and (Page.TabIndex = FHotIndex) then
      Details := StyleServices.GetElementDetails(ttbButtonHot)
    else
      Details := StyleServices.GetElementDetails(ttbButtonNormal);
  end;

  RFrame := R;
  dec(RFrame.Right, 6);
  StyleServices.DrawElement(Message.DrawItemStruct.hDC, Details, RFrame);

  // Если есть картинка, рисуем ее
  if Assigned(Images) then
  begin
    RIcon.Left := R.Left + 2;
    RIcon.Top := R.Top + (R.Bottom - R.Top) div 2 - Images.Height div 2;
    RIcon.Right := RIcon.Left + Images.Width;
    RIcon.Bottom := RIcon.Top + Images.Height;

    Details := StyleServices.GetElementDetails(ttTabItemNormal);
    StyleServices.DrawIcon(Message.DrawItemStruct.hDC, Details, RIcon, Images.Handle,
      Page.ImageIndex);

    RFrame.Left := RIcon.Right + 1;
  end
  else
    inc(RFrame.Left, 2);

  // выводим текст
  Details := StyleServices.GetElementDetails(teEditTextNormal);
  StyleServices.DrawText(Message.DrawItemStruct.hDC, Details, PWideChar(Page.Caption), RFrame,
    [tfVerticalCenter, tfSingleLine] + FTextFormat);

  // рисуем крестик закрытия вкладки
  if FClosePageUsing then
    case self.TabPosition of
      tpTop:
        if Bool(Message.DrawItemStruct.itemState and ODS_SELECTED) or not FCloseActivePage then
          DrawButtonCloseTab(Message.DrawItemStruct.hDC, Message.DrawItemStruct.itemID);
      tpBottom:
        ;
      tpLeft:
        ;
      tpRight:
        ;
    end;

  // we want to clip the DC so that the borders to be drawn are out of region
  // что бы небыло рамки вокруг вкладки
  Rgn := CreateRectRgn(0, 0, 0, 0);
  try
    SelectClipRgn(Message.DrawItemStruct.hDC, Rgn);
  finally
    DeleteObject(Rgn);
  end;
end;

procedure TCustomPageControl.DrawButtonCloseTab(DC: hDC; Tab: integer);
var
  aRect: TRect;
begin
  aRect := GetButtonCloseRect(Tab);

  SelectObject(DC, GetStockObject(DC_PEN));
  SetDCPenColor(DC, ColorToRGB(cl3DDkShadow));

  { / }
  MoveToEx(DC, aRect.Left + 2, aRect.Bottom - 4, nil);
  LineTo(DC, aRect.Left + 2 + 6, aRect.Bottom - 2 - 8);
  MoveToEx(DC, aRect.Left + 2, aRect.Bottom - 3, nil);
  LineTo(DC, aRect.Left + 2 + 7, aRect.Bottom - 2 - 8);
  MoveToEx(DC, aRect.Left + 3, aRect.Bottom - 3, nil);
  LineTo(DC, aRect.Left + 2 + 7, aRect.Bottom - 2 - 7);
  { \ }
  MoveToEx(DC, aRect.Left + 2, aRect.Bottom - 2 - 6, nil);
  LineTo(DC, aRect.Left + 2 + 6, aRect.Bottom - 2);
  MoveToEx(DC, aRect.Left + 2, aRect.Bottom - 2 - 7, nil);
  LineTo(DC, aRect.Left + 2 + 7, aRect.Bottom - 2);
  MoveToEx(DC, aRect.Left + 3, aRect.Bottom - 2 - 7, nil);
  LineTo(DC, aRect.Left + 2 + 7, aRect.Bottom - 3);
end;

function TCustomPageControl.GetButtonCloseRect(Index: integer): TRect;
var
  aRect: TRect;
begin
  aRect := TabRect(Index);
  if aRect.Left < 0 then
    Exit;

  Result := Rect(aRect.Right - 20, 6, aRect.Right - 8, 18);
end;

procedure TCustomPageControl.TCMAdjustRect(var Message: TMessage);
begin
  inherited;
  if Message.WParam = 0 then
    InflateRect(PRect(Message.LParam)^, 4, 4)
  else
    InflateRect(PRect(Message.LParam)^, -4, -4);
end;

procedure TCustomPageControl.TCMSetItemSize(var Message: TMessage);
begin
  // Вызывается только если указан параметр TabWidth и вызывается только один раз
  inherited;
end;

procedure TCustomPageControl.TCMSetPadding(var Message: TMessage);
begin
  inherited;
end;

procedure TCustomPageControl.WMLButtonDown(var Message: TWMMouse);
Var
  LPoint: TPoint;
  LIndex: integer;
begin
  LPoint := Message.Pos;
  // если нажали на закрыть, тогда невыполняем переход на вкладку
  // что бы не моргала закрываемая вкладка
  if FClosePageUsing then
    for LIndex := 0 to Tabs.Count - 1 do
      if PtInRect(GetButtonCloseRect(LIndex), LPoint) then
        Exit;

  inherited;
end;

procedure TCustomPageControl.WMLButtonUp(var Message: TWMMouse);
Var
  LPoint: TPoint;
  LIndex: integer;
begin
  LPoint := Message.Pos;

  if FClosePageUsing then
    for LIndex := 0 to Tabs.Count - 1 do
      if PtInRect(GetButtonCloseRect(LIndex), LPoint) then
      begin
        DoOnClosePage(LIndex);
        break;
      end;

  inherited;
end;

procedure TCustomPageControl.WMMouseMove(var Message: TMessage);
Var
  LPoint: TPoint;
  LIndex: integer;
  LHotIndex: integer;
  RTab: TRect;
begin
  inherited;

  LHotIndex := -1;
  LPoint := TWMMouseMove(Message).Pos;
  for LIndex := 0 to self.Tabs.Count - 1 do
  begin
    Perform(TCM_GETITEMRECT, LIndex, LParam(@RTab));
    // if PtInRect(GetButtonCloseRect(LIndex), LPoint) then
    if PtInRect(RTab, LPoint) then
    begin
      LHotIndex := LIndex;
      break;
    end;
  end;

  if (FHotIndex <> LHotIndex) then
  begin
    FHotIndex := LHotIndex;
    // Invalidate;
    InvalidateRect(self.Handle, nil, false);
  end;
end;

procedure TCustomPageControl.WMMouseLeave(var Message: TMessage);
begin
  inherited;
  if FHotIndex >= 0 then
  begin
    FHotIndex := -1;
    // Invalidate;
    InvalidateRect(self.Handle, nil, false);
  end;
end;

procedure TCustomPageControl.DoOnClosePage(Index: integer);
begin
  // Если обработчик назначен, то запускаем его.
  if Assigned(FOnClosePage) then
    FOnClosePage(self, Index);
end;

procedure TCustomPageControl.SetRectTop(out R: TRect);
begin
  case self.Style of
    tsTabs:
      begin
        dec(R.Left, 2);
        dec(R.Top, 2);
        inc(R.Right, 2);
        inc(R.Bottom);
      end;
    tsButtons:
      begin
        dec(R.Left, 3);
        dec(R.Top, 2);
        inc(R.Right, 3);
        inc(R.Bottom, 4);
        // inc(R.Bottom, 3);
      end;
    tsFlatButtons:
      ;
  end;
end;

procedure TCustomPageControl.SetRectLeft(out R: TRect);
begin
  case self.Style of
    tsTabs:
      begin
        inc(R.Top, 2);
        dec(R.Right, 2);
        dec(R.Bottom, 3);
      end;
    tsButtons:
      ;
    tsFlatButtons:
      ;
  end;
end;

end.

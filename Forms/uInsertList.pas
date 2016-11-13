unit uInsertList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TInsertListForm = class(TForm)
    BtnCancel: TButton;
    BtnOk: TButton;
    lList: TLabel;
    eItemCount: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uLanguage;

procedure TInsertListForm.FormCreate(Sender: TObject);
begin
  eItemCount.Text := '3';
end;

procedure TInsertListForm.FormShow(Sender: TObject);
begin
  UpdateLanguage(Self, lngRus);
  eItemCount.SetFocus;
end;

procedure TInsertListForm.BtnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TInsertListForm.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

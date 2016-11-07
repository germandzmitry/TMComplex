unit uEditorGoToLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfEditorGoToLine = class(TForm)
    eLine: TEdit;
    BtnOk: TButton;
    BtnCancel: TButton;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditorGoToLine: TfEditorGoToLine;

resourcestring
  rsGoToLineCaption = 'Go to line';

implementation

{$R *.dfm}

procedure TfEditorGoToLine.FormCreate(Sender: TObject);
begin
  eLine.Text := '';
  Self.Caption := rsGoToLineCaption;
end;

procedure TfEditorGoToLine.BtnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfEditorGoToLine.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

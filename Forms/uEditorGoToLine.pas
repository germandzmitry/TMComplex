unit uEditorGoToLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TEditorGoToLineForm = class(TForm)
    eLine: TEdit;
    BtnOk: TButton;
    BtnCancel: TButton;
    lLineNum: TLabel;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditorGoToLineForm: TEditorGoToLineForm;

implementation

{$R *.dfm}

uses uLanguage;

procedure TEditorGoToLineForm.FormCreate(Sender: TObject);
begin
  eLine.Text := '';
end;

procedure TEditorGoToLineForm.FormShow(Sender: TObject);
begin
  UpdateLanguage(Self, lngRus);
end;

procedure TEditorGoToLineForm.BtnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TEditorGoToLineForm.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

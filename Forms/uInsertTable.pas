unit uInsertTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTableType = (ttArray, ttMatrix, ttCases);

type
  TInsertTableForm = class(TForm)
    BtnCancel: TButton;
    BtnOk: TButton;
    lRows: TLabel;
    eRows: TEdit;
    lColumns: TLabel;
    eColumns: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FTable: string;
    FTableType: TTableType;
  public
    { Public declarations }
    property Table: string read FTable;
    property TableType: TTableType read FTableType write FTableType;
  end;

  // var
  // InsertArrayForm: TInsertArrayForm;

implementation

{$R *.dfm}

uses uLanguage;

procedure TInsertTableForm.FormCreate(Sender: TObject);
begin
  eRows.Text := '3';
  eColumns.Text := '3';
end;

procedure TInsertTableForm.FormShow(Sender: TObject);
begin
  UpdateLanguage(Self, lngRus);
  eRows.SetFocus;
end;

procedure TInsertTableForm.BtnOkClick(Sender: TObject);
const
  cFieldFill: string = 'Введите количество строк и/или столбцов.';
  cFieldReadError: string = 'Ошибка чтения количества строк и/или столбцов.';
var
  i, LRow, LCol: Integer;
  LAllLine, LAllColumns, LAlign, LBegin, LEnd: string;
begin
  if (eRows.Text = '') or (eColumns.Text = '') then
  begin
    MessageBox(Handle, PChar(cFieldFill), PChar(Self.Caption), MB_ICONWARNING + MB_OK);
    exit;
  end;

  try
    LRow := strtoint(eRows.Text) - 1;
    LCol := strtoint(eColumns.Text) - 1;
  except
    on E: Exception do
    begin
      MessageBox(Handle, PChar(cFieldReadError), PChar(Self.Caption), MB_ICONWARNING + MB_OK);
      exit;
    end;
  end;

  // Собираем выравнивание
  for i := 0 to LCol do
  begin
    if FTableType = ttCases then
      LAlign := LAlign + 'l'
    else
      LAlign := LAlign + 'c';
  end;

  // Собираем строку
  if FTableType in [ttMatrix, ttCases] then
    LAllLine := '    <>'
  else
    LAllLine := '  <>';

  for i := 1 to LCol do
  begin
    LAllLine := LAllLine + ' & <>';
  end;

  // собираем таблицу
  LAllColumns := LAllLine + ' \\';
  for i := 1 to LRow do
  begin
    LAllColumns := LAllColumns + #13#10 + LAllLine + ' \\';
  end;

  // собираем заголовки
  case FTableType of
    ttArray:
      begin
        LBegin := '\begin{array}{' + LAlign + '}';
        LEnd := '\end{array}';
      end;
    ttMatrix:
      begin
        LBegin := '\left(' + #13#10 + '  \begin{array}{' + LAlign + '}';
        LEnd := '  \end{array}' + #13#10 + '\right)';
      end;
    ttCases:
      begin
        LBegin := '\left\{' + #13#10 + '  \begin{array}{' + LAlign + '}';
        LEnd := '  \end{array}' + #13#10 + '\right.';
      end;
  end;

  FTable := LBegin + #13#10 + LAllColumns + #13#10 + LEnd;

  ModalResult := mrOk;
end;

procedure TInsertTableForm.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

unit uEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Menus, uTypes, BCEditor.Editor.Base, BCEditor.Editor,
  BCEditor.Types, BCEditor.Editor.Marks, BCEditor.Editor.KeyCommands,
  Vcl.ExtCtrls;

type
  TfEditor = class(TForm)
    Editor: TBCEditor;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditorChange(Sender: TObject);
    procedure EditorCaretChanged(ASender: TObject; X, Y: Integer);
    procedure EditorKeyPress(ASender: TObject; var AKey: Char);
    procedure EditorLeftMaginClick(ASender: TObject; AButton: TMouseButton; X, Y, ALine: Integer;
      AMark: TBCEditorMark);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FFileName: string;
    FState: Integer;
    procedure SetFileName(const Value: string);
    procedure SetState(const Value: Integer);
  public
    { Public declarations }
    property FileName: string read FFileName write SetFileName;
    property State: Integer read FState write SetState;
  end;

var
  fEditor: TfEditor;

resourcestring
  rsEditorQueryClose = 'Save changes to the file "%s"?';

implementation

{$R *.dfm}

uses uMain;

procedure TfEditor.FormCreate(Sender: TObject);
begin
  Panel1.Caption := '';
  Panel1.Height := 1;

  Editor.Lines.Clear;
  Editor.Align := alClient;
  Editor.BorderStyle := bsNone;
  Editor.Scroll.Shadow.Visible := true;
  Editor.CompletionProposal.Enabled := false;
  Editor.RightMargin.Options := [];
  Editor.RightMargin.Position := 100;
  Editor.ActiveLine.Indicator.Visible := true;
  Editor.Undo.Options := [];
  // Editor.SpecialChars.Visible := true;
  // Editor.SpecialChars.EndOfLine.Visible := true;
  Editor.SpecialChars.EndOfLine.Style := eolPilcrow;

  Editor.OnChange := EditorChange;
  Editor.OnKeyPress := EditorKeyPress;
  Editor.OnCaretChanged := EditorCaretChanged;
  Editor.OnLeftMarginClick := EditorLeftMaginClick;

  Editor.Highlighter.Colors.LoadFromFile('Default.json');
  Editor.Highlighter.LoadFromFile('TMC.json');

  // Editor.Highlighter.Colors.LoadFromFile('TMComplex.json');
  // Editor.Highlighter.LoadFromFile('LaTex.json');

  // Editor.KeyCommands.Clear;
  // Editor.KeyCommands.Add(ecLineBreak, [], VK_RETURN);
  // Editor.KeyCommands.Add(ecLineBreak, [ssShift], VK_RETURN);
  // Editor.KeyCommands.Add(ecTab, [], VK_TAB);
  // Editor.KeyCommands.Add(ecShiftTab, [ssShift], VK_TAB);

  FState := stNew;
end;

procedure TfEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  answer: Word;
begin
  if (FState = stEdit) or ((FState = stNew) and (Editor.Modified)) then
  begin
    answer := MessageBox(Handle, pchar(Format(rsEditorQueryClose, [Caption])), pchar('TM Complex'),
      MB_YESNOCANCEL + MB_ICONINFORMATION);
    case answer of
      ID_YES:
        main.ActFileSaveExecute(main.ActFileSave);
      ID_NO:
        ;
      ID_CANCEL:
        abort;
    end;
  end;
end;

procedure TfEditor.EditorCaretChanged(ASender: TObject; X, Y: Integer);
begin
  main.StatusBar.Panels[STATUS_BAR_CARET].text := IntToStr(Editor.DisplayCaretY) + ':' +
    IntToStr(Editor.DisplayCaretX);
end;

procedure TfEditor.EditorChange(Sender: TObject);
begin
  if (main.ActiveEditor = self) and (FState <> stNew) then
    if Editor.Modified then
      FState := stEdit
    else
      FState := stSave;

  if main.PageCode.ActivePage.ImageIndex <> FState then
    main.PageCode.ActivePage.ImageIndex := FState;
end;

procedure TfEditor.EditorKeyPress(ASender: TObject; var AKey: Char);
begin
  //
end;

procedure TfEditor.EditorLeftMaginClick(ASender: TObject; AButton: TMouseButton;
  X, Y, ALine: Integer; AMark: TBCEditorMark);
begin
  //
end;

procedure TfEditor.SetFileName(const Value: string);
begin
  FFileName := Value;
  Caption := StringReplace(ExtractFileName(FFileName), ExtractFileExt(FFileName), '', []);
end;

procedure TfEditor.SetState(const Value: Integer);
begin
  FState := Value;
  if main.PageCode.PageCount > 0 then
    main.PageCode.ActivePage.ImageIndex := FState;
end;

end.

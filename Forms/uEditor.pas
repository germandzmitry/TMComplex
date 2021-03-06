unit uEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Menus, uTypes, BCEditor.Editor.Base, BCEditor.Editor,
  BCEditor.Types, BCEditor.Editor.Marks, BCEditor.Editor.KeyCommands,
  Vcl.ExtCtrls;

type
  TEditorForm = class(TForm)
    Editor: TBCEditor;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditorChange(Sender: TObject);
    procedure EditorCaretChanged(ASender: TObject; X, Y: Integer);
    procedure EditorKeyPress(ASender: TObject; var AKey: Char);
    procedure EditorLeftMaginClick(ASender: TObject; AButton: TMouseButton; X, Y, ALine: Integer;
      AMark: TBCEditorMark);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure GoToLine(ALine: Integer);
  private
    { Private declarations }
    FPath: string;
    FFileName: string;
    FFullFileName: string;
    FOnlyFileName: string;
    FState: Integer;
    procedure SetFileName(const Value: string);
    procedure SetState(const Value: Integer);
  public
    { Public declarations }
    property FilePath: string read FPath;
    property FileNameFull: string read FFullFileName write SetFileName;
    property FileName: string read FFileName;
    property FileNameOnly: string read FOnlyFileName;
    property State: Integer read FState write SetState;
  end;

  // var
  // fEditor: TfEditor;

resourcestring
  rsEditorQueryClose = 'Save changes to the file "%s"?';

implementation

{$R *.dfm}

uses uMain;

procedure TEditorForm.FormCreate(Sender: TObject);
begin
  Editor.Lines.Clear;
  Editor.Align := alClient;
  Editor.BorderStyle := bsNone;
  Editor.Scroll.Shadow.Visible := true;
  Editor.CompletionProposal.Enabled := false;
  Editor.LeftMargin.Bookmarks.Visible := false;
  Editor.LeftMargin.Bookmarks.ShortCuts := false;
  Editor.LeftMargin.Border.Style := mbsMiddle;
  Editor.RightMargin.Options := [];
  Editor.RightMargin.Position := 100;
  // Editor.ActiveLine.Indicator.Visible := true;
  Editor.Undo.Options := [];
  // Editor.SpecialChars.Visible := true;
  // Editor.SpecialChars.EndOfLine.Visible := true;
  Editor.SpecialChars.EndOfLine.Style := eolPilcrow;
  Editor.PopupMenu := Main.PopupActionEditor;

  Editor.OnChange := EditorChange;
  Editor.OnKeyPress := EditorKeyPress;
  Editor.OnCaretChanged := EditorCaretChanged;
  Editor.OnLeftMarginClick := EditorLeftMaginClick;

  if FileExists(ExtractFilePath(Application.ExeName) + 'Colors\Default.json') then
    Editor.Highlighter.Colors.LoadFromFile('Default.json');

  if FileExists(ExtractFilePath(Application.ExeName) + 'Highlighters\TMC.json') then
    Editor.Highlighter.LoadFromFile('TMC.json');

  // Editor.KeyCommands.Clear;
  // Editor.KeyCommands.Add(ecLineBreak, [], VK_RETURN);
  // Editor.KeyCommands.Add(ecLineBreak, [ssShift], VK_RETURN);
  // Editor.KeyCommands.Add(ecTab, [], VK_TAB);
  // Editor.KeyCommands.Add(ecShiftTab, [ssShift], VK_TAB);

  FState := stNew;
end;

procedure TEditorForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  answer: Word;
begin
{$IFDEF DEBUG}
  // ��� �� �� ��������� ��� ����������
  exit;
{$IFEND}

  if (FState = stEdit) or ((FState = stNew) and (Editor.Modified)) then
  begin
    answer := MessageBox(Handle, pchar(Format(rsEditorQueryClose, [Caption])), pchar('TM Complex'),
      MB_YESNOCANCEL + MB_ICONINFORMATION);
    case answer of
      ID_YES:
        CanClose := Main.SaveDocument;
      ID_NO:
        ;
      ID_CANCEL:
        CanClose := false;
    end;
  end;
end;

procedure TEditorForm.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Main.TabEditor.Tabs.Count - 1 do
    if TEditorForm(Main.TabEditor.Tabs.Objects[i]) = Self then
    begin
      Main.TabEditor.TabIndex := i;
      Break;
    end;
end;

procedure TEditorForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  LNewTab, i: Integer;
  LAllowChange: Boolean;
begin
  for i := 0 to Main.TabEditor.Tabs.Count - 1 do
    if TEditorForm(Main.TabEditor.Tabs.Objects[i]) = Self then
    begin
      Main.TabEditor.Tabs.Delete(i);
      Break;
    end;

  if Main.TabEditor.Tabs.Count > 0 then
  begin
    // ���� ������� ��������� �������
    if i = Main.TabEditor.Tabs.Count then
      // ��������� �� ������ �������
      LNewTab := 0
    else
      // �����  �������� ���������
      LNewTab := i;
    Main.TabEditorChange(Main.TabEditor, LNewTab, LAllowChange);
  end
  else
    Main.TabEditorChange(Main.TabEditor, -1, LAllowChange);

  Action := caFree;
end;

procedure TEditorForm.EditorCaretChanged(ASender: TObject; X, Y: Integer);
begin
  Main.StatusBar.Panels[STATUS_BAR_CARET].text := IntToStr(Editor.DisplayCaretY) + ':' +
    IntToStr(Editor.DisplayCaretX);
end;

procedure TEditorForm.EditorChange(Sender: TObject);
begin
  if (Main.ActiveEditor = Self) and (FState <> stNew) then
    if Editor.Modified then
      FState := stEdit
    else
      FState := stSave;
end;

procedure TEditorForm.EditorKeyPress(ASender: TObject; var AKey: Char);
begin
  //
end;

procedure TEditorForm.EditorLeftMaginClick(ASender: TObject; AButton: TMouseButton;
  X, Y, ALine: Integer; AMark: TBCEditorMark);
begin
  //
end;

procedure TEditorForm.SetFileName(const Value: string);
begin
  FFullFileName := Value;
  FPath := ExtractFilePath(FFullFileName);
  FFileName := ExtractFileName(FFullFileName);
  FOnlyFileName := StringReplace(ExtractFileName(FFullFileName),
    ExtractFileExt(FFullFileName), '', []);
  Caption := FOnlyFileName;
end;

procedure TEditorForm.SetState(const Value: Integer);
begin
  FState := Value;
  // if Main.PageEditor.PageCount > 0 then
  // Main.PageEditor.ActivePage.ImageIndex := FState;
end;

procedure TEditorForm.GoToLine(ALine: Integer);
begin
  // Self.Editor.DisplayCaretX := 1;
  // Self.Editor.DisplayCaretY := ALine;
  Self.Editor.GotoLineAndCenter(ALine - 1);
end;

end.

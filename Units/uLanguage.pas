unit uLanguage;

interface

uses
  System.SysUtils, Vcl.Forms, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, IniFiles;

const
  lngRus: string = 'Russian';

procedure UpdateLanguage(AForm: TForm; ASelectedLanguage: string = ''); overload;

implementation

procedure UpdateLanguage(AForm: TForm; ASelectedLanguage: string = '');
var
  s: string;
  i, j: integer;
  lng: TIniFile;
  LLanguagePath: string;
begin
  if ASelectedLanguage = '' then
    Exit;

  LLanguagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) + 'Languages');

  if not DirectoryExists(LLanguagePath) then
    Exit;

  lng := TIniFile.Create(LLanguagePath + ASelectedLanguage + '.lng');
  try
    s := lng.ReadString(AForm.Name, 'Caption', '');
    if s <> '' then
      AForm.Caption := s;

    for i := 0 to AForm.ComponentCount - 1 do
    begin
      { Button }
      if AForm.Components[i] is TButton then
      begin
        s := lng.ReadString(AForm.Name, TButton(AForm.Components[i]).Name, '');
        if s <> '' then
          TButton(AForm.Components[i]).Caption := s
      end
      { SpeedButton }
      else if AForm.Components[i] is TSpeedButton then
      begin
        s := lng.ReadString(AForm.Name, TSpeedButton(AForm.Components[i]).Name, '');
        if s <> '' then
          TSpeedButton(AForm.Components[i]).Caption := ' ' + s;
        s := lng.ReadString(AForm.Name, TSpeedButton(AForm.Components[i]).Name + ':h', '');
        if s <> '' then
          TSpeedButton(AForm.Components[i]).Hint := s;
      end
      { RadioButton }
      else if AForm.Components[i] is TRadioButton then
      begin
        s := lng.ReadString(AForm.Name, TRadioButton(AForm.Components[i]).Name, '');
        if s <> '' then
          TRadioButton(AForm.Components[i]).Caption := ' ' + s;
      end
      { CheckBox }
      else if AForm.Components[i] is TCheckBox then
      begin
        s := lng.ReadString(AForm.Name, TRadioButton(AForm.Components[i]).Name, '');
        if s <> '' then
          (AForm.Components[i] as TCheckBox).Caption := ' ' + s;
      end
      { Label }
      else if AForm.Components[i] is TLabel then
      begin
        s := lng.ReadString(AForm.Name, TLabel(AForm.Components[i]).Name, '');
        if s <> '' then
          TLabel(AForm.Components[i]).Caption := s
      end
      { LinkLabel }
      else if AForm.Components[i] is TLinkLabel then
      begin
        s := lng.ReadString(AForm.Name, TLinkLabel(AForm.Components[i]).Name, '');
        if s <> '' then
          TLinkLabel(AForm.Components[i]).Caption := s
      end
      { Panel }
      else if AForm.Components[i] is TPanel then
      begin
        s := lng.ReadString(AForm.Name, AForm.Components[i].Name, '');
        if s <> '' then
          (AForm.Components[i] as TPanel).Caption := s
      end
      { GroupBox }
      else if AForm.Components[i] is TGroupBox then
      begin
        s := lng.ReadString(AForm.Name, AForm.Components[i].Name, '');
        if s <> '' then
          (AForm.Components[i] as TGroupBox).Caption := s
      end
      { TTabSheet }
      else if AForm.Components[i] is TTabSheet then
      begin
        s := lng.ReadString(AForm.Name, TTabSheet(AForm.Components[i]).Name, '');
        if s <> '' then
          TTabSheet(AForm.Components[i]).Caption := s
      end
      { TreeView }
      else if AForm.Components[i] is TTreeView then
      begin

      end
      { ListView }
      else if AForm.Components[i] is TListView then
      begin
        for j := 0 to TListView(AForm.Components[i]).Columns.Count - 1 do
        begin
          s := lng.ReadString(AForm.Name,
            Format('%s:%d', [TListView(AForm.Components[i]).Name, j]), '');
          if s <> '' then
            TListView(AForm.Components[i]).Columns[j].Caption := s;
        end;
      end
      { Action }
      else if AForm.Components[i] is TAction then
      begin
        s := lng.ReadString(AForm.Name, TAction(AForm.Components[i]).Name, '');
        if (TAction(AForm.Components[i]).Caption <> '') and (s <> '') then
          TAction(AForm.Components[i]).Caption := s;
        s := lng.ReadString(AForm.Name, TAction(AForm.Components[i]).Name + ':h', '');
        if s <> '' then
          TAction(AForm.Components[i]).Hint := s;
      end;
    end;
  finally
    lng.Free;
  end;

end;

end.

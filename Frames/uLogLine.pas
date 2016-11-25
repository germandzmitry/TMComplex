unit uLogLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uTexLogParser, System.RegularExpressions;

type
  TLogLineFrame = class(TFrame)
    pFile: TPanel;
    lMsg: TLabel;
    BevelBottom: TBevel;
    pColorFile: TPanel;
    lFileLine: TLabel;
    pMsg: TPanel;
  private
    { Private declarations }
    FMsg: TTexLogLine;
    procedure SetMsg(const Value: TTexLogLine);
  public
    { Public declarations }
    property Msg: TTexLogLine read FMsg write SetMsg;
  end;

implementation

{$R *.dfm}
{ TLogLineFrame }

procedure TLogLineFrame.SetMsg(const Value: TTexLogLine);
begin
  FMsg := Value;

  pFile.Caption := '';
  pMsg.Caption := '';

  case FMsg.Severity of
    lsBadBox:
      pColorFile.Color := clBlue;
    lsWarning:
      pColorFile.Color := clYellow;
    lsError:
      pColorFile.Color := clRed;
    lsDebug:
      pColorFile.Color := clGreen;
  end;

  lFileLine.Caption := ExtractFileName(FMsg.FileName) + ' - ' + IntToStr(FMsg.Row);
  lMsg.Caption := TRegEx.Replace(FMsg.Description, '\n', '' + #13#10 + '', [roIgnoreCase]);
end;

end.

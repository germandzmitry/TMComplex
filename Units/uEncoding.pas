unit uEncoding;

interface

uses
  System.SysUtils, Vcl.StdCtrls, BCEditor.Editor;

const
  ENCODING_ANSI = 0;
  ENCODING_ASCII = 1;
  ENCODING_BIG_ENDIAN_UNICODE = 2;
  ENCODING_UNICODE = 3;
  ENCODING_UTF7 = 4;
  ENCODING_UTF8 = 5;
  ENCODING_UTF8_WITHOUT_BOM = 6;

  ENCODING_CAPTIONS: array [0 .. 6] of string = ('ANSI', 'ASCII', 'Big Endian Unicode', 'Unicode', 'UTF-7', 'UTF-8',
    'UTF-8 without BOM');

function EncodingToText(AEncoding: System.SysUtils.TEncoding): string;
procedure FillEncodingItems(AComboBox: TComboBox);
procedure SetEncoding(AEditor: TBCEditor; Value: Integer);

implementation

uses
  BCEditor.Encoding;

function EncodingToText(AEncoding: System.SysUtils.TEncoding): string;
begin
  if AEncoding = TEncoding.ASCII then
    Result := ENCODING_CAPTIONS[ENCODING_ASCII]
  else if AEncoding = TEncoding.BigEndianUnicode then
    Result := ENCODING_CAPTIONS[ENCODING_BIG_ENDIAN_UNICODE]
  else if AEncoding = TEncoding.Unicode then
    Result := ENCODING_CAPTIONS[ENCODING_UNICODE]
  else if AEncoding = TEncoding.UTF7 then
    Result := ENCODING_CAPTIONS[ENCODING_UTF7]
  else if AEncoding = TEncoding.UTF8 then
    Result := ENCODING_CAPTIONS[ENCODING_UTF8]
  else if AEncoding = BCEditor.Encoding.TEncoding.UTF8WithoutBOM then
    Result := ENCODING_CAPTIONS[ENCODING_UTF8_WITHOUT_BOM]
  else
    Result := ENCODING_CAPTIONS[ENCODING_ANSI];
end;

procedure FillEncodingItems(AComboBox: TComboBox);
var
  i: Integer;
begin
  AComboBox.Clear;
  for i := Low(ENCODING_CAPTIONS) to High(ENCODING_CAPTIONS) do
    AComboBox.Items.Add(ENCODING_CAPTIONS[i]);
end;

procedure SetEncoding(AEditor: TBCEditor; Value: Integer);
begin
  if Assigned(AEditor) then
    with AEditor do
      case Value of
        ENCODING_ANSI:
          Encoding := TEncoding.ANSI;
        ENCODING_ASCII:
          Encoding := TEncoding.ASCII;
        ENCODING_BIG_ENDIAN_UNICODE:
          Encoding := TEncoding.BigEndianUnicode;
        ENCODING_UNICODE:
          Encoding := TEncoding.Unicode;
        ENCODING_UTF7:
          Encoding := TEncoding.UTF7;
        ENCODING_UTF8:
          Encoding := TEncoding.UTF8;
        ENCODING_UTF8_WITHOUT_BOM:
          Encoding := TEncoding.UTF8WithoutBOM;
      end;
end;

end.

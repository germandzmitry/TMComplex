unit uEncoding;

interface

uses
  System.SysUtils;

const
  ENCODING_ANSI = 0;
  ENCODING_ASCII = 1;
  ENCODING_BIG_ENDIAN_UNICODE = 2;
  ENCODING_UNICODE = 3;
  ENCODING_UTF7 = 4;
  ENCODING_UTF8 = 5;
  ENCODING_UTF8_WITHOUT_BOM = 6;

  ENCODING_CAPTIONS: array [0 .. 6] of string = ('ANSI', 'ASCII', 'Big Endian Unicode', 'Unicode',
    'UTF-7', 'UTF-8', 'UTF-8 without BOM');

function EncodingToText(AEncoding: System.SysUtils.TEncoding): string;

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

end.

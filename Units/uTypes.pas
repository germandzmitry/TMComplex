unit uTypes;

interface

const
  FileSetting = 'Setting.ini';
  FileSettingRibbon = 'SettingRibbon.xml';
  FileSettingRecentItem = 'SettingRecentItem.xml';

  // FolderRes = 'Res';
  // FolderTMComplex = 'TMComplex';
  // FolderProjectRes = 'Res';

  stNew: integer = 0;
  stSave: integer = 1;
  stEdit: integer = 2;

  // ��������� ��� ������
const
  // ����������� �������
  cmTextFormatBegin: char = '{';
  cmTextFormatEnd: char = '}';

  // ��������
  cmDocumentBegin: string = '\begin{document}';
  cmDocumentEnd: string = '\end{document}';

  // ������������ ������
  cmAlignLeftBegin: string = '\begin{left}';
  cmAlignLeftEnd: string = '\end{left}';
  cmAlignRightBegin: string = '\begin{right}';
  cmAlignRightEnd: string = '\end{right}';
  cmAlignCenterBegin: string = '\begin{center}';
  cmAlignCenterEnd: string = '\end{center}';
  cmAlignJustifyBegin: string = '\begin{justify}';
  cmAlignJustifyEnd: string = '\end{justify}';

  // ��������
  cmListItemizeBegin: string = '\begin{itemize}';
  cmListItemizeItem: string = '\item';
  cmListItemizeEnd: string = '\end{itemize}';

  // �������
  cmTextColor: string = '\textcolor';
  cmFontStyleBold: string = '\bf';
  cmFontStyleItalic: string = '\it';
  cmFontStyleUnderline: string = '\un';

implementation

end.

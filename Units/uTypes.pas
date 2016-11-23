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

  // константы для текста
const
  // Управляющие символы
  cmTextFormatBegin: char = '{';
  cmTextFormatEnd: char = '}';

  // Документ
  cmDocumentBegin: string = '\begin{document}';
  cmDocumentEnd: string = '\end{document}';

  // Выравнивание текста
  cmAlignLeftBegin: string = '\begin{left}';
  cmAlignLeftEnd: string = '\end{left}';
  cmAlignRightBegin: string = '\begin{right}';
  cmAlignRightEnd: string = '\end{right}';
  cmAlignCenterBegin: string = '\begin{center}';
  cmAlignCenterEnd: string = '\end{center}';
  cmAlignJustifyBegin: string = '\begin{justify}';
  cmAlignJustifyEnd: string = '\end{justify}';

  // List
  cmListItemizeBegin: string = '\begin{itemize}';
  cmListItemizeItem: string = '\item';
  cmListItemizeEnd: string = '\end{itemize}';
  cmListEnumerateBegin: string = '\begin{enumerate}';
  cmListEnumerateItem: string = '\item';
  cmListEnumerateEnd: string = '\end{enumerate}';
  cmListDescriptionBegin: string = '\begin{description}';
  cmListDescriptionItem: string = '\item[_]';
  cmListDescriptionEnd: string = '\end{description}';

  // Команды
  cmTextColor: string = '\textcolor';
  cmFontStyleBold: string = '\textbf';
  cmFontStyleItalic: string = '\textit';
  cmFontStyleUnderline: string = '\uline';
//  cmFontStyleUnderline: string = '\un';

implementation

end.

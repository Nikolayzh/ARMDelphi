unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls,
  Mask, OleServer, Word2000, Excel2000;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    Запросы: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    WordApplication1: TWordApplication;
    ExcelApplication1: TExcelApplication;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, ComObj;

{$R *.dfm}



const
  //Координаты левой верхней ячейки в таблице на листе Excel.
  gRow = 3;
  gCol = 2;
var
  //Ссылка на интерфейс рабочего листа в книге MS Excel.
  gExSh : Variant;

procedure TForm7.Button1Click(Sender: TObject);
begin
form7.ADOQuery1.Close;
form7.ADOQuery1.SQL.Text:='SELECT     Клиент, Товар, Количество, Сумма '+
'FROM         dbo.Продажи   WHERE  Товар= '''+edit1.Text+'''';
//showmessage(form7.ADOQuery1.SQL.Text) ;
form7.ADOQuery1.Open;
end;

procedure TForm7.Button2Click(Sender: TObject);
var r: Range;
    T : Table;
    numRec,numField,i,j : integer;
    C : Cell;
    Unit_, count_, Extend_: OleVariant;
begin
numRec:=ADOQuery1.RecordCount;
numField :=ADOQuery1.FieldCount;
WordApplication1.Connect;
WordApplication1.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
WordApplication1.Visible:=true;
WordApplication1.Selection.TypeText('Таблица <Продажи>');
R:=WordApplication1.Selection.Range;
R.Tables.Add(r,numRec+1,numField,EmptyParam,EmptyParam);
T:=WordApplication1.ActiveDocument.Tables.Item(1);
for  j:=0 to numField-1do
  begin
    C:=T.Cell(1,j+1);
    C.Range.InsertAfter(ADOQuery1.Fields[j].FieldName);
  end;
  for i:=1 to numRec do
    for j:=0 to numField-1 do
      begin
        C:=T.Cell(i+1,j+1);
        ADOQuery1.RecNo:=i;
        C.Range.InsertAfter(ADOQuery1.Fields[j].AsString);
     end;
Unit_ := wdLine;
Extend_ := wdMove;
WordApplication1.Selection.EndKey(Unit_, Extend_); // Переход в конец набора текста
    WordApplication1.Selection.ParagraphFormat.Alignment:=$00000000;
    WordApplication1.Selection.ParagraphFormat.FirstLineIndent:=10;
     WordApplication1.Selection.TypeText(#13#10+ 'Подпись _________________');

end;




procedure TForm7.Button3Click(Sender: TObject);
var
  exApp, exBook : Variant;
begin
  //Попытка подключиться к корневому объекту MS Excel.
  try
    exApp := CreateOleObject('Excel.Application');
  except
    MessageBox(0, 'Не удалось запустить MS Excel. Действие отменено.',
      'Ошибка', MB_OK + MB_ICONERROR + MB_APPLMODAL);
    Exit;
  end;

  //Запускаем экземпляр MS Excel.
  exApp := CreateOleObject('Excel.Application');
  //Делаем окно MS Excel видимым.
  exApp.Visible := True;
  //Создаём рабочую книгу и получаем ссылку на её интерфейс.
  exBook := exApp.WorkBooks.Add;
  //Ссылка на первый лист рабочей книги.
  gExSh := exBook.WorkSheets[1];
end;


procedure TForm7.Button4Click(Sender: TObject);
const
  //Идентификатор типа ячейки в диапазоне - последняя (справа внизу) ячейка диапазона.
  xlCellTypeLastCell = 11;
  //Тип линий.
  xlContinuous = 1;
  //Толщина линий.
  xlMedium = -4138;
  xlThick = 4;
  xlThin = 2;
var
  exCell1, exCell2, exRng : Variant;
  i, Row : Integer;
begin
  //Проверка подключения к MS Excel.
  if VarIsClear(gExSh) then begin
    MessageBox(0, 'Нет подключения к MS Excel. Действие отменено.',
      'Внимание!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;
  //Проверка подключения к таблице БД.
  if not ADOQuery1.Active then begin
    MessageBox(0, 'Таблица БД закрыта. Действие отменено.',
      'Внимание!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;
  //Проверка таблицы БД на пустоту.
  if ADOQuery1.Eof then begin
    MessageBox(0, 'Таблица БД пуста. Действие отменено.',
      'Внимание!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;

  //Верхняя левая ячейка таблицы Excel.
  exCell1 := gExSh.Cells[gRow, gCol];
  //Номер нижней строки.
  Row := gExSh.UsedRange.SpecialCells(xlCellTypeLastCell).Row;
  //Нижняя левая ячейка таблицы Excel.
  exCell2 := gExSh.Cells[Row, exCell1.Column];
  //Свободная нижняя левая ячейка.
  exCell2 := exCell2.Offset[1, 0];
  //Если exCell2 оказалась выше, чем exCell1, то за нижнюю ячейку принимаем exCell1.
  if exCell2.Row < exCell1.Row then
    exCell2 := exCell1;
  //Записываем данные строки из таблицы БД на лист MS Excel.
  for i := 0 to ADOQuery1.FieldCount - 1 do
    exCell2.Offset[0, i].Value := ADOQuery1.Fields[i].AsString;

  //Диапазон в который записана строка.
  exRng := gExSh.Range[exCell2, exCell2.Offset[0, ADOQuery1.FieldCount - 1]];
  //Обрамление кунтуров диапазона.
  exRng.Borders.LineStyle := xlContinuous;
  exRng.Borders.Weight := xlThin;
  //Автоматический подбор ширины столбцов для всей таблицы.
  exRng := gExSh.Range[exCell1, exCell2.Offset[0, ADOQuery1.FieldCount - 1]];
  exRng.Columns.AutoFit;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
 VarClear(gExSh);
end;

end.

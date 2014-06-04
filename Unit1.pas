unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, jpeg, ExtCtrls, Menus, ComCtrls, OleServer,
  Word2000, Excel2000;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable5: TADOTable;
    ADOTable6: TADOTable;
    ADOTable7: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    N5: TMenuItem;
    N6: TMenuItem;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    WordApplication1: TWordApplication;
    ExcelApplication1: TExcelApplication;
    ADOTable1Код_поставщика: TAutoIncField;
    ADOTable1Компания: TStringField;
    ADOTable1ФИО_поставщика: TStringField;
    ADOTable1Телефон: TIntegerField;
    ADOTable1Адрес: TStringField;
    ADOTable2Код_поставки: TAutoIncField;
    ADOTable2Дата_поставки: TDateTimeField;
    ADOTable2Товар: TStringField;
    ADOTable2Код_поставщика: TIntegerField;
    ADOTable3Код_товара: TAutoIncField;
    ADOTable3Имя_товара: TStringField;
    ADOTable3Тех_характеристики: TStringField;
    ADOTable3Описание: TStringField;
    ADOTable3Стоимость_закупки: TIntegerField;
    ADOTable3Наличие: TStringField;
    ADOTable3Количество: TIntegerField;
    ADOTable3Стоимость_продажи: TIntegerField;
    ADOTable3Код_продажи: TIntegerField;
    ADOTable3Код_поставки: TIntegerField;
    ADOTable5Код_клиента: TAutoIncField;
    ADOTable5ФИО: TStringField;
    ADOTable5Адрес: TStringField;
    ADOTable5Телефон: TIntegerField;
    ADOTable6Код_продажи: TAutoIncField;
    ADOTable6Клиент: TStringField;
    ADOTable6Товар: TStringField;
    ADOTable6Количество: TIntegerField;
    ADOTable6Сумма: TIntegerField;
    ADOTable6Обслуживал: TStringField;
    ADOTable6Код_сотрудника: TIntegerField;
    ADOTable6Код_клиента: TIntegerField;
    ADOTable7Код_сотрудника: TAutoIncField;
    ADOTable7Фамилия: TStringField;
    ADOTable7Имя: TStringField;
    ADOTable7Отчество: TStringField;
    ADOTable7Должность: TStringField;
    ADOTable7Адрес: TStringField;
    ADOTable7Телефон: TIntegerField;
    ADOTable7Дата_рождения: TDateTimeField;
    ADOTable7Заметки: TStringField;
     procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2, Unit3, Unit4,  Unit6, Unit7, Unit8, ComObj;
{$R *.dfm}
const
  //Координаты левой верхней ячейки в таблице на листе Excel.
  gRow = 3;
  gCol = 2;
var
  //Ссылка на интерфейс рабочего листа в книге MS Excel.
  gExSh : Variant;

procedure TForm1.Button1Click(Sender: TObject);

begin
Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
         Form4.Show;
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
form6.Show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form8.Show;
end;



procedure TForm1.Excel1Click(Sender: TObject);
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

procedure TForm1.N4Click(Sender: TObject);
begin
WINEXEC('notepad.exe A.TXT',SW_SHOWNORMAL);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 WINEXEC('calc.exe',SW_SHOWNORMAL);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.StatusBar1.Panels[1].Text:=datetostr(date);
form1.StatusBar1.Panels[2].Text:=timetostr(time);
end;

procedure TForm1.Word1Click(Sender: TObject);
var Word: variant;
begin
try
Word := CreateOleObject('Word.Application');
except
ShowMessage('Не могу запустить Microsoft Word');
end;
Word.Visible := True;
Word.Documents.Add;
end;

end.

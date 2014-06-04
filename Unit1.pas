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
    ADOTable1���_����������: TAutoIncField;
    ADOTable1��������: TStringField;
    ADOTable1���_����������: TStringField;
    ADOTable1�������: TIntegerField;
    ADOTable1�����: TStringField;
    ADOTable2���_��������: TAutoIncField;
    ADOTable2����_��������: TDateTimeField;
    ADOTable2�����: TStringField;
    ADOTable2���_����������: TIntegerField;
    ADOTable3���_������: TAutoIncField;
    ADOTable3���_������: TStringField;
    ADOTable3���_��������������: TStringField;
    ADOTable3��������: TStringField;
    ADOTable3���������_�������: TIntegerField;
    ADOTable3�������: TStringField;
    ADOTable3����������: TIntegerField;
    ADOTable3���������_�������: TIntegerField;
    ADOTable3���_�������: TIntegerField;
    ADOTable3���_��������: TIntegerField;
    ADOTable5���_�������: TAutoIncField;
    ADOTable5���: TStringField;
    ADOTable5�����: TStringField;
    ADOTable5�������: TIntegerField;
    ADOTable6���_�������: TAutoIncField;
    ADOTable6������: TStringField;
    ADOTable6�����: TStringField;
    ADOTable6����������: TIntegerField;
    ADOTable6�����: TIntegerField;
    ADOTable6����������: TStringField;
    ADOTable6���_����������: TIntegerField;
    ADOTable6���_�������: TIntegerField;
    ADOTable7���_����������: TAutoIncField;
    ADOTable7�������: TStringField;
    ADOTable7���: TStringField;
    ADOTable7��������: TStringField;
    ADOTable7���������: TStringField;
    ADOTable7�����: TStringField;
    ADOTable7�������: TIntegerField;
    ADOTable7����_��������: TDateTimeField;
    ADOTable7�������: TStringField;
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
  //���������� ����� ������� ������ � ������� �� ����� Excel.
  gRow = 3;
  gCol = 2;
var
  //������ �� ��������� �������� ����� � ����� MS Excel.
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
  //������� ������������ � ��������� ������� MS Excel.
  try
    exApp := CreateOleObject('Excel.Application');
  except
    MessageBox(0, '�� ������� ��������� MS Excel. �������� ��������.',
      '������', MB_OK + MB_ICONERROR + MB_APPLMODAL);
    Exit;
  end;

  //��������� ��������� MS Excel.
  exApp := CreateOleObject('Excel.Application');
  //������ ���� MS Excel �������.
  exApp.Visible := True;
  //������ ������� ����� � �������� ������ �� � ���������.
  exBook := exApp.WorkBooks.Add;
  //������ �� ������ ���� ������� �����.
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
ShowMessage('�� ���� ��������� Microsoft Word');
end;
Word.Visible := True;
Word.Documents.Add;
end;

end.

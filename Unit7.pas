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
    �������: TTabSheet;
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
  //���������� ����� ������� ������ � ������� �� ����� Excel.
  gRow = 3;
  gCol = 2;
var
  //������ �� ��������� �������� ����� � ����� MS Excel.
  gExSh : Variant;

procedure TForm7.Button1Click(Sender: TObject);
begin
form7.ADOQuery1.Close;
form7.ADOQuery1.SQL.Text:='SELECT     ������, �����, ����������, ����� '+
'FROM         dbo.�������   WHERE  �����= '''+edit1.Text+'''';
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
WordApplication1.Selection.TypeText('������� <�������>');
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
WordApplication1.Selection.EndKey(Unit_, Extend_); // ������� � ����� ������ ������
    WordApplication1.Selection.ParagraphFormat.Alignment:=$00000000;
    WordApplication1.Selection.ParagraphFormat.FirstLineIndent:=10;
     WordApplication1.Selection.TypeText(#13#10+ '������� _________________');

end;




procedure TForm7.Button3Click(Sender: TObject);
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


procedure TForm7.Button4Click(Sender: TObject);
const
  //������������� ���� ������ � ��������� - ��������� (������ �����) ������ ���������.
  xlCellTypeLastCell = 11;
  //��� �����.
  xlContinuous = 1;
  //������� �����.
  xlMedium = -4138;
  xlThick = 4;
  xlThin = 2;
var
  exCell1, exCell2, exRng : Variant;
  i, Row : Integer;
begin
  //�������� ����������� � MS Excel.
  if VarIsClear(gExSh) then begin
    MessageBox(0, '��� ����������� � MS Excel. �������� ��������.',
      '��������!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;
  //�������� ����������� � ������� ��.
  if not ADOQuery1.Active then begin
    MessageBox(0, '������� �� �������. �������� ��������.',
      '��������!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;
  //�������� ������� �� �� �������.
  if ADOQuery1.Eof then begin
    MessageBox(0, '������� �� �����. �������� ��������.',
      '��������!', MB_OK + MB_ICONWARNING + MB_APPLMODAL);
    Exit;
  end;

  //������� ����� ������ ������� Excel.
  exCell1 := gExSh.Cells[gRow, gCol];
  //����� ������ ������.
  Row := gExSh.UsedRange.SpecialCells(xlCellTypeLastCell).Row;
  //������ ����� ������ ������� Excel.
  exCell2 := gExSh.Cells[Row, exCell1.Column];
  //��������� ������ ����� ������.
  exCell2 := exCell2.Offset[1, 0];
  //���� exCell2 ��������� ����, ��� exCell1, �� �� ������ ������ ��������� exCell1.
  if exCell2.Row < exCell1.Row then
    exCell2 := exCell1;
  //���������� ������ ������ �� ������� �� �� ���� MS Excel.
  for i := 0 to ADOQuery1.FieldCount - 1 do
    exCell2.Offset[0, i].Value := ADOQuery1.Fields[i].AsString;

  //�������� � ������� �������� ������.
  exRng := gExSh.Range[exCell2, exCell2.Offset[0, ADOQuery1.FieldCount - 1]];
  //���������� �������� ���������.
  exRng.Borders.LineStyle := xlContinuous;
  exRng.Borders.Weight := xlThin;
  //�������������� ������ ������ �������� ��� ���� �������.
  exRng := gExSh.Range[exCell1, exCell2.Offset[0, ADOQuery1.FieldCount - 1]];
  exRng.Columns.AutoFit;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
 VarClear(gExSh);
end;

end.

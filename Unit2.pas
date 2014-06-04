unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls, StdCtrls,
  Mask, OleServer, Word2000;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    TabSheet2: TTabSheet;
    DBNavigator1: TDBNavigator;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Button2: TButton;
    WordApplication1: TWordApplication;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form2.ADOQuery1.Close;
form2.ADOQuery1.SQL.Text:='SELECT     Компания, ФИО_поставщика, Телефон, Адрес '+
'FROM         dbo.Поставщики   WHERE  Компания= '''+edit1.Text+'''';
//showmessage(form2.ADOQuery1.SQL.Text) ;
form2.ADOQuery1.Open;
end;

procedure TForm2.Button2Click(Sender: TObject);

var r: Range;
    T : Table;
    numRec,numField,i,j : integer;
    C : Cell;
begin
numRec:=ADOQuery1.RecordCount;
numField :=ADOQuery1.FieldCount;
WordApplication1.Connect;
WordApplication1.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
WordApplication1.Visible:=true;
WordApplication1.Selection.TypeText('Таблица <Постащики>');
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
     WordApplication1.Selection.TypeParagraph;
     WordApplication1.Selection.TypeText('Подпись _________________');
     WordApplication1.Selection.TypeParagraph;
     WordApplication1.Selection.TypeText(datetostr(date));
end;


end.

unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  ComCtrls, OleServer, Word2000;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator3: TDBNavigator;
    Button2: TButton;
    WordApplication1: TWordApplication;
    Edit2: TEdit;
    Button3: TButton;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
          form3.ADOQuery1.Close;
form3.ADOQuery1.SQL.Text:='SELECT     Дата_поставки, Товар '+
'FROM         dbo.Поставки   WHERE  Дата_поставки= '''+edit1.Text+'''';
//showmessage(form3.ADOQuery1.SQL.Text) ;
form3.ADOQuery1.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
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
WordApplication1.Selection.TypeText('Таблица <Поставки>');
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
procedure TForm3.Button3Click(Sender: TObject);
begin
            form3.ADOQuery1.Close;
form3.ADOQuery1.SQL.Text:='SELECT     Дата_поставки, Товар '+
'FROM         dbo.Поставки   WHERE  Товар= '''+edit2.Text+'''';
//showmessage(form3.ADOQuery1.SQL.Text) ;
form3.ADOQuery1.Open;
end;

end.

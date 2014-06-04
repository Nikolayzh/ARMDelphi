unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls,
  Mask, OleServer, Word2000;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    WordApplication1: TWordApplication;
    Button3: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
form6.ADOQuery1.Close;
form6.ADOQuery1.SQL.Text:='SELECT     ФИО, Адрес, Телефон '+
'FROM         dbo.Клиенты   WHERE  ФИО= '''+edit1.Text+'''';
//showmessage(form6.ADOQuery1.SQL.Text) ;
form6.ADOQuery1.Open;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
          form6.ADOQuery1.Close;
form6.ADOQuery1.SQL.Text:='SELECT     ФИО, Адрес, Телефон '+
'FROM         dbo.Клиенты   WHERE  Адрес= '''+edit2.Text+'''';
//showmessage(form6.ADOQuery1.SQL.Text) ;
form6.ADOQuery1.Open;
end;

procedure TForm6.Button3Click(Sender: TObject);
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
WordApplication1.Selection.TypeText('Таблица <Клиенты>');
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

end.

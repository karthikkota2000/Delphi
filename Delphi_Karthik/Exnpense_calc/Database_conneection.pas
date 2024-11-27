unit Database_conneection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TbtnFetchData = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  btnFetchData: TbtnFetchData;

implementation

{$R *.dfm}

procedure TbtnFetchData.Button1Click(Sender: TObject);
var
  I, J: Integer;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM Expenses';
  ADOQuery1.Open;

  // Set StringGrid columns count based on the number of fields
  StringGrid1.ColCount := ADOQuery1.FieldCount;

  // Set the column headers
  for I := 0 to ADOQuery1.FieldCount - 1 do
    StringGrid1.Cells[I, 0] := ADOQuery1.Fields[I].FieldName;

  // Populate the grid with data
  StringGrid1.RowCount := ADOQuery1.RecordCount + 1;
  I := 1;  // Start from the second row (first row is for headers)
  while not ADOQuery1.Eof do
  begin
    for J := 0 to ADOQuery1.FieldCount - 1 do
      StringGrid1.Cells[J, I] := ADOQuery1.Fields[J].AsString;
    ADOQuery1.Next;
    Inc(I);
  end;
end;

end.

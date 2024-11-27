unit ComboBox_display;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
    ADOQuery1.Connection := ADOConnection1;
  ADOQuery1.SQL.Text := 'SELECT Expense_description FROM Expenses';
  ADOQuery1.Open;

  ComboBox1.Items.Clear;
  while not ADOQuery1.EOF do
  begin
    ComboBox1.Items.Add(ADOQuery1.FieldByName('Expense_description').AsString);
    ADOQuery1.Next;
  end;

  ADOQuery1.Close;
end;

end.


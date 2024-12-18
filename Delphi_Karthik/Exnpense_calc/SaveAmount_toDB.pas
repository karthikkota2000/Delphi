unit SaveAmount_toDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Save: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.SaveClick(Sender: TObject);
var
  ExpenseID: Integer;
  EnterAmount: Double;
begin
  //if (ComboBox1.ItemIndex <= -1) or (Edit1.Text = '') then
  //begin
   // ShowMessage('Please select an expense type and enter an amount.');
   // Exit;
  //end;
  ExpenseID := ComboBox1.ItemIndex;
  // Ensure a valid expense type is selected
  if ExpenseID = -1 then
  begin
    ShowMessage('Please select a valid expense type.');
    Exit;
  end;

  // Validate and convert the amount
  if not TryStrToFloat(Edit1.Text, EnterAmount) then
  begin
    ShowMessage('Please enter a valid amount.');
    Exit;
  end;

  ShowMessage('Inserting ExpenseID: ' + IntToStr(ExpenseID) + ', Amount: '+ FloatToStr(EnterAmount));
  // Insert the selected expense_id and amount into the amounts table
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('INSERT INTO Amount (expense_id, amount) VALUES (:expense_id, :amount)');
  ADOQuery1.Parameters.ParamByName('amount').Value := StrToFloat(Edit1.Text);
  ADOQuery1.Parameters.ParamByName('expense_id').Value := ExpenseID;

  ADOQuery1.ExecSQL;

  ShowMessage('Record saved successfully!');

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ADOQuery1.Connection := ADOConnection1;
  ADOQuery1.SQL.Text := 'SELECT DISTINCT Expense_description FROM Expenses';
  ADOQuery1.Open;

  ComboBox1.Items.Clear;
  ComboBox1.Items.AddObject('Select an expense type',TObject(-1));  // Add default hint
  while not ADOQuery1.EOF do
  begin
    ComboBox1.Items.Add(ADOQuery1.FieldByName('Expense_description').AsString);
    ADOQuery1.Next;
  end;

  ADOQuery1.Close;
  ComboBox1.ItemIndex := 0;  // Set default hint as the initial item
end;

end.


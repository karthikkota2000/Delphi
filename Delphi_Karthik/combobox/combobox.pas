unit combobox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
// Update the label with the selected item text
  Label1.Caption := ComboBox1.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('Apple');
  ComboBox1.Items.Add('Banana');
  ComboBox1.Items.Add('Cherry');
  ComboBox1.Items.Add('Date');
  ComboBox1.Items.Add('Elderberry');
  // Set the default item
  ComboBox1.ItemIndex := 2;  // Selects the first item
end;

end.

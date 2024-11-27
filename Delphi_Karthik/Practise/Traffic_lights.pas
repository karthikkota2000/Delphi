unit Traffic_lights;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Label1.Enabled := true;
Label2.Enabled := false;
Label3.Enabled := false;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Label1.Enabled := false;
Label2.Enabled := true;
Label3.Enabled := false;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Label1.Enabled := false;
Label2.Enabled := false;
Label3.Enabled := true;
end;

end.

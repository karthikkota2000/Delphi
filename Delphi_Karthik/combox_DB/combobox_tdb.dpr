program combobox_tdb;

uses
  Vcl.Forms,
  Combox_DB in 'Combox_DB.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

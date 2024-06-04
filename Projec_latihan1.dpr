program Projec_latihan1;

uses
  Forms,
  latihan1 in 'latihan1.pas' {Form1},
  login in 'login.pas' {Form2},
  Pemilik in 'Pemilik.pas' {Form3},
  Admin in 'Admin.pas' {Form4},
  Kasir in 'Kasir.pas' {Form5},
  Dsource in 'Dsource.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

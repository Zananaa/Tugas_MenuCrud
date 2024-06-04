unit Pemilik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, DB, ADODB, DBGrids;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Dsource;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
     DataModule1.Zkategori.SQL.Clear;
     DataModule1.Zkategori.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
     DataModule1.Zkategori.ExecSQL;

     DataModule1.Zkategori.SQL.Clear;
     DataModule1.Zkategori.SQL.Add('select * from kategori');
     DataModule1.Zkategori.Open;
     ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('select * from kategori');
  DataModule1.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('select * from kategori');
  DataModule1.Zkategori.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:= DataModule1.Zkategori.Fields[1].AsString;
 a:= DataModule1.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add ('SELECT * FROM kategori WHERE name LIKE "'+edt2.Text+'"');
  DataModule1.Zkategori.ExecSQL;
  DataModule1.Zkategori.Open;
end;

end.

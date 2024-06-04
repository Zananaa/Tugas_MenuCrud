unit latihan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    F1: TMenuItem;
    DataMaster1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    Kategori1: TMenuItem;
    Satuan1: TMenuItem;
    Supplier1: TMenuItem;
    Kustomer1: TMenuItem;
    ransaksi1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembelian1: TMenuItem;
    LaporanPenjualan1: TMenuItem;
    LaporanPenjualan2: TMenuItem;
    LaporanStokBarang1: TMenuItem;
    LaporanBarang1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure PemilikClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses login, Pemilik;

{$R *.dfm}
procedure TForm1.FormShow(Sender: TObject);
begin
mm1.Items[1].Visible:= True;
mm1.Items[2].Visible:= True;
mm1.Items[3].Visible:= True;
end;

procedure TForm1.Login1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.PemilikClick(Sender: TObject);
begin
  Form3.Show;
end;


end.

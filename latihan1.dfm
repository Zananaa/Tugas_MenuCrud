object Form1: TForm1
  Left = 221
  Top = 156
  Width = 404
  Height = 450
  Caption = 'Home'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 320
    Top = 344
    object F1: TMenuItem
      Caption = 'File'
      object Login1: TMenuItem
        Caption = 'Login'
        OnClick = Login1Click
      end
      object Logout1: TMenuItem
        Caption = 'Logout'
      end
    end
    object DataMaster1: TMenuItem
      Caption = 'Data Master'
      object Kategori1: TMenuItem
        Caption = 'Kategori'
        OnClick = PemilikClick
      end
      object Satuan1: TMenuItem
        Caption = 'Satuan'
      end
      object Supplier1: TMenuItem
        Caption = 'Supplier'
      end
      object Kustomer1: TMenuItem
        Caption = 'Kustomer'
      end
    end
    object ransaksi1: TMenuItem
      Caption = 'Transaksi'
      object Penjualan1: TMenuItem
        Caption = 'Penjualan'
      end
      object Pembelian1: TMenuItem
        Caption = 'Pembelian'
      end
    end
    object LaporanPenjualan1: TMenuItem
      Caption = 'Laporan'
      object LaporanPenjualan2: TMenuItem
        Caption = 'Laporan Penjualan'
      end
      object LaporanStokBarang1: TMenuItem
        Caption = 'Laporan Stok Barang'
      end
      object LaporanBarang1: TMenuItem
        Caption = 'Laporan Barang'
      end
    end
  end
end

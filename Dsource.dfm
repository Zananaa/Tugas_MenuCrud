object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 237
  Top = 206
  Height = 221
  Width = 229
  object Zconnection: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\bahan_visual\libmysql.dll'
    Left = 32
    Top = 16
  end
  object Zkategori: TZQuery
    Connection = Zconnection
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 128
    Top = 16
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 80
    Top = 88
  end
end

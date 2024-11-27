object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 352
    Top = 240
    Width = 193
    Height = 23
    DataSource = DataSource1
    KeyField = 'LastName'
    ListField = 'LastName'
    ListSource = DataSource2
    TabOrder = 0
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo_Pooled')
    Connected = True
    Left = 128
    Top = 80
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Employees')
    Left = 336
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 144
    Top = 224
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select LastName from employees'
      'order by LastName')
    Left = 480
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 288
    Top = 200
  end
end

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
  object DBComboBox1: TDBComboBox
    Left = 376
    Top = 264
    Width = 145
    Height = 23
    DataField = 'Title'
    DataSource = DataSource1
    TabOrder = 0
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo_Pooled')
    Connected = True
    Left = 160
    Top = 136
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select LastName from Employees')
    Left = 368
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 160
    Top = 264
  end
end
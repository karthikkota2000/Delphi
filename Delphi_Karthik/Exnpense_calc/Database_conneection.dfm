object btnFetchData: TbtnFetchData
  Left = 0
  Top = 0
  Caption = 'Fetch Data'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 272
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Enter'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 128
    Top = 48
    Width = 393
    Height = 137
    TabOrder = 1
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=master;Data Source=DESKTOP-SLL27Q4\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 400
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from expenses;')
    Left = 488
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 560
    Top = 208
  end
end

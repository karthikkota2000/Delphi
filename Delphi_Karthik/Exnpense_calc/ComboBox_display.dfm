object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ComboBox1: TComboBox
    Left = 208
    Top = 80
    Width = 145
    Height = 23
    TabOrder = 0
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Data Source=DESKTOP-SLL27Q4\SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 240
  end
end

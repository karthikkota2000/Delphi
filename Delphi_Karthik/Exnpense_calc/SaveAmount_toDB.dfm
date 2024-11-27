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
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 171
    Width = 80
    Height = 23
    Caption = 'Enter amount'
  end
  object Label2: TLabel
    Left = 176
    Top = 147
    Width = 80
    Height = 18
    Caption = 'Expense Type'
  end
  object ComboBox1: TComboBox
    Left = 254
    Top = 142
    Width = 257
    Height = 23
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Movies'
      'Groceries'
      'Petrol')
  end
  object Edit1: TEdit
    Left = 254
    Top = 171
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Save: TButton
    Left = 232
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = SaveClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Data Source=DESKTOP-SLL27Q4\SQLEXPRESS'
    Provider = 'SQLOLEDB'
    Left = 80
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'expense_id'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'amount'
        DataType = ftFloat
        Value = Null
      end>
    SQL.Strings = (
      'select * from expenses;')
    Left = 168
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 296
  end
end

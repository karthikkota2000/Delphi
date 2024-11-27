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
  object Label1: TLabel
    Left = 104
    Top = 72
    Width = 81
    Height = 15
    Caption = 'Enter first value'
  end
  object Label2: TLabel
    Left = 304
    Top = 72
    Width = 99
    Height = 15
    Caption = 'Enter second value'
  end
  object Label3: TLabel
    Left = 168
    Top = 152
    Width = 42
    Height = 23
    Caption = 'Result'
  end
  object Edit1: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 304
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 216
    Top = 152
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '0'
  end
  object Button1: TButton
    Left = 192
    Top = 240
    Width = 75
    Height = 25
    Caption = 'ADD'
    TabOrder = 3
    OnClick = Button1Click
  end
end

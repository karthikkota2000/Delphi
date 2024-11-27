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
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 200
    Top = 200
    Width = 129
    Height = 15
    Caption = 'Label1'
  end
  object ComboBox1: TComboBox
    Left = 184
    Top = 144
    Width = 145
    Height = 23
    TabOrder = 0
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 549
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 185
    Top = 88
    Width = 418
    Height = 98
    Caption = 'Welcome!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -80
    Font.Name = 'Showcard Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 263
    Top = 290
    Width = 130
    Height = 31
    Caption = 'Enter your id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 185
    Top = 317
    Width = 208
    Height = 31
    Caption = 'Enter your password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 399
    Top = 298
    Width = 155
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 399
    Top = 327
    Width = 155
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 399
    Top = 384
    Width = 106
    Height = 41
    Caption = 'Log in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end

object CadastroPai: TCadastroPai
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 509
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Codigo: TLabel
    Left = 32
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object lbl_DataCad: TLabel
    Left = 24
    Top = 440
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object lbl_DataUltAtl: TLabel
    Left = 182
    Top = 440
    Width = 104
    Height = 13
    Caption = 'Data Ultima Alteracao'
  end
  object lbl_CodUsuario: TLabel
    Left = 337
    Top = 440
    Width = 72
    Height = 13
    Caption = 'Codigo Usuario'
  end
  object edt_Codigo: TEdit
    Left = 32
    Top = 43
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object edt_DataCad: TEdit
    Left = 24
    Top = 472
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edt_DataUltAlt: TEdit
    Left = 182
    Top = 472
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edt_CodUsuario: TEdit
    Left = 337
    Top = 459
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btn_Salvar: TButton
    Left = 488
    Top = 476
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 4
    OnClick = btn_SalvarClick
  end
  object btn_Sair: TButton
    Left = 589
    Top = 476
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 5
    OnClick = btn_SairClick
  end
end
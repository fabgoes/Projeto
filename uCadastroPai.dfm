object CadastroPai: TCadastroPai
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 548
  ClientWidth = 772
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
    Left = 8
    Top = 392
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object lbl_DataUltAtl: TLabel
    Left = 150
    Top = 392
    Width = 104
    Height = 13
    Caption = 'Data Ultima Alteracao'
  end
  object lbl_codUsuario: TLabel
    Left = 313
    Top = 392
    Width = 53
    Height = 13
    Caption = 'codUsuario'
  end
  object edt_Codigo: TEdit
    Left = 32
    Top = 43
    Width = 89
    Height = 21
    MaxLength = 10
    TabOrder = 0
  end
  object edt_DataCad: TEdit
    Left = 8
    Top = 411
    Width = 121
    Height = 21
    Enabled = False
    MaxLength = 10
    TabOrder = 1
  end
  object edt_DataUltAlt: TEdit
    Left = 150
    Top = 411
    Width = 121
    Height = 21
    Enabled = False
    MaxLength = 10
    TabOrder = 2
  end
  object btn_Salvar: TButton
    Left = 480
    Top = 409
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 3
    OnClick = btn_SalvarClick
  end
  object btn_Sair: TButton
    Left = 581
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 4
    OnClick = btn_SairClick
  end
  object edt_CodUsuario: TEdit
    Left = 313
    Top = 411
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 5
  end
end

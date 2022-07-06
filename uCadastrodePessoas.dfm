inherited CadastrodePessoas: TCadastrodePessoas
  Caption = 'Cadastro de Pessoas'
  ClientWidth = 841
  ExplicitWidth = 857
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_DataCad: TLabel
    Top = 416
    ExplicitTop = 416
  end
  inherited lbl_DataUltAtl: TLabel
    Top = 416
    ExplicitTop = 416
  end
  object lbl_Nome: TLabel [3]
    Left = 144
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Nome*'
  end
  object lbl_Telefone: TLabel [4]
    Left = 32
    Top = 206
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbl_Email: TLabel [5]
    Left = 368
    Top = 206
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbl_CEP: TLabel [6]
    Left = 368
    Top = 146
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lbl_Bairro: TLabel [7]
    Left = 37
    Top = 146
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object lbl_Logradouro: TLabel [8]
    Left = 34
    Top = 82
    Width = 45
    Height = 13
    Caption = 'Endereco'
  end
  object lbl_Numero: TLabel [9]
    Left = 349
    Top = 82
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object lbl_Complemento: TLabel [10]
    Left = 532
    Top = 82
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object lbl_codCidade: TLabel [11]
    Left = 516
    Top = 146
    Width = 50
    Height = 13
    Caption = 'codCidade'
  end
  object lbl_Cidade: TLabel [12]
    Left = 589
    Top = 146
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  inherited lbl_codUsuario: TLabel
    Top = 416
    ExplicitTop = 416
  end
  inherited edt_DataCad: TEdit
    Top = 435
    ExplicitTop = 435
  end
  inherited edt_DataUltAlt: TEdit
    Top = 435
    ExplicitTop = 435
  end
  inherited btn_Salvar: TButton
    Left = 589
    Top = 433
    ExplicitLeft = 589
    ExplicitTop = 433
  end
  inherited btn_Sair: TButton
    Left = 701
    Top = 433
    ExplicitLeft = 701
    ExplicitTop = 433
  end
  inherited edt_CodUsuario: TEdit
    Top = 435
    TabOrder = 16
    ExplicitTop = 435
  end
  object edt_Nome: TEdit
    Left = 144
    Top = 43
    Width = 433
    Height = 21
    MaxLength = 50
    TabOrder = 5
  end
  object edt_Telefone: TEdit
    Left = 34
    Top = 225
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 6
  end
  object edt_Email: TEdit
    Left = 367
    Top = 225
    Width = 210
    Height = 21
    MaxLength = 50
    TabOrder = 7
  end
  object edt_CEP: TEdit
    Left = 368
    Top = 165
    Width = 121
    Height = 21
    MaxLength = 5
    TabOrder = 8
  end
  object edt_Bairro: TEdit
    Left = 34
    Top = 165
    Width = 311
    Height = 21
    MaxLength = 50
    TabOrder = 9
  end
  object edt_Logradouro: TEdit
    Left = 32
    Top = 101
    Width = 278
    Height = 21
    MaxLength = 50
    TabOrder = 10
  end
  object edt_Numero: TEdit
    Left = 349
    Top = 101
    Width = 121
    Height = 21
    MaxLength = 5
    TabOrder = 11
  end
  object edt_Complemento: TEdit
    Left = 532
    Top = 101
    Width = 231
    Height = 21
    MaxLength = 50
    TabOrder = 12
  end
  object edt_codCidade: TEdit
    Left = 516
    Top = 165
    Width = 45
    Height = 21
    TabOrder = 13
  end
  object edt_Cidade: TEdit
    Left = 589
    Top = 165
    Width = 165
    Height = 21
    MaxLength = 50
    TabOrder = 14
  end
  object btn_Pesquisar: TButton
    Left = 766
    Top = 164
    Width = 67
    Height = 23
    Caption = 'Pesquisar'
    TabOrder = 15
  end
end

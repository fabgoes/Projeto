inherited CadastroClientes: TCadastroClientes
  Caption = 'Cadastro Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited lbl_DataCad: TLabel
    Top = 400
    ExplicitTop = 400
  end
  inherited lbl_DataUltAtl: TLabel
    Left = 174
    Top = 400
    ExplicitLeft = 174
    ExplicitTop = 400
  end
  inherited lbl_CodUsuario: TLabel
    Left = 328
    Top = 400
    ExplicitLeft = 328
    ExplicitTop = 400
  end
  object lbl_Cliente: TLabel [4]
    Left = 69
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object lbl_RG: TLabel [5]
    Left = 377
    Top = 24
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object lbl_CPF: TLabel [6]
    Left = 527
    Top = 24
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lbl_sexo: TLabel [7]
    Left = 8
    Top = 101
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object lbl_telefone: TLabel [8]
    Left = 157
    Top = 101
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbl_email: TLabel [9]
    Left = 306
    Top = 101
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbl_CEP: TLabel [10]
    Left = 527
    Top = 101
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lbl_bairro: TLabel [11]
    Left = 8
    Top = 176
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object lbl_logradouro: TLabel [12]
    Left = 256
    Top = 176
    Width = 55
    Height = 13
    Caption = 'Logradouro'
  end
  object lbl_numero: TLabel [13]
    Left = 489
    Top = 176
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object lbl_complemento: TLabel [14]
    Left = 8
    Top = 277
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object lbl_dataNasc: TLabel [15]
    Left = 299
    Top = 277
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  inherited edt_Codigo: TEdit
    Left = 8
    Width = 55
    ExplicitLeft = 8
    ExplicitWidth = 55
  end
  inherited edt_DataCad: TEdit
    Top = 437
    ExplicitTop = 437
  end
  inherited edt_DataUltAlt: TEdit
    Left = 174
    Top = 437
    ExplicitLeft = 174
    ExplicitTop = 437
  end
  inherited edt_CodUsuario: TEdit
    Left = 328
    Top = 437
    ExplicitLeft = 328
    ExplicitTop = 437
  end
  inherited btn_Salvar: TButton
    Left = 464
    Top = 435
    ExplicitLeft = 464
    ExplicitTop = 435
  end
  inherited btn_Sair: TButton
    Left = 573
    Top = 435
    ExplicitLeft = 573
    ExplicitTop = 435
  end
  object edt_Cliente: TEdit
    Left = 69
    Top = 43
    Width = 292
    Height = 21
    MaxLength = 50
    TabOrder = 6
  end
  object edt_RG: TEdit
    Left = 377
    Top = 43
    Width = 113
    Height = 21
    MaxLength = 20
    TabOrder = 7
  end
  object edt_CPF: TEdit
    Left = 527
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 8
  end
  object edt_sexo: TEdit
    Left = 8
    Top = 120
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 9
  end
  object edt_telefone: TEdit
    Left = 157
    Top = 120
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 10
  end
  object edt_email: TEdit
    Left = 306
    Top = 120
    Width = 197
    Height = 21
    MaxLength = 50
    TabOrder = 11
  end
  object edt_CEP: TEdit
    Left = 527
    Top = 120
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 12
  end
  object edt_complemento: TEdit
    Left = 8
    Top = 296
    Width = 270
    Height = 21
    MaxLength = 50
    TabOrder = 13
  end
  object edt_DataNasc: TEdit
    Left = 299
    Top = 296
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 14
  end
  object edt_bairro: TEdit
    Left = 8
    Top = 195
    Width = 217
    Height = 21
    MaxLength = 50
    TabOrder = 15
  end
  object edt_logradouro: TEdit
    Left = 256
    Top = 195
    Width = 193
    Height = 21
    MaxLength = 50
    TabOrder = 16
  end
  object edt_numero: TEdit
    Left = 489
    Top = 195
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 17
  end
end
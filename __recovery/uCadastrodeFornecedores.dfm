inherited CadastrodeFornecedores: TCadastrodeFornecedores
  Caption = 'Cadastro de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_DataCad: TLabel
    Left = 44
    Top = 432
    ExplicitLeft = 44
    ExplicitTop = 432
  end
  inherited lbl_DataUltAtl: TLabel
    Left = 166
    Top = 432
    ExplicitLeft = 166
    ExplicitTop = 432
  end
  inherited lbl_RG: TLabel
    Left = 200
    Top = 265
    ExplicitLeft = 200
    ExplicitTop = 265
  end
  inherited lbl_CPF: TLabel
    Left = 32
    ExplicitLeft = 32
  end
  inherited lbl_Sexo: TLabel
    Left = 694
    Top = 265
    ExplicitLeft = 694
    ExplicitTop = 265
  end
  inherited lbl_Email: TLabel
    Left = 291
    ExplicitLeft = 291
  end
  inherited lbl_CEP: TLabel
    Left = 374
    ExplicitLeft = 374
  end
  inherited lbl_Bairro: TLabel
    Left = 32
    ExplicitLeft = 32
  end
  inherited lbl_Numero: TLabel
    Left = 351
    ExplicitLeft = 351
  end
  inherited lbl_Complemento: TLabel
    Left = 525
    ExplicitLeft = 525
  end
  inherited lbl_codCidade: TLabel
    Left = 483
    ExplicitLeft = 483
  end
  inherited lbl_Cidade: TLabel
    Left = 557
    ExplicitLeft = 557
  end
  inherited lbl_codUsuario: TLabel
    Left = 323
    Top = 432
    ExplicitLeft = 323
    ExplicitTop = 432
  end
  inherited lbl_DataNasc: TLabel
    Left = 518
    Top = 265
    ExplicitLeft = 518
    ExplicitTop = 265
  end
  object lbl_Celular: TLabel [18]
    Left = 166
    Top = 206
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lbl_Site: TLabel [19]
    Left = 558
    Top = 206
    Width = 18
    Height = 13
    Caption = 'Site'
  end
  object lbl_Observacao: TLabel [20]
    Left = 205
    Top = 333
    Width = 58
    Height = 13
    Caption = 'Observacao'
  end
  object lbl_RazaoSocial: TLabel [21]
    Left = 525
    Top = 24
    Width = 60
    Height = 13
    Caption = 'Razao Social'
  end
  object lbl_CNPJ: TLabel [22]
    Left = 362
    Top = 265
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object lbl_FormaPag: TLabel [23]
    Left = 34
    Top = 333
    Width = 48
    Height = 13
    Caption = 'FormaPag'
  end
  inherited edt_DataCad: TEdit
    Left = 39
    Top = 451
    Width = 90
    ExplicitLeft = 39
    ExplicitTop = 451
    ExplicitWidth = 90
  end
  inherited edt_DataUltAlt: TEdit
    Left = 166
    Top = 451
    ExplicitLeft = 166
    ExplicitTop = 451
  end
  inherited btn_Salvar: TButton
    Left = 558
    Top = 449
    Width = 102
    ExplicitLeft = 558
    ExplicitTop = 449
    ExplicitWidth = 102
  end
  inherited btn_Sair: TButton
    Left = 700
    Top = 449
    Width = 100
    ExplicitLeft = 700
    ExplicitTop = 449
    ExplicitWidth = 100
  end
  inherited edt_CodUsuario: TEdit
    Left = 315
    Top = 451
    ExplicitLeft = 315
    ExplicitTop = 451
  end
  inherited edt_Nome: TEdit
    Width = 349
    ExplicitWidth = 349
  end
  inherited edt_RG: TEdit
    Left = 200
    Top = 284
    ExplicitLeft = 200
    ExplicitTop = 284
  end
  inherited edt_CPF: TEdit
    Left = 35
    Width = 130
    ExplicitLeft = 35
    ExplicitWidth = 130
  end
  inherited edt_Sexo: TEdit
    Left = 694
    Top = 284
    ExplicitLeft = 694
    ExplicitTop = 284
  end
  inherited edt_Telefone: TEdit
    Left = 32
    Width = 97
    ExplicitLeft = 32
    ExplicitWidth = 97
  end
  inherited edt_Email: TEdit
    Left = 293
    Width = 244
    ExplicitLeft = 293
    ExplicitWidth = 244
  end
  inherited edt_CEP: TEdit
    Left = 372
    Width = 77
    ExplicitLeft = 372
    ExplicitWidth = 77
  end
  inherited edt_Bairro: TEdit
    Left = 31
    ExplicitLeft = 31
  end
  inherited edt_Logradouro: TEdit
    Left = 31
    ExplicitLeft = 31
  end
  inherited edt_Numero: TEdit
    Left = 351
    ExplicitLeft = 351
  end
  inherited edt_Complemento: TEdit
    Left = 525
    Width = 290
    ExplicitLeft = 525
    ExplicitWidth = 290
  end
  inherited edt_codCidade: TEdit
    Left = 483
    Width = 54
    ExplicitLeft = 483
    ExplicitWidth = 54
  end
  inherited edt_Cidade: TEdit
    Left = 561
    ExplicitLeft = 561
  end
  inherited btn_Pesquisar: TButton
    Left = 748
    OnClick = btn_PesquisarClick
    ExplicitLeft = 748
  end
  inherited edt_DataNasc: TEdit
    Left = 518
    Top = 284
    Width = 130
    ExplicitLeft = 518
    ExplicitTop = 284
    ExplicitWidth = 130
  end
  object edt_Celular: TEdit
    Left = 166
    Top = 225
    Width = 97
    Height = 21
    MaxLength = 14
    TabOrder = 21
  end
  object edt_Site: TEdit
    Left = 558
    Top = 225
    Width = 257
    Height = 21
    MaxLength = 100
    TabOrder = 22
  end
  object edt_Observacao: TEdit
    Left = 205
    Top = 352
    Width = 289
    Height = 21
    MaxLength = 200
    TabOrder = 23
  end
  object edt_RazaoSocial: TEdit
    Left = 525
    Top = 43
    Width = 290
    Height = 21
    MaxLength = 50
    TabOrder = 24
  end
  object edt_CNPJ: TEdit
    Left = 362
    Top = 284
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 25
  end
  object edt_FormaPag: TEdit
    Left = 34
    Top = 352
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 26
  end
end

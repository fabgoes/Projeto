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
  inherited lbl_Email: TLabel
    Left = 291
    ExplicitLeft = 291
  end
  inherited lbl_CEP: TLabel
    Left = 351
    ExplicitLeft = 351
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
    Left = 451
    Width = 69
    Caption = 'Codigo Cidade'
    ExplicitLeft = 451
    ExplicitWidth = 69
  end
  inherited lbl_Cidade: TLabel
    Left = 552
    ExplicitLeft = 552
  end
  inherited lbl_codUsuario: TLabel
    Left = 323
    Top = 432
    ExplicitLeft = 323
    ExplicitTop = 432
  end
  object lbl_Celular: TLabel [14]
    Left = 166
    Top = 206
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lbl_Site: TLabel [15]
    Left = 558
    Top = 206
    Width = 18
    Height = 13
    Caption = 'Site'
  end
  object lbl_Observacao: TLabel [16]
    Left = 205
    Top = 333
    Width = 58
    Height = 13
    Caption = 'Observacao'
  end
  object lbl_RazaoSocial: TLabel [17]
    Left = 525
    Top = 24
    Width = 60
    Height = 13
    Caption = 'Razao Social'
  end
  object lbl_CNPJ: TLabel [18]
    Left = 293
    Top = 277
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object lbl_FormaPag: TLabel [19]
    Left = 34
    Top = 333
    Width = 102
    Height = 13
    Caption = 'Forma de Pagamento'
  end
  object lbl_InsEstadual: TLabel [20]
    Left = 34
    Top = 277
    Width = 90
    Height = 13
    Caption = 'Inscri'#231#227'o  Estadual'
  end
  inherited edt_DataCad: TEdit
    Left = 39
    Top = 451
    Width = 90
    TabOrder = 19
    ExplicitLeft = 39
    ExplicitTop = 451
    ExplicitWidth = 90
  end
  inherited edt_DataUltAlt: TEdit
    Left = 166
    Top = 451
    TabOrder = 20
    ExplicitLeft = 166
    ExplicitTop = 451
  end
  inherited btn_Salvar: TButton
    Left = 558
    Top = 449
    Width = 102
    TabOrder = 22
    ExplicitLeft = 558
    ExplicitTop = 449
    ExplicitWidth = 102
  end
  inherited btn_Sair: TButton
    Left = 700
    Top = 449
    Width = 100
    TabOrder = 23
    ExplicitLeft = 700
    ExplicitTop = 449
    ExplicitWidth = 100
  end
  inherited edt_CodUsuario: TEdit
    Left = 315
    Top = 451
    TabOrder = 21
    ExplicitLeft = 315
    ExplicitTop = 451
  end
  inherited edt_Nome: TEdit
    Width = 349
    TabOrder = 1
    ExplicitWidth = 349
  end
  inherited edt_Telefone: TEdit
    Left = 32
    Width = 97
    TabOrder = 11
    ExplicitLeft = 32
    ExplicitWidth = 97
  end
  inherited edt_Email: TEdit
    Left = 293
    Width = 244
    TabOrder = 13
    ExplicitLeft = 293
    ExplicitWidth = 244
  end
  inherited edt_CEP: TEdit
    Left = 351
    Width = 77
    TabOrder = 7
    ExplicitLeft = 351
    ExplicitWidth = 77
  end
  inherited edt_Bairro: TEdit
    Left = 31
    Width = 278
    TabOrder = 6
    ExplicitLeft = 31
    ExplicitWidth = 278
  end
  inherited edt_Logradouro: TEdit
    Left = 31
    TabOrder = 3
    ExplicitLeft = 31
  end
  inherited edt_Numero: TEdit
    Left = 351
    TabOrder = 4
    ExplicitLeft = 351
  end
  inherited edt_Complemento: TEdit
    Left = 525
    Width = 290
    TabOrder = 5
    ExplicitLeft = 525
    ExplicitWidth = 290
  end
  inherited edt_codCidade: TEdit
    Left = 451
    Width = 69
    TabOrder = 8
    ExplicitLeft = 451
    ExplicitWidth = 69
  end
  inherited edt_Cidade: TEdit
    Left = 553
    TabOrder = 9
    ExplicitLeft = 553
  end
  inherited btn_Pesquisar: TButton
    Left = 748
    TabOrder = 10
    OnClick = btn_PesquisarClick
    ExplicitLeft = 748
  end
  object edt_Celular: TEdit
    Left = 166
    Top = 225
    Width = 97
    Height = 21
    MaxLength = 14
    TabOrder = 12
  end
  object edt_Site: TEdit
    Left = 558
    Top = 225
    Width = 257
    Height = 21
    MaxLength = 100
    TabOrder = 14
  end
  object edt_Observacao: TEdit
    Left = 205
    Top = 352
    Width = 289
    Height = 21
    MaxLength = 200
    TabOrder = 18
  end
  object edt_RazaoSocial: TEdit
    Left = 525
    Top = 43
    Width = 290
    Height = 21
    MaxLength = 50
    TabOrder = 2
  end
  object edt_CNPJ: TEdit
    Left = 293
    Top = 296
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 16
  end
  object edt_FormaPag: TEdit
    Left = 34
    Top = 352
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 17
  end
  object edt_InsEstadual: TEdit
    Left = 32
    Top = 296
    Width = 121
    Height = 21
    MaxLength = 9
    TabOrder = 15
  end
end

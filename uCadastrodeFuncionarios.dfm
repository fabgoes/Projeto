inherited CadastrodeFuncionarios: TCadastrodeFuncionarios
  Caption = 'Cadastro de Funcionarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 29
    ExplicitLeft = 29
  end
  inherited lbl_DataCad: TLabel
    Left = 31
    ExplicitLeft = 31
  end
  inherited lbl_DataUltAtl: TLabel
    Left = 177
    ExplicitLeft = 177
  end
  inherited lbl_Telefone: TLabel
    Left = 34
    Top = 180
    ExplicitLeft = 34
    ExplicitTop = 180
  end
  inherited lbl_Email: TLabel
    Left = 351
    Top = 180
    ExplicitLeft = 351
    ExplicitTop = 180
  end
  inherited lbl_CEP: TLabel
    Left = 333
    Top = 124
    ExplicitLeft = 333
    ExplicitTop = 124
  end
  inherited lbl_Bairro: TLabel
    Left = 31
    Top = 124
    ExplicitLeft = 31
    ExplicitTop = 124
  end
  inherited lbl_Logradouro: TLabel
    Top = 78
    ExplicitTop = 78
  end
  inherited lbl_Numero: TLabel
    Left = 333
    Top = 78
    ExplicitLeft = 333
    ExplicitTop = 78
  end
  inherited lbl_Complemento: TLabel
    Left = 526
    Top = 78
    ExplicitLeft = 526
    ExplicitTop = 78
  end
  inherited lbl_codCidade: TLabel
    Left = 483
    Top = 124
    ExplicitLeft = 483
    ExplicitTop = 124
  end
  inherited lbl_Cidade: TLabel
    Left = 576
    Top = 124
    ExplicitLeft = 576
    ExplicitTop = 124
  end
  inherited lbl_codUsuario: TLabel
    Left = 321
    ExplicitLeft = 321
  end
  object lbl_DataAdmissao: TLabel [14]
    Left = 526
    Top = 253
    Width = 86
    Height = 13
    Caption = 'Data de Admissao'
  end
  object lbl_DataDemissao: TLabel [15]
    Left = 677
    Top = 253
    Width = 86
    Height = 13
    Caption = 'Data de Demissao'
  end
  object lbl_VSalario: TLabel [16]
    Left = 397
    Top = 253
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  object lbl_Celular: TLabel [17]
    Left = 177
    Top = 180
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lbl_Cargo: TLabel [18]
    Left = 148
    Top = 253
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object lbl_RG: TLabel [19]
    Left = 34
    Top = 328
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object lbl_CPF: TLabel [20]
    Left = 179
    Top = 328
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lbl_DataNasc: TLabel [21]
    Left = 423
    Top = 328
    Width = 46
    Height = 13
    Caption = 'DataNasc'
  end
  object lbl_Sexo: TLabel [22]
    Left = 576
    Top = 328
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object lbl_CodCargo: TLabel [23]
    Left = 34
    Top = 253
    Width = 65
    Height = 13
    Caption = 'Codigo Cargo'
  end
  inherited edt_Codigo: TEdit
    Left = 27
    ExplicitLeft = 27
  end
  inherited edt_DataCad: TEdit
    Left = 31
    TabOrder = 23
    ExplicitLeft = 31
  end
  inherited edt_DataUltAlt: TEdit
    Left = 171
    TabOrder = 24
    ExplicitLeft = 171
  end
  inherited btn_Salvar: TButton
    TabOrder = 26
  end
  inherited btn_Sair: TButton
    TabOrder = 27
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 25
  end
  inherited edt_Nome: TEdit
    TabOrder = 1
  end
  inherited edt_Telefone: TEdit
    Left = 31
    Top = 199
    TabOrder = 10
    ExplicitLeft = 31
    ExplicitTop = 199
  end
  inherited edt_Email: TEdit
    Left = 351
    Top = 199
    Width = 282
    TabOrder = 12
    ExplicitLeft = 351
    ExplicitTop = 199
    ExplicitWidth = 282
  end
  inherited edt_CEP: TEdit
    Left = 333
    Top = 143
    Width = 115
    TabOrder = 6
    ExplicitLeft = 333
    ExplicitTop = 143
    ExplicitWidth = 115
  end
  inherited edt_Bairro: TEdit
    Left = 31
    Top = 143
    Width = 261
    TabOrder = 5
    ExplicitLeft = 31
    ExplicitTop = 143
    ExplicitWidth = 261
  end
  inherited edt_Logradouro: TEdit
    Left = 31
    Top = 97
    Width = 261
    TabOrder = 2
    ExplicitLeft = 31
    ExplicitTop = 97
    ExplicitWidth = 261
  end
  inherited edt_Numero: TEdit
    Left = 333
    Top = 97
    Width = 115
    TabOrder = 3
    ExplicitLeft = 333
    ExplicitTop = 97
    ExplicitWidth = 115
  end
  inherited edt_Complemento: TEdit
    Left = 526
    Top = 97
    Width = 307
    TabOrder = 4
    ExplicitLeft = 526
    ExplicitTop = 97
    ExplicitWidth = 307
  end
  inherited edt_codCidade: TEdit
    Left = 479
    Top = 143
    Width = 69
    TabOrder = 7
    ExplicitLeft = 479
    ExplicitTop = 143
    ExplicitWidth = 69
  end
  inherited edt_Cidade: TEdit
    Left = 576
    Top = 143
    TabOrder = 8
    ExplicitLeft = 576
    ExplicitTop = 143
  end
  inherited btn_Pesquisar: TButton
    Top = 141
    Height = 26
    TabOrder = 9
    OnClick = btn_PesquisarClick
    ExplicitTop = 141
    ExplicitHeight = 26
  end
  object edt_DataAdmissao: TEdit
    Left = 526
    Top = 272
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 17
  end
  object edt_DataDemissao: TEdit
    Left = 677
    Top = 272
    Width = 145
    Height = 21
    MaxLength = 10
    TabOrder = 18
  end
  object edt_VSalario: TEdit
    Left = 397
    Top = 272
    Width = 99
    Height = 21
    MaxLength = 10
    TabOrder = 16
  end
  object edt_Celular: TEdit
    Left = 177
    Top = 199
    Width = 115
    Height = 21
    MaxLength = 14
    TabOrder = 11
  end
  object edt_Cargo: TEdit
    Left = 144
    Top = 272
    Width = 145
    Height = 21
    MaxLength = 50
    TabOrder = 14
  end
  object edt_RG: TEdit
    Left = 31
    Top = 347
    Width = 121
    Height = 21
    MaxLength = 9
    TabOrder = 19
  end
  object edt_CPF: TEdit
    Left = 177
    Top = 347
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 20
  end
  object edt_DataNasc: TEdit
    Left = 423
    Top = 347
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 21
  end
  object edt_Sexo: TEdit
    Left = 576
    Top = 347
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 22
  end
  object edt_CodCargo: TEdit
    Left = 34
    Top = 272
    Width = 79
    Height = 21
    MaxLength = 4
    TabOrder = 13
  end
  object btn_Pesquisar2: TButton
    Left = 295
    Top = 270
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 15
    OnClick = btn_Pesquisar2Click
  end
end

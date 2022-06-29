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
  inherited lbl_RG: TLabel
    Left = 178
    Top = 311
    ExplicitLeft = 178
    ExplicitTop = 311
  end
  inherited lbl_CPF: TLabel
    Left = 34
    Top = 311
    ExplicitLeft = 34
    ExplicitTop = 311
  end
  inherited lbl_Sexo: TLabel
    Left = 512
    Top = 311
    ExplicitLeft = 512
    ExplicitTop = 311
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
  object lbl_DataAdmissao: TLabel [17]
    Left = 351
    Top = 253
    Width = 86
    Height = 13
    Caption = 'Data de Admissao'
  end
  object lbl_DataDemissao: TLabel [18]
    Left = 512
    Top = 253
    Width = 86
    Height = 13
    Caption = 'Data de Demissao'
  end
  object lbl_VSalario: TLabel [19]
    Left = 178
    Top = 253
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  inherited lbl_DataNasc: TLabel
    Left = 351
    Top = 311
    ExplicitLeft = 351
    ExplicitTop = 311
  end
  object lbl_Celular: TLabel [21]
    Left = 177
    Top = 180
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object lbl_Cargo: TLabel [22]
    Left = 36
    Top = 253
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  inherited edt_Codigo: TEdit
    Left = 27
    ExplicitLeft = 27
  end
  inherited edt_DataCad: TEdit
    Left = 31
    ExplicitLeft = 31
  end
  inherited edt_DataUltAlt: TEdit
    Left = 171
    ExplicitLeft = 171
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 23
  end
  inherited edt_RG: TEdit
    Left = 178
    Top = 330
    Width = 116
    ExplicitLeft = 178
    ExplicitTop = 330
    ExplicitWidth = 116
  end
  inherited edt_CPF: TEdit
    Left = 29
    Top = 330
    Width = 126
    ExplicitLeft = 29
    ExplicitTop = 330
    ExplicitWidth = 126
  end
  inherited edt_Sexo: TEdit
    Left = 512
    Top = 330
    Width = 145
    ExplicitLeft = 512
    ExplicitTop = 330
    ExplicitWidth = 145
  end
  inherited edt_Telefone: TEdit
    Left = 31
    Top = 199
    ExplicitLeft = 31
    ExplicitTop = 199
  end
  inherited edt_Email: TEdit
    Left = 351
    Top = 199
    Width = 282
    ExplicitLeft = 351
    ExplicitTop = 199
    ExplicitWidth = 282
  end
  inherited edt_CEP: TEdit
    Left = 333
    Top = 143
    Width = 115
    ExplicitLeft = 333
    ExplicitTop = 143
    ExplicitWidth = 115
  end
  inherited edt_Bairro: TEdit
    Left = 31
    Top = 143
    Width = 261
    ExplicitLeft = 31
    ExplicitTop = 143
    ExplicitWidth = 261
  end
  inherited edt_Logradouro: TEdit
    Left = 31
    Top = 97
    Width = 261
    ExplicitLeft = 31
    ExplicitTop = 97
    ExplicitWidth = 261
  end
  inherited edt_Numero: TEdit
    Left = 333
    Top = 97
    Width = 115
    ExplicitLeft = 333
    ExplicitTop = 97
    ExplicitWidth = 115
  end
  inherited edt_Complemento: TEdit
    Left = 526
    Top = 97
    Width = 307
    ExplicitLeft = 526
    ExplicitTop = 97
    ExplicitWidth = 307
  end
  inherited edt_codCidade: TEdit
    Left = 479
    Top = 143
    Width = 69
    ExplicitLeft = 479
    ExplicitTop = 143
    ExplicitWidth = 69
  end
  inherited edt_Cidade: TEdit
    Left = 576
    Top = 143
    ExplicitLeft = 576
    ExplicitTop = 143
  end
  inherited btn_Pesquisar: TButton
    Top = 141
    Height = 26
    ExplicitTop = 141
    ExplicitHeight = 26
  end
  inherited edt_DataNasc: TEdit
    Left = 351
    Top = 330
    TabOrder = 22
    ExplicitLeft = 351
    ExplicitTop = 330
  end
  object edt_DataAdmissao: TEdit
    Left = 351
    Top = 272
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 19
  end
  object edt_DataDemissao: TEdit
    Left = 512
    Top = 272
    Width = 145
    Height = 21
    MaxLength = 10
    TabOrder = 20
  end
  object edt_VSalario: TEdit
    Left = 177
    Top = 272
    Width = 117
    Height = 21
    MaxLength = 10
    TabOrder = 21
  end
  object edt_Celular: TEdit
    Left = 177
    Top = 199
    Width = 115
    Height = 21
    MaxLength = 14
    TabOrder = 24
  end
  object edt_Cargo: TEdit
    Left = 34
    Top = 272
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 25
  end
end
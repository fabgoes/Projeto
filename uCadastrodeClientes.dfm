inherited CadastrodeClientes: TCadastrodeClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 594
  ClientWidth = 867
  ExplicitWidth = 883
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Telefone: TLabel
    Left = 34
    Top = 189
    ExplicitLeft = 34
    ExplicitTop = 189
  end
  inherited lbl_Email: TLabel
    Left = 280
    Top = 189
    ExplicitLeft = 280
    ExplicitTop = 189
  end
  inherited lbl_CEP: TLabel
    Left = 298
    Top = 128
    ExplicitLeft = 298
    ExplicitTop = 128
  end
  inherited lbl_Bairro: TLabel
    Left = 38
    Top = 128
    ExplicitLeft = 38
    ExplicitTop = 128
  end
  inherited lbl_Complemento: TLabel
    Left = 530
    ExplicitLeft = 530
  end
  inherited lbl_codCidade: TLabel
    Left = 467
    Top = 128
    Width = 84
    Caption = 'Codigo da Cidade'
    ExplicitLeft = 467
    ExplicitTop = 128
    ExplicitWidth = 84
  end
  inherited lbl_Cidade: TLabel
    Top = 128
    ExplicitTop = 128
  end
  object lbl_FormaPag: TLabel [13]
    Left = 570
    Top = 189
    Width = 102
    Height = 13
    Caption = 'Forma de Pagamento'
  end
  object lbl_Celular: TLabel [14]
    Left = 160
    Top = 189
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  inherited lbl_codUsuario: TLabel
    Left = 316
    ExplicitLeft = 316
  end
  object lbl_RG: TLabel [16]
    Left = 35
    Top = 288
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object lbl_CPF: TLabel [17]
    Left = 223
    Top = 288
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lbl_Sexo: TLabel [18]
    Left = 379
    Top = 288
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object lbl_DataNasc: TLabel [19]
    Left = 570
    Top = 288
    Width = 46
    Height = 13
    Caption = 'DataNasc'
  end
  inherited edt_Codigo: TEdit
    Enabled = False
  end
  inherited edt_DataCad: TEdit
    TabOrder = 18
  end
  inherited edt_DataUltAlt: TEdit
    TabOrder = 19
  end
  inherited btn_Salvar: TButton
    TabOrder = 21
  end
  inherited btn_Sair: TButton
    TabOrder = 22
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 20
  end
  inherited edt_Nome: TEdit
    Width = 617
    TabOrder = 1
    ExplicitWidth = 617
  end
  inherited edt_Telefone: TEdit
    Left = 36
    Top = 208
    Width = 111
    MaxLength = 14
    TabOrder = 10
    ExplicitLeft = 36
    ExplicitTop = 208
    ExplicitWidth = 111
  end
  inherited edt_Email: TEdit
    Left = 280
    Top = 208
    TabOrder = 12
    ExplicitLeft = 280
    ExplicitTop = 208
  end
  inherited edt_CEP: TEdit
    Left = 298
    Top = 147
    Width = 127
    MaxLength = 8
    TabOrder = 6
    ExplicitLeft = 298
    ExplicitTop = 147
    ExplicitWidth = 127
  end
  inherited edt_Bairro: TEdit
    Top = 147
    Width = 220
    TabOrder = 5
    ExplicitTop = 147
    ExplicitWidth = 220
  end
  inherited edt_Logradouro: TEdit
    Width = 249
    TabOrder = 2
    ExplicitWidth = 249
  end
  inherited edt_Numero: TEdit
    TabOrder = 3
  end
  inherited edt_Complemento: TEdit
    Left = 530
    TabOrder = 4
    ExplicitLeft = 530
  end
  inherited edt_codCidade: TEdit
    Left = 467
    Top = 147
    Width = 84
    TabOrder = 7
    ExplicitLeft = 467
    ExplicitTop = 147
    ExplicitWidth = 84
  end
  inherited edt_Cidade: TEdit
    Top = 147
    TabOrder = 8
    ExplicitTop = 147
  end
  inherited btn_Pesquisar: TButton
    Left = 772
    Top = 146
    TabOrder = 9
    OnClick = btn_PesquisarClick
    ExplicitLeft = 772
    ExplicitTop = 146
  end
  object edt_FormaPag: TEdit
    Left = 570
    Top = 208
    Width = 121
    Height = 21
    MaxLength = 30
    TabOrder = 13
  end
  object edt_Celular: TEdit
    Left = 153
    Top = 208
    Width = 121
    Height = 21
    MaxLength = 14
    TabOrder = 11
  end
  object edt_RG: TEdit
    Left = 32
    Top = 307
    Width = 121
    Height = 21
    MaxLength = 9
    TabOrder = 14
  end
  object edt_CPF: TEdit
    Left = 223
    Top = 307
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 15
  end
  object edt_Sexo: TEdit
    Left = 379
    Top = 307
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 16
  end
  object edt_DataNasc: TEdit
    Left = 570
    Top = 307
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 17
  end
end

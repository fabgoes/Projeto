inherited CadastrodeClientes: TCadastrodeClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 594
  ClientWidth = 867
  ExplicitWidth = 883
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_RG: TLabel
    Left = 221
    ExplicitLeft = 221
  end
  inherited lbl_Sexo: TLabel
    Left = 576
    ExplicitLeft = 576
  end
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
    Left = 668
    Top = 189
    ExplicitLeft = 668
    ExplicitTop = 189
  end
  inherited lbl_Bairro: TLabel
    Left = 38
    Top = 128
    ExplicitLeft = 38
    ExplicitTop = 128
  end
  inherited lbl_Complemento: TLabel
    Left = 34
    Top = 336
    ExplicitLeft = 34
    ExplicitTop = 336
  end
  inherited lbl_codCidade: TLabel
    Left = 467
    Top = 143
    Width = 84
    Caption = 'Codigo da Cidade'
    ExplicitLeft = 467
    ExplicitTop = 143
    ExplicitWidth = 84
  end
  inherited lbl_Cidade: TLabel
    Left = 576
    Top = 143
    ExplicitLeft = 576
    ExplicitTop = 143
  end
  object lbl_FormaPag: TLabel [16]
    Left = 515
    Top = 189
    Width = 102
    Height = 13
    Caption = 'Forma de Pagamento'
  end
  object lbl_Celular: TLabel [17]
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
  inherited lbl_DataNasc: TLabel
    Left = 396
    ExplicitLeft = 396
  end
  inherited edt_Codigo: TEdit
    Enabled = False
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 21
  end
  inherited edt_Nome: TEdit
    Width = 473
    ExplicitWidth = 473
  end
  inherited edt_RG: TEdit
    Left = 221
    Width = 161
    ExplicitLeft = 221
    ExplicitWidth = 161
  end
  inherited edt_Sexo: TEdit
    Left = 576
    Width = 159
    ExplicitLeft = 576
    ExplicitWidth = 159
  end
  inherited edt_Telefone: TEdit
    Left = 36
    Top = 208
    Width = 111
    MaxLength = 14
    ExplicitLeft = 36
    ExplicitTop = 208
    ExplicitWidth = 111
  end
  inherited edt_Email: TEdit
    Left = 280
    Top = 208
    ExplicitLeft = 280
    ExplicitTop = 208
  end
  inherited edt_CEP: TEdit
    Left = 298
    Top = 147
    Width = 127
    MaxLength = 8
    ExplicitLeft = 298
    ExplicitTop = 147
    ExplicitWidth = 127
  end
  inherited edt_Bairro: TEdit
    Top = 147
    Width = 220
    ExplicitTop = 147
    ExplicitWidth = 220
  end
  inherited edt_Logradouro: TEdit
    Width = 249
    ExplicitWidth = 249
  end
  inherited edt_Complemento: TEdit
    Left = 34
    Top = 358
    ExplicitLeft = 34
    ExplicitTop = 358
  end
  inherited edt_codCidade: TEdit
    Left = 488
    Top = 162
    ExplicitLeft = 488
    ExplicitTop = 162
  end
  inherited edt_Cidade: TEdit
    Left = 570
    Top = 162
    ExplicitLeft = 570
    ExplicitTop = 162
  end
  inherited btn_Pesquisar: TButton
    Left = 764
    OnClick = btn_PesquisarClick
    ExplicitLeft = 764
  end
  object edt_FormaPag: TEdit [40]
    Left = 512
    Top = 208
    Width = 121
    Height = 21
    MaxLength = 30
    TabOrder = 19
  end
  object edt_Celular: TEdit [41]
    Left = 153
    Top = 208
    Width = 121
    Height = 21
    MaxLength = 14
    TabOrder = 20
  end
  inherited edt_DataNasc: TEdit
    Left = 396
    TabOrder = 22
    ExplicitLeft = 396
  end
end

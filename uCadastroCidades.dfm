inherited CadastroCidades: TCadastroCidades
  Caption = 'Cadastro Cidades'
  ClientWidth = 760
  ExplicitWidth = 776
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_DataCad: TLabel
    Left = 30
    Top = 368
    ExplicitLeft = 30
    ExplicitTop = 368
  end
  inherited lbl_DataUltAtl: TLabel
    Left = 188
    Top = 368
    ExplicitLeft = 188
    ExplicitTop = 368
  end
  inherited lbl_CodUsuario: TLabel
    Left = 343
    Top = 368
    ExplicitLeft = 343
    ExplicitTop = 368
  end
  object lbl_Cidade: TLabel [4]
    Left = 165
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Cidade*'
  end
  object lbl_DDD: TLabel [5]
    Left = 304
    Top = 24
    Width = 21
    Height = 13
    Caption = 'DDD'
  end
  object lbl_CodEstado: TLabel [6]
    Left = 40
    Top = 128
    Width = 75
    Height = 13
    Caption = 'Codigo Estado*'
  end
  object lbl_Estado: TLabel [7]
    Left = 165
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited edt_Codigo: TEdit
    Enabled = False
  end
  inherited edt_DataCad: TEdit
    Left = 30
    Top = 400
    ExplicitLeft = 30
    ExplicitTop = 400
  end
  inherited edt_DataUltAlt: TEdit
    Left = 188
    Top = 400
    ExplicitLeft = 188
    ExplicitTop = 400
  end
  inherited edt_CodUsuario: TEdit
    Left = 343
    Top = 400
    ExplicitLeft = 343
    ExplicitTop = 400
  end
  inherited btn_Salvar: TButton
    Left = 502
    Top = 396
    ExplicitLeft = 502
    ExplicitTop = 396
  end
  inherited btn_Sair: TButton
    Left = 611
    Top = 396
    ExplicitLeft = 611
    ExplicitTop = 396
  end
  object edt_Cidade: TEdit
    Left = 165
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 6
  end
  object edt_DDD: TEdit
    Left = 304
    Top = 43
    Width = 89
    Height = 21
    MaxLength = 3
    TabOrder = 7
  end
  object edt_CodEstado: TEdit
    Left = 40
    Top = 147
    Width = 81
    Height = 21
    MaxLength = 10
    TabOrder = 8
  end
  object edt_Estado: TEdit
    Left = 165
    Top = 147
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 9
  end
  object btn_Pesquisar: TButton
    Left = 340
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 10
    OnClick = btn_PesquisarClick
  end
end

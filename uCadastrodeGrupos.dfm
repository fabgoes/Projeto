inherited CadastrodeGrupos: TCadastrodeGrupos
  Caption = 'Cadastro de Grupos'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Grupo: TLabel [4]
    Left = 176
    Top = 24
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object lbl_Situacao: TLabel [5]
    Left = 400
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Situacao'
  end
  object lbl_Observacao: TLabel [6]
    Left = 34
    Top = 96
    Width = 58
    Height = 13
    Caption = 'Observacao'
  end
  inherited edt_DataCad: TEdit
    TabOrder = 4
  end
  inherited edt_DataUltAlt: TEdit
    TabOrder = 5
  end
  inherited btn_Salvar: TButton
    TabOrder = 7
  end
  inherited btn_Sair: TButton
    TabOrder = 8
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 6
  end
  object edt_Grupo: TEdit
    Left = 176
    Top = 43
    Width = 190
    Height = 21
    MaxLength = 100
    TabOrder = 1
  end
  object edt_Situacao: TEdit
    Left = 400
    Top = 43
    Width = 155
    Height = 21
    MaxLength = 1
    TabOrder = 2
  end
  object edt_Observacao: TEdit
    Left = 34
    Top = 115
    Width = 297
    Height = 21
    MaxLength = 100
    TabOrder = 3
  end
end

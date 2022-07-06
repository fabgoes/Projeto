inherited CadastrodeCargos: TCadastrodeCargos
  Caption = 'Cadastro de Cargos'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Cargo: TLabel [4]
    Left = 184
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Cargo*'
  end
  inherited edt_DataCad: TEdit
    TabOrder = 2
  end
  inherited edt_DataUltAlt: TEdit
    TabOrder = 3
  end
  inherited btn_Salvar: TButton
    TabOrder = 5
  end
  inherited btn_Sair: TButton
    TabOrder = 6
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 4
  end
  object edt_Cargo: TEdit
    Left = 184
    Top = 43
    Width = 345
    Height = 21
    MaxLength = 50
    TabOrder = 1
  end
end

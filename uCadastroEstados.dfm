inherited CadastroEstados: TCadastroEstados
  Caption = 'Cadastro Estados'
  ClientWidth = 834
  ExplicitWidth = 850
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Estado: TLabel [4]
    Left = 182
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Estado*'
  end
  object lbl_UF: TLabel [5]
    Left = 344
    Top = 24
    Width = 19
    Height = 13
    Caption = 'UF*'
  end
  object lbl_CodPais: TLabel [6]
    Left = 480
    Top = 24
    Width = 61
    Height = 13
    Caption = 'Codigo Pais*'
  end
  object lbl_Pais: TLabel [7]
    Left = 34
    Top = 112
    Width = 25
    Height = 13
    Caption = 'Pais*'
  end
  inherited edt_Codigo: TEdit
    Enabled = False
  end
  inherited edt_CodUsuario: TEdit
    Top = 472
    ExplicitTop = 472
  end
  inherited btn_Salvar: TButton
    Left = 480
    ExplicitLeft = 480
  end
  object btn_Pesquisar: TButton
    Left = 182
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = btn_PesquisarClick
  end
  object edt_Estado: TEdit
    Left = 182
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 7
  end
  object edt_UF: TEdit
    Left = 344
    Top = 43
    Width = 81
    Height = 21
    MaxLength = 3
    TabOrder = 8
  end
  object edt_CodPais: TEdit
    Left = 480
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 9
  end
  object edt_Pais: TEdit
    Left = 32
    Top = 131
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 10
  end
end
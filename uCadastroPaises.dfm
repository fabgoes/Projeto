inherited CadastroPaises: TCadastroPaises
  Caption = 'Cadastro Paises'
  ClientHeight = 531
  ClientWidth = 777
  ExplicitWidth = 793
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Top = 32
    ExplicitTop = 32
  end
  inherited lbl_DataCad: TLabel
    Left = 16
    Top = 320
    ExplicitLeft = 16
    ExplicitTop = 320
  end
  inherited lbl_DataUltAtl: TLabel
    Left = 174
    Top = 320
    ExplicitLeft = 174
    ExplicitTop = 320
  end
  object lbl_Pais: TLabel [3]
    Left = 182
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Pais*'
  end
  object lbl_Sigla: TLabel [4]
    Left = 328
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Sigla*'
  end
  object lbl_DDI: TLabel [5]
    Left = 464
    Top = 32
    Width = 18
    Height = 13
    Caption = 'DDI'
  end
  inherited edt_Codigo: TEdit
    Top = 51
    Enabled = False
    ExplicitTop = 51
  end
  inherited edt_DataCad: TEdit
    Top = 352
    ExplicitTop = 352
  end
  inherited edt_DataUltAlt: TEdit
    Left = 174
    Top = 352
    ExplicitLeft = 174
    ExplicitTop = 352
  end
  inherited btn_Salvar: TButton
    Top = 350
    ExplicitTop = 350
  end
  inherited btn_Sair: TButton
    Top = 350
    ExplicitTop = 350
  end
  object edt_Pais: TEdit [12]
    Left = 182
    Top = 51
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 5
    OnChange = edt_PaisExit
    OnExit = edt_PaisExit
  end
  object edt_Sigla: TEdit [13]
    Left = 328
    Top = 51
    Width = 49
    Height = 21
    TabOrder = 6
  end
  object edt_DDI: TEdit [14]
    Left = 464
    Top = 51
    Width = 41
    Height = 21
    TabOrder = 7
  end
  inherited edt_CodUsuario: TEdit
    TabOrder = 8
  end
end

object ConsultaPai: TConsultaPai
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 558
  ClientWidth = 722
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chave: TEdit
    Left = 8
    Top = 32
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object btn_Pesquisar: TButton
    Left = 432
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = btn_PesquisarClick
  end
  object btn_Incluir: TButton
    Left = 304
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 3
    OnClick = btn_IncluirClick
  end
  object btn_Alterar: TButton
    Left = 400
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 4
    OnClick = btn_AlterarClick
  end
  object btn_Excluir: TButton
    Left = 504
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 5
    OnClick = btn_ExcluirClick
  end
  object btn_Sair: TButton
    Left = 600
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 6
    OnClick = btn_SairClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 89
    Width = 681
    Height = 401
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end

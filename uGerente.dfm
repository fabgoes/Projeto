object Gerente: TGerente
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 354
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Paises1: TMenuItem
        Caption = '&Paises'
        OnClick = Paises1Click
      end
      object Estados1: TMenuItem
        Caption = '&Estados'
        OnClick = Estados1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Ci&dades'
        OnClick = Cidades1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cargos1: TMenuItem
        Caption = 'Car&gos'
        OnClick = Cargos1Click
      end
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        OnClick = Clientes1Click
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
        OnClick = Fornecedores1Click
      end
      object Funcionarios1: TMenuItem
        Caption = 'F&uncionarios'
        OnClick = Funcionarios1Click
      end
      object Grupos1: TMenuItem
        Caption = '&Grupos'
        OnClick = Grupos1Click
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Sair4: TMenuItem
        Caption = 'Sai&r'
        OnClick = Sair4Click
      end
    end
    object Movimentos: TMenuItem
      Caption = 'Movimentos'
      object ContaAPagar: TMenuItem
        Caption = '&Conta a Pagar'
      end
      object ContaAReceber: TMenuItem
        Caption = 'C&onta a Receber'
      end
      object FormaPag: TMenuItem
        Caption = '&Forma de Pagamentos'
      end
      object Parcelas: TMenuItem
        Caption = '&Parcelas'
      end
      object CondicaoPagamentos: TMenuItem
        Caption = '&Condicao de Pagamentos'
      end
      object Compra: TMenuItem
        Caption = 'C&ompras'
      end
      object Vendas: TMenuItem
        Caption = '&Vendas'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = '&Sair'
      end
    end
  end
end

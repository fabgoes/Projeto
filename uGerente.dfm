object Gerente: TGerente
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 354
  ClientWidth = 628
  Color = clBtnFace
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
      object Clientes1: TMenuItem
        Caption = '&Clientes'
      end
      object Clientes2: TMenuItem
        Caption = '&Fornecedores'
      end
      object Funcionarios1: TMenuItem
        Caption = 'F&uncionarios'
      end
      object Servios1: TMenuItem
        Caption = '&Servi'#231'os'
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'C&ondi'#231#227'o de Pagamento'
      end
      object Parcelas1: TMenuItem
        Caption = '&Parcelas'
      end
      object Parcelas2: TMenuItem
        Caption = '&Forma de Pagamentos'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Con&tas a Pagar'
      end
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a &Receber'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Sair3: TMenuItem
        Caption = '&Nota Fiscal'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Sair4: TMenuItem
        Caption = 'Sai&r'
        OnClick = Sair4Click
      end
    end
  end
end
inherited CadastrodeProdutos: TCadastrodeProdutos
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Produto: TLabel [4]
    Left = 168
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object lbl_Unidade: TLabel [5]
    Left = 344
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Unidade'
  end
  object lbl_Largura: TLabel [6]
    Left = 536
    Top = 24
    Width = 37
    Height = 13
    Caption = 'Largura'
  end
  object lbl_NCM: TLabel [7]
    Left = 34
    Top = 104
    Width = 22
    Height = 13
    Caption = 'NCM'
  end
  object lbl_QtdEstoque: TLabel [8]
    Left = 168
    Top = 104
    Width = 113
    Height = 13
    Caption = 'Quantidade de Estoque'
  end
  object lbl_VlCusto: TLabel [9]
    Left = 344
    Top = 104
    Width = 70
    Height = 13
    Caption = 'Valor de Custo'
  end
  object lbl_VlUltCompra: TLabel [10]
    Left = 536
    Top = 104
    Width = 96
    Height = 13
    Caption = 'Valor Ultima Compra'
  end
  object lbl_VlVenda: TLabel [11]
    Left = 34
    Top = 180
    Width = 72
    Height = 13
    Caption = 'Valor de Venda'
  end
  object lbl_CFOP: TLabel [12]
    Left = 168
    Top = 180
    Width = 27
    Height = 13
    Caption = 'CFOP'
  end
  object lbl_Observacao: TLabel [13]
    Left = 344
    Top = 180
    Width = 58
    Height = 13
    Caption = 'Observacao'
  end
  object lbl_oGrupo: TLabel [14]
    Left = 125
    Top = 269
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object lbl_oFornecedor: TLabel [15]
    Left = 511
    Top = 269
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object lbl_Situacao: TLabel [16]
    Left = 25
    Top = 325
    Width = 41
    Height = 13
    Caption = 'Situacao'
  end
  object lbl_CodGrupo: TLabel [17]
    Left = 25
    Top = 269
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object lbl_CodFornecedor: TLabel [18]
    Left = 408
    Top = 269
    Width = 33
    Height = 13
    Caption = 'Codigo'
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
  object edt_Produto: TEdit
    Left = 168
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 100
    TabOrder = 1
  end
  object edt_Unidade: TEdit
    Left = 344
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 2
  end
  object edt_Largura: TEdit
    Left = 536
    Top = 43
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 3
  end
  object edt_NCM: TEdit
    Left = 32
    Top = 136
    Width = 89
    Height = 21
    MaxLength = 20
    TabOrder = 4
  end
  object edt_QtdEstoque: TEdit
    Left = 168
    Top = 136
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 5
  end
  object edt_VlCusto: TEdit
    Left = 344
    Top = 136
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 6
  end
  object edt_VlUltCompra: TEdit
    Left = 536
    Top = 136
    Width = 121
    Height = 21
    MaxLength = 10
    TabOrder = 7
  end
  object edt_VlVenda: TEdit
    Left = 32
    Top = 199
    Width = 89
    Height = 21
    MaxLength = 10
    TabOrder = 8
  end
  object edt_CFOP: TEdit
    Left = 168
    Top = 199
    Width = 121
    Height = 21
    MaxLength = 4
    TabOrder = 9
  end
  object edt_Observacao: TEdit
    Left = 344
    Top = 199
    Width = 312
    Height = 21
    MaxLength = 100
    TabOrder = 10
  end
  object edt_Grupo: TEdit
    Left = 125
    Top = 288
    Width = 164
    Height = 21
    MaxLength = 50
    TabOrder = 12
  end
  object btn_Pesquisar1: TButton
    Left = 313
    Top = 286
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 13
    OnClick = btn_Pesquisar1Click
  end
  object btn_Pesquisar2: TButton
    Left = 664
    Top = 286
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 16
    OnClick = btn_Pesquisar2Click
  end
  object edt_Fornecedor: TEdit
    Left = 511
    Top = 288
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 15
  end
  object edt_Situacao: TEdit
    Left = 25
    Top = 344
    Width = 121
    Height = 21
    MaxLength = 1
    TabOrder = 17
  end
  object edt_CodGrupo: TEdit
    Left = 25
    Top = 288
    Width = 68
    Height = 21
    MaxLength = 10
    TabOrder = 11
  end
  object edt_CodFornecedor: TEdit
    Left = 408
    Top = 288
    Width = 66
    Height = 21
    MaxLength = 10
    TabOrder = 14
  end
end

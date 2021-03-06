object DM: TDM
  OldCreateOrder = False
  Height = 510
  Width = 865
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMA.FDB'
      'User_Name=SYSDBA'
      'Password=2329'
      'CharacterSet=WIN1251'
      'DriverID=FB')
    ResourceOptions.AssignedValues = [rvDirectExecute]
    ResourceOptions.DirectExecute = True
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'PAIS_GEN'
    Connected = True
    LoginPrompt = False
    Transaction = Trans
    UpdateTransaction = Trans
    Left = 40
    Top = 24
  end
  object Trans: TFDTransaction
    Connection = Conexao
    Left = 112
    Top = 32
  end
  object QPaises: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    SQL.Strings = (
      'SELECT * FROM PAISES')
    Left = 480
    Top = 32
  end
  object QEstados: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'select * from estados')
    Left = 576
    Top = 32
  end
  object QCidades: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'select * from cidades')
    Left = 664
    Top = 32
  end
  object DSPaises: TDataSource
    DataSet = QPaises
    Left = 16
    Top = 112
  end
  object DSEstados: TDataSource
    DataSet = QEstados
    Left = 96
    Top = 112
  end
  object DSCidades: TDataSource
    DataSet = QCidades
    Left = 176
    Top = 112
  end
  object FDQuery: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    SQL.Strings = (
      ''
      '')
    Left = 680
    Top = 400
  end
  object QCondicaodePagamentos: TFDQuery
    Connection = Conexao
    Left = 680
    Top = 232
  end
  object QFormadePagamentos: TFDQuery
    Connection = Conexao
    Left = 560
    Top = 232
  end
  object DSCondicaodePagamentos: TDataSource
    Left = 56
    Top = 200
  end
  object DSFormadePagamentos: TDataSource
    Left = 200
    Top = 200
  end
  object QClientes: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'CLIENTE_GEN'
    SQL.Strings = (
      'SELECT * FROM CLIENTES;')
    Left = 480
    Top = 96
  end
  object QFuncionarios: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS;'
      '')
    Left = 568
    Top = 96
  end
  object QFornecedores: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'select * from fornecedores;')
    Left = 664
    Top = 104
  end
  object DSClientes: TDataSource
    DataSet = QClientes
    Left = 24
    Top = 280
  end
  object DSFuncionarios: TDataSource
    DataSet = QFuncionarios
    Left = 112
    Top = 280
  end
  object DSFornecedores: TDataSource
    DataSet = QFornecedores
    Left = 200
    Top = 280
  end
  object QParcelas: TFDQuery
    Connection = Conexao
    Left = 472
    Top = 232
  end
  object DSParcelas: TDataSource
    Left = 24
    Top = 352
  end
  object QProdutos: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'SELECT * FROM PRODUTOS;')
    Left = 472
    Top = 160
  end
  object DSProdutos: TDataSource
    DataSet = QProdutos
    Left = 104
    Top = 352
  end
  object QGrupos: TFDQuery
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'SELECT * FROM GRUPOS;'
      ''
      '')
    Left = 560
    Top = 160
  end
  object DSGrupos: TDataSource
    DataSet = QGrupos
    Left = 192
    Top = 352
  end
  object QCargos: TFDQuery
    Active = True
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'SELECT * FROM CARGOS;')
    Left = 744
    Top = 104
  end
  object DSCargos: TDataSource
    DataSet = QCargos
    Left = 24
    Top = 408
  end
end

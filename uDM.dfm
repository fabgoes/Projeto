object DM: TDM
  OldCreateOrder = False
  Height = 510
  Width = 757
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
    Left = 120
    Top = 32
  end
  object QPaises: TFDQuery
    Active = True
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    SQL.Strings = (
      'SELECT * FROM PAISES')
    Left = 480
    Top = 32
    object QPaisesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
      Origin = 'CODPAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPaisesPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Required = True
      Size = 50
    end
    object QPaisesDDI: TStringField
      FieldName = 'DDI'
      Origin = 'DDI'
      Size = 3
    end
    object QPaisesSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 3
    end
    object QPaisesDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'DATCAD'
    end
    object QPaisesDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'DATULTALT'
    end
  end
  object QEstados: TFDQuery
    Active = True
    Connection = Conexao
    Transaction = Trans
    UpdateTransaction = Trans
    SQL.Strings = (
      'select * from estados')
    Left = 576
    Top = 32
  end
  object QCidades: TFDQuery
    Active = True
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
    Left = 496
    Top = 104
  end
  object QFormadePagamentos: TFDQuery
    Connection = Conexao
    Left = 664
    Top = 104
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
    Connection = Conexao
    Left = 464
    Top = 176
  end
  object QFuncionarios: TFDQuery
    Connection = Conexao
    Left = 536
    Top = 176
  end
  object QFornecedores: TFDQuery
    Connection = Conexao
    Left = 624
    Top = 176
  end
  object DSClientes: TDataSource
    Left = 24
    Top = 280
  end
  object DSFuncionarios: TDataSource
    Left = 112
    Top = 280
  end
  object DSFornecedores: TDataSource
    Left = 200
    Top = 280
  end
  object QParcelas: TFDQuery
    Connection = Conexao
    Left = 464
    Top = 248
  end
  object DSParcelas: TDataSource
    Left = 24
    Top = 352
  end
  object QProdutos: TFDQuery
    Connection = Conexao
    Left = 536
    Top = 248
  end
  object DSProdutos: TDataSource
    Left = 104
    Top = 352
  end
end

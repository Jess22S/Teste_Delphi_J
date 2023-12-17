object LookUp: TLookUp
  Height = 303
  Width = 494
  object qryEstados: TFDQuery
    Connection = DM.Conexao
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT'
      '   ID_ESTADO,'
      '   ESTADO,'
      '   SIGLA'
      'FROM ESTADOS'
      'ORDER BY ID_ESTADO;')
    Left = 48
    Top = 112
  end
  object dsEstados: TDataSource
    DataSet = qryEstados
    Left = 128
    Top = 112
  end
  object FDTransaction: TFDTransaction
    Connection = DM.Conexao
    Left = 48
    Top = 32
  end
  object qryCidades: TFDQuery
    Connection = DM.Conexao
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT'
      '   ID_CIDADE,'
      '   CIDADE,'
      '   ID_ESTADO'
      'FROM CIDADES'
      'ORDER BY ID_CIDADE;')
    Left = 48
    Top = 176
  end
  object dsCidades: TDataSource
    DataSet = qryCidades
    Left = 128
    Top = 176
  end
end

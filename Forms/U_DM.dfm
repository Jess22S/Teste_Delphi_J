object DM: TDM
  Height = 388
  Width = 348
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'Password=123'
      'User_Name=postgres'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Transaction = Transacao
    UpdateTransaction = Transacao
    Left = 48
    Top = 48
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 149
    Top = 48
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 256
    Top = 48
  end
  object qryUsuario: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'usuario_usuarioid_usuario_seq'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT '
      '   ID_USUARIO,'
      '   NOME,'
      '   SENHA,'
      '   TIPO,'
      '   CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO;')
    Left = 48
    Top = 112
    object qryUsuarioid_usuario: TFDAutoIncField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryUsuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 30
    end
    object qryUsuariotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 30
    end
    object qryUsuariocadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
  end
  object qryTipoPessoa: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'tipo_pessoa_tipo_pessoaid_tipo_pessoa_seq'
    UpdateOptions.AutoIncFields = 'ID_TIPO_PESSOA'
    SQL.Strings = (
      'SELECT'
      '  ID_TIPO_PESSOA,'
      '  TIPO_PESSOA,'
      '  CADASTRO'
      'FROM TIPO_PESSOA'
      'ORDER BY ID_TIPO_PESSOA;')
    Left = 48
    Top = 176
    object qryTipoPessoaid_tipo_pessoa: TFDAutoIncField
      FieldName = 'id_tipo_pessoa'
    end
    object qryTipoPessoatipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      Size = 100
    end
    object qryTipoPessoacadastro: TDateField
      FieldName = 'cadastro'
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = qryUsuario
    UpdateMode = upWhereKeyOnly
    Left = 149
    Top = 112
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 257
    Top = 112
  end
  object dspTipo_Pessoa: TDataSetProvider
    DataSet = qryTipoPessoa
    UpdateMode = upWhereKeyOnly
    Left = 149
    Top = 176
  end
  object cdsTipoPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipo_Pessoa'
    Left = 257
    Top = 176
    object cdsTipoPessoaid_tipo_pessoa: TAutoIncField
      FieldName = 'id_tipo_pessoa'
      ReadOnly = True
    end
    object cdsTipoPessoatipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      Size = 100
    end
    object cdsTipoPessoacadastro: TDateField
      FieldName = 'cadastro'
    end
  end
  object qryPessoa: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'pessoa_pessoaid_pessoa_seq'
    UpdateOptions.AutoIncFields = 'ID_PESSOA'
    SQL.Strings = (
      'SELECT'
      '   P.ID_PESSOA,'
      '   P.NOME,  '
      '   P.TELEFONE,'
      '   P.RG,'
      '   P.CPF_CNPJ,'
      '   P.EMAIL,'
      '   T.ID_TIPO_PESSOA,'
      '   P.STATUS,'
      '   P.CADASTRO'
      'FROM PESSOA P'
      'LEFT JOIN TIPO_PESSOA T'
      'ON P.ID_TIPO_PESSOA = T.ID_TIPO_PESSOA'
      'ORDER BY ID_PESSOA;')
    Left = 48
    Top = 240
    object qryPessoaid_pessoa: TFDAutoIncField
      FieldName = 'id_pessoa'
      Origin = 'id_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryPessoanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryPessoatelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object qryPessoarg: TWideStringField
      FieldName = 'rg'
      Origin = 'rg'
      Size = 9
    end
    object qryPessoacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 16
    end
    object qryPessoaemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object qryPessoaid_tipo_pessoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_tipo_pessoa'
      Origin = 'id_tipo_pessoa'
    end
    object qryPessoastatus: TBooleanField
      FieldName = 'status'
      Origin = 'status'
    end
    object qryPessoacadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = qryPessoa
    UpdateMode = upWhereKeyOnly
    Left = 149
    Top = 240
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 257
    Top = 240
    object cdsPessoaid_pessoa: TAutoIncField
      FieldName = 'id_pessoa'
      ReadOnly = True
    end
    object cdsPessoanome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsPessoatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 15
    end
    object cdsPessoarg: TWideStringField
      FieldName = 'rg'
      Size = 9
    end
    object cdsPessoacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 16
    end
    object cdsPessoaemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object cdsPessoaid_tipo_pessoa: TIntegerField
      FieldName = 'id_tipo_pessoa'
    end
    object cdsPessoastatus: TBooleanField
      FieldName = 'status'
    end
    object cdsPessoacadastro: TDateField
      FieldName = 'cadastro'
    end
  end
  object qryEndereco: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'endereco_enderecoid_endereco_seq'
    UpdateOptions.AutoIncFields = 'ID_ENDERECO'
    SQL.Strings = (
      'SELECT '
      '   P.ID_PESSOA,'#9
      '   E.ID_ENDERECO,'
      '   E.ENDERECO,'
      '   E.NUMERO,'
      '   E.BAIRRO,'
      '   E.CEP,'
      '   C.ID_CIDADE,'
      '   S.ID_ESTADO   '
      'FROM ENDERECO E'
      'LEFT JOIN PESSOA P'
      'ON E.ID_PESSOA = P.ID_PESSOA'
      'LEFT JOIN CIDADE C'
      'ON E.ID_CIDADE = C.ID_CIDADE'
      'LEFT JOIN ESTADO S'
      'ON E.ID_ESTADO = S.ID_ESTADO'
      'ORDER BY ID_ENDERECO;')
    Left = 48
    Top = 304
    object FDAutoIncField2: TFDAutoIncField
      FieldName = 'id_tipo_pessoa'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'tipo_pessoa'
      Size = 100
    end
    object DateField3: TDateField
      FieldName = 'cadastro'
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = qryEndereco
    UpdateMode = upWhereKeyOnly
    Left = 149
    Top = 304
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipo_Pessoa'
    Left = 257
    Top = 304
    object AutoIncField2: TAutoIncField
      FieldName = 'id_tipo_pessoa'
      ReadOnly = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'tipo_pessoa'
      Size = 100
    end
    object DateField4: TDateField
      FieldName = 'cadastro'
    end
  end
end
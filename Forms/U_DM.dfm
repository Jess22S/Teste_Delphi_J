object DM: TDM
  Height = 528
  Width = 472
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
      ReadOnly = True
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
    object cdsUsuarioid_usuario: TAutoIncField
      FieldName = 'id_usuario'
      ReadOnly = True
    end
    object cdsUsuarionome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsUsuariosenha: TWideStringField
      FieldName = 'senha'
      Size = 30
    end
    object cdsUsuariotipo: TWideStringField
      FieldName = 'tipo'
      Size = 30
    end
    object cdsUsuariocadastro: TDateField
      FieldName = 'cadastro'
    end
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
      EditMask = '(##) #####-####;1;_'
      Size = 15
    end
    object qryPessoarg: TWideStringField
      FieldName = 'rg'
      Origin = 'rg'
      EditMask = '##.###.###-##;1;_'
      Size = 9
    end
    object qryPessoacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      OnChange = qryPessoacpf_cnpjChange
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
      LookupDataSet = qryTipoPessoa
      LookupKeyFields = 'id_tipo_pessoa'
      LookupResultField = 'tipo_pessoa'
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
      LookupDataSet = qryTipoPessoa
      LookupKeyFields = 'id_tipo_pessoa'
      LookupResultField = 'tipo_pessoa'
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
    object qryEnderecoid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
      Origin = 'id_pessoa'
    end
    object qryEnderecoid_endereco: TFDAutoIncField
      FieldName = 'id_endereco'
      Origin = 'id_endereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryEnderecoendereco: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object qryEndereconumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object qryEnderecobairro: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object qryEnderecocep: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object qryEnderecoid_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cidade'
      LookupDataSet = qryCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'cidade'
      Origin = 'id_cidade'
    end
    object qryEnderecoid_estado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_estado'
      LookupDataSet = qryEstados
      LookupKeyFields = 'id_estado'
      LookupResultField = 'sigla'
      Origin = 'id_estado'
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
    ProviderName = 'dspEndereco'
    Left = 257
    Top = 304
    object cdsEnderecoid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
    end
    object cdsEnderecoid_endereco: TAutoIncField
      FieldName = 'id_endereco'
      ReadOnly = True
    end
    object cdsEnderecoendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object cdsEndereconumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsEnderecobairro: TWideStringField
      FieldName = 'bairro'
      Size = 100
    end
    object cdsEnderecocep: TWideStringField
      FieldName = 'cep'
      Size = 16
    end
    object cdsEnderecoid_cidade: TIntegerField
      FieldName = 'id_cidade'
      LookupDataSet = qryCidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'cidade'
    end
    object cdsEnderecoid_estado: TIntegerField
      FieldName = 'id_estado'
      LookupDataSet = qryEstados
      LookupKeyFields = 'id_estado'
      LookupResultField = 'sigla'
    end
  end
  object qryEstados: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT'
      '   ID_ESTADO,'
      '   ESTADO,'
      '   SIGLA'
      'FROM ESTADO'
      'ORDER BY ID_ESTADO;')
    Left = 48
    Top = 368
    object qryEstadosid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstadosestado: TWideStringField
      FieldName = 'estado'
      Origin = 'estado'
      Size = 100
    end
    object qryEstadossigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      FixedChar = True
      Size = 2
    end
  end
  object qryCidades: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT'
      '   ID_CIDADE,'
      '   CIDADE,'
      '   ID_ESTADO'
      'FROM CIDADE'
      'ORDER BY ID_CIDADE;')
    Left = 48
    Top = 432
    object qryCidadesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCidadescidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qryCidadesid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
    end
  end
end

object DM: TDM
  Height = 512
  Width = 338
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
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
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
      '   P.CPF,'
      '   P.CNPJ,'
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
      EditMask = '##.###.###-##;1;_'
      Size = 9
    end
    object qryPessoacpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 11
    end
    object qryPessoacnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      EditMask = '##.###.###/####-##;1;_'
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
    object cdsPessoacpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object cdsPessoacnpj: TWideStringField
      FieldName = 'cnpj'
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
    object cdsPessoacdsEndereco: TDataSetField
      FieldName = 'cdsEndereco'
    end
    object cdsPessoaqryEndereco: TDataSetField
      FieldName = 'qryEndereco'
    end
  end
  object qryEndereco: TFDQuery
    Active = True
    IndexFieldNames = 'id_pessoa'
    MasterSource = PessoaF.dsPadrao
    MasterFields = 'id_pessoa'
    DetailFields = 'id_pessoa'
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
      '   E.ID_ENDERECO1,'
      '   E.ENDERECO1,'
      '   E.ID_ENDERECO2,'
      '   E.ENDERECO2,'
      '   E.ID_ENDERECO3,'
      '   E.ENDERECO3,'
      '   E.NUMERO,'
      '   E.BAIRRO,'
      '   E.TIPO_ENDERECO,'
      '   E.PRINCIPAL,'
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
      'WHERE P.ID_PESSOA = :ID_PESSOA       '
      'ORDER BY ID_ENDERECO;')
    Left = 48
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'ID_PESSOA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
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
    object qryEnderecoid_endereco1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_endereco1'
      Origin = 'id_endereco1'
    end
    object qryEnderecoendereco1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco1'
      Origin = 'endereco1'
      Size = 100
    end
    object qryEnderecoid_endereco2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_endereco2'
      Origin = 'id_endereco2'
    end
    object qryEnderecoendereco2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco2'
      Origin = 'endereco2'
      Size = 100
    end
    object qryEnderecoid_endereco3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_endereco3'
      Origin = 'id_endereco3'
    end
    object qryEnderecoendereco3: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco3'
      Origin = 'endereco3'
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
    object qryEnderecotipo_endereco: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_endereco'
      Origin = 'tipo_endereco'
      FixedChar = True
      Size = 1
    end
    object qryEnderecoprincipal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'principal'
      Origin = 'principal'
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
      Origin = 'id_cidade'
    end
    object qryEnderecoid_estado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_estado'
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
    Active = True
    Aggregates = <>
    IndexFieldNames = 'id_pessoa'
    MasterFields = 'id_pessoa'
    MasterSource = PessoaF.dsPadrao
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
        Value = 1
      end>
    ProviderName = 'dspEndereco'
    Left = 257
    Top = 304
    object cdsEnderecoid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
      Origin = 'id_pessoa'
    end
    object cdsEnderecoid_endereco: TAutoIncField
      FieldName = 'id_endereco'
      Origin = 'id_endereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsEnderecoid_endereco1: TIntegerField
      FieldName = 'id_endereco1'
      Origin = 'id_endereco1'
    end
    object cdsEnderecoendereco1: TWideStringField
      FieldName = 'endereco1'
      Origin = 'endereco1'
      Size = 100
    end
    object cdsEnderecoid_endereco2: TIntegerField
      FieldName = 'id_endereco2'
      Origin = 'id_endereco2'
    end
    object cdsEnderecoendereco2: TWideStringField
      FieldName = 'endereco2'
      Origin = 'endereco2'
      Size = 100
    end
    object cdsEnderecoid_endereco3: TIntegerField
      FieldName = 'id_endereco3'
      Origin = 'id_endereco3'
    end
    object cdsEnderecoendereco3: TWideStringField
      FieldName = 'endereco3'
      Origin = 'endereco3'
      Size = 100
    end
    object cdsEndereconumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object cdsEnderecobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object cdsEnderecotipo_endereco: TWideStringField
      FieldName = 'tipo_endereco'
      Origin = 'tipo_endereco'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoprincipal: TBooleanField
      FieldName = 'principal'
      Origin = 'principal'
    end
    object cdsEnderecocep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object cdsEnderecoid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
    object cdsEnderecoid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
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

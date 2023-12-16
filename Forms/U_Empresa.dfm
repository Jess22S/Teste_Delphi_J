inherited EmpresaF: TEmpresaF
  Caption = 'CADASTRO DA EMPRESA'
  ClientHeight = 421
  ClientWidth = 927
  OnShow = FormShow
  ExplicitWidth = 939
  ExplicitHeight = 459
  TextHeight = 15
  object lblID: TLabel [0]
    Left = 141
    Top = 88
    Width = 28
    Height = 22
    Caption = 'ID:'
    FocusControl = edtID
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblRazaoSocial: TLabel [1]
    Left = 264
    Top = 88
    Width = 107
    Height = 22
    Caption = 'Raz'#227'o Social:'
    FocusControl = edtRazao_Social
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblNomeFantasia: TLabel [2]
    Left = 141
    Top = 140
    Width = 124
    Height = 22
    Caption = 'Nome Fantasia:'
    FocusControl = edtNome_Fantasia
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblEndereco: TLabel [3]
    Left = 141
    Top = 188
    Width = 78
    Height = 22
    Caption = 'Endereco:'
    FocusControl = edtEndereco
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblNumero: TLabel [4]
    Left = 656
    Top = 188
    Width = 67
    Height = 22
    Caption = 'N'#250'mero:'
    FocusControl = edtNumero
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblBairro: TLabel [5]
    Left = 141
    Top = 236
    Width = 56
    Height = 22
    Caption = 'Bairro:'
    FocusControl = edtBairro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblCidade: TLabel [6]
    Left = 526
    Top = 236
    Width = 58
    Height = 22
    Caption = 'Cidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblUF: TLabel [7]
    Left = 735
    Top = 236
    Width = 33
    Height = 22
    Caption = 'UF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblCEP: TLabel [8]
    Left = 336
    Top = 236
    Width = 41
    Height = 22
    Caption = 'CEP:'
    FocusControl = edtCEP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblTelefone: TLabel [9]
    Left = 141
    Top = 286
    Width = 72
    Height = 22
    Caption = 'Telefone:'
    FocusControl = edtTelefone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblCNPJ: TLabel [10]
    Left = 656
    Top = 88
    Width = 51
    Height = 22
    Caption = 'CNPJ;'
    FocusControl = edtCNPJ
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblEmail: TLabel [11]
    Left = 336
    Top = 286
    Width = 59
    Height = 22
    Caption = 'E-mail:'
    FocusControl = edtEmail
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblLogo: TLabel [12]
    Left = 13
    Top = 72
    Width = 45
    Height = 22
    Caption = 'Logo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblCadastro: TLabel [13]
    Left = 656
    Top = 140
    Width = 74
    Height = 22
    Caption = 'Cadastro:'
    FocusControl = edtCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 927
    TabOrder = 13
    ExplicitWidth = 923
    inherited Panel3: TPanel
      Left = 777
      ExplicitLeft = 773
      inherited btnSair: TBitBtn
        Left = 755
        ExplicitLeft = 755
      end
      object btnSair2: TBitBtn
        Left = 39
        Top = 4
        Width = 100
        Height = 45
        Anchors = [akTop, akRight]
        Caption = '&Sair'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
          B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
          B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6A2A6A9939A
          A1939AA1939AA1949BA1949EA96199D04794D56199D0749ECA86A3C593A7BF97
          A5B597A1AB969DA3989EA4989EA4989EA4999FA5AEB1B0B8B9B6B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B67D89970C517C0C51
          7D0C517D0C517D0C517D1376B51793E21793E21793E21692E11692E11591E015
          8FDD158EDA158BD71484CB137CBE1274B21169A12658819DA3A7B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B1B4B317537D0C527E0C52
          7E1759832462892362891C83C41894E31793E21793E21793E21692E11692E115
          91E01591E01591E01591E01591E01591E01590DF137FC4586F8AB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACAFB00C527E0C527E7199
          B2EBEDEEEBEBEBE6E6E65EAFE31894E31894E31793E21793E21793E21692E116
          92E11591E01591E01591E01591E01591E01591E01590DF487199B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACAFB00D537F185B85F0F2
          F3F0F0F0EBEBEBE6E6E65EAFE31895E41894E31894E31793E21793E21793E216
          92E11692E11591E01591E01591E01591E01591E01591E04874A0B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACAFB00D548027668DF5F5
          F5F0F0F0EBEBEBE6E6E65EB0E41995E41995E41894E31894E31794E31793E217
          93E21692E11692E11692E11591E01591E01591E01591E04874A0B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACAFB00E558127668EF5F5
          F5F0F0F0EBEBEBE6E6E65FB0E41996E51995E41995E41894E31894E31794E317
          93E21793E21692E11692E11692E11591E01591E01591E04975A0B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B7B9B6A6A8BAACB0B00F568228678FF5F5
          F5F0F0F0EBEBEBE6E6E65FB0E41A96E51996E51995E41995E41894E31894E318
          94E31793E21793E21692E11692E11692E11591E01591E04975A1B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6AFB0B86C6DC8696ACFACB0B00F5683286890F5F5
          F5F0F0F0EBEBEBE6E6E65FB1E41A96E51A96E51A96E51995E41995E41894E318
          94E31894E31793E21793E21692E11692E11692E11591E04976A1B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B69B9DBD4C4DD13B3BD96667D1A4A7B214548B2B6397E1E1
          F0DCDCECD8D8E7DADAE45FB1E51B97E61A96E51A96E51A96E51995E41995E418
          95E41894E31894E31793E21793E21793E21692E11692E14977A3B8B9B6B8B9B6
          B8B9B6B4B5B77D7EC63E3ED83D3DDB3D3DDB3D3DD93C3CD53C3CD53C3CD53C3C
          D53C3CD53C3CD54A4AD560B1E51B97E61B97E61A97E61A96E51A96E51995E419
          95E41895E41894E31894E31793E21793E21793E21692E14977A4B8B9B6B8B9B6
          A6A7BB5B5CD13E3EDC3E3EDC3E3EDC3E3EDC3E3EDC3E3EDC3E3EDC3E3EDC3E3E
          DC3E3EDC3E3EDC4444DC60B2E51B98E71B97E61B97E61A97E61A96E51A96E519
          95E41995E41895E41894E31894E31793E21793E21793E24978A4B7B8B68C8DC5
          4444DA4040DE4040DE4040DE4040DE4040DE4040DE4040DE4040DE4040DE4040
          DE4040DE4040DE4545DE60B2E61C98E71C98E71B97E61B97E61A97E61A96E51A
          96E51995E41995E41895E41894E31894E31793E21793E24978A57576CD4242DE
          4242E04242E04242E04242E04242E04242E04242E04242E04242E04242E04242
          E04242E04242E04747E061B2E61C99E81C98E71C98E71B97E61B97E61A97E61A
          96E51A96E51996E51995E41995E41894E31894E31794E34978A6A7A8C15F60DC
          4444E14444E14444E14444E14444E14444E14444E14444E14444E14444E14444
          E14444E14444E14848E161B2E61D99E81C99E7176FA71573AE1B98E71B97E61B
          97E61A96E51A96E51996E51995E41995E41894E31894E34978A6B8B9B6B4B6B9
          7F80D44646E34545E34545E34545E34545E34545E34545E34545E34545E34545
          E34545E34545E34A4AE361B3E61D9AE91D98E71762911161941C98E71B98E71B
          97E61B97E61A96E51A96E51996E51995E41995E41894E34979A6B8B9B6B8B9B6
          B8B9B69D9EC75454E24747E44747E44747E44747E44747E44747E44747E44747
          E44747E44747E44E4EE461B3E71E9AE91D9AE91A85C81987CD1C98E71C98E71B
          98E71B97E61B97E61A96E51A96E51A96E51995E41995E4497AA7B8B9B6B8B9B6
          B8B9B6B8B9B6AFB0BD7071DB4949E64949E66767DE9498C12457A83562B0BFBF
          F0BCBCEDB8B8E9C2C2E562B3E71E9AE91E9AE91D9AE91D99E81D99E81C98E71C
          98E71B98E71B97E61B97E61A96E51A96E51A96E51995E4497AA8B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B7B9B79091D04E4EE67273DDACB0B1155E8D2D6F98F5F5
          F5F0F0F0EBEBEBE6E6E662B4E71F9BEA1E9BEA1E9AE91D9AE91D99E81D99E81C
          99E81C98E71B98E71B97E61B97E61A97E61A96E51A96E5497BA8B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6A8A9C38B8CD3ACB0B1155F8D2E7099F5F5
          F5F0F0F0EBEBEBE6E6E662B4E81F9BEA1F9BEA1E9BEA1E9AE91D9AE91D99E81D
          99E81C99E81C98E71B98E71B97E61B97E61A97E61A96E5497BAAB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B116608E2E709AF5F5
          F5F0F0F0EBEBEBE6E6E662B4E81F9CEB1F9BEA1F9BEA1E9BEA1E9AE91D9AE91D
          99E81D99E81C99E81C98E71C98E71B97E61B97E61A97E64A7CABB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B216618F2F719BF5F5
          F5F0F0F0EBEBEBE6E6E663B4E8209CEB1F9CEB1F9BEA1F9BEA1E9BEA1E9AE91D
          9AE91D99E81D99E81C99E81C98E71C98E71B97E61B97E64A7DABB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B21761902F729CF5F5
          F5F0F0F0EBEBEBE6E6E663B5E8209DEC209CEB1F9CEB1F9BEA1F9BEA1E9BEA1E
          9AE91E9AE91D9AE91D99E81C99E81C98E71C98E71B98E74A7DACB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B218629130729CF5F5
          F5F0F0F0EBEBEBE6E6E663B5E9219DEC209DEC209CEB209CEB1F9CEB1F9BEA1E
          9BEA1E9AE91E9AE91D9AE91D99E81C99E81C98E71C98E74A7EADB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B218639230739DF5F5
          F5F0F0F0EBEBEBE6E6E664B5E9219EED219DEC209DEC209CEB209CEB1F9CEB1F
          9BEA1E9BEA1E9AE91E9AE91D9AE91D99E81D99E81C98E74A7FADB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB0B21964932E719CF5F5
          F5F0F0F0EBEBEBE6E6E664B6EA229EED219EED219DEC209DEC209CEB209CEB1F
          9CEB1F9BEA1E9BEA1E9AE91E9AE91D9AE91D99E81D99E84A7EADB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ACB1B21965941A6494CCD6
          E0F0F0F0EBEBEBE6E6E664B6EA229EED229EED219EED219DEC209DEC209CEB20
          9CEB1F9CEB1F9BEA1F9BEA1E9BEA1E9AE91D9AE91D99E84A7BA7B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6ADB1B21A65951A65952C69
          9888A1BC97AAC195A8BF4AA2DD229FEE229FEE229EED219EED219DEC209DEC20
          9DEC209CEB1F9CEB1F9BEA1F9BEA1E9BEA1E9AE91C87CB4B749AB8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B7B8B64B759B1A66961A66
          961A66961A65951A65951F86C8239FEE229FEE229FEE229EED219EED219DEC20
          9DEC209BE91F94DE1E8CD21D85C71C7DBB1B74AB1A66967189A1B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6A9AFB26985A04B75
          9B4A759B4A759B4A759B4B79A14C97D7499CE04895D4488EC84786BB477FB043
          77A442719A42719942719942719940709A4171997088A2B1B4B4B8B9B6B8B9B6
          B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
          B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
          B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6}
        TabOrder = 1
        OnClick = btnSairClick
      end
    end
  end
  inherited Panel2: TPanel
    Top = 351
    Width = 927
    Font.Charset = ANSI_CHARSET
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 14
    ExplicitTop = 350
    ExplicitWidth = 923
    inherited BindNavigator1: TBindNavigator
      Left = 264
      Width = 428
      Hints.Strings = ()
      ExplicitLeft = 264
      ExplicitWidth = 428
    end
  end
  object edtID: TDBEdit [16]
    Left = 141
    Top = 112
    Width = 108
    Height = 23
    DataField = 'id_empresa'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 0
  end
  object edtRazao_Social: TDBEdit [17]
    Left = 264
    Top = 112
    Width = 379
    Height = 23
    CharCase = ecUpperCase
    DataField = 'razao_social'
    DataSource = dsPadrao
    TabOrder = 1
  end
  object edtNome_Fantasia: TDBEdit [18]
    Left = 141
    Top = 161
    Width = 502
    Height = 23
    CharCase = ecUpperCase
    DataField = 'nome_fantasia'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object edtEndereco: TDBEdit [19]
    Left = 141
    Top = 209
    Width = 502
    Height = 23
    CharCase = ecUpperCase
    DataField = 'endereco'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object edtNumero: TDBEdit [20]
    Left = 656
    Top = 209
    Width = 129
    Height = 23
    CharCase = ecUpperCase
    DataField = 'numero'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object edtBairro: TDBEdit [21]
    Left = 141
    Top = 257
    Width = 180
    Height = 23
    CharCase = ecUpperCase
    DataField = 'bairro'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object edtCEP: TDBEdit [22]
    Left = 336
    Top = 257
    Width = 180
    Height = 23
    DataField = 'cep'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object edtTelefone: TDBEdit [23]
    Left = 141
    Top = 307
    Width = 180
    Height = 23
    DataField = 'telefone'
    DataSource = dsPadrao
    TabOrder = 11
  end
  object edtCNPJ: TDBEdit [24]
    Left = 656
    Top = 112
    Width = 129
    Height = 23
    DataField = 'cnpj'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtEmail: TDBEdit [25]
    Left = 336
    Top = 307
    Width = 449
    Height = 23
    CharCase = ecUpperCase
    DataField = 'email'
    DataSource = dsPadrao
    TabOrder = 12
  end
  object edtCadastro: TDBEdit [26]
    Left = 656
    Top = 161
    Width = 129
    Height = 23
    DataField = 'cadastro'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 4
  end
  object cmbUF: TDBLookupComboBox [27]
    Left = 735
    Top = 257
    Width = 49
    Height = 23
    DataField = 'id_estado'
    DataSource = dsPadrao
    KeyField = 'id_estado'
    ListField = 'sigla'
    ListSource = LookUp.dsEstados
    TabOrder = 10
  end
  object cmbCidade: TDBLookupComboBox [28]
    Left = 526
    Top = 257
    Width = 197
    Height = 23
    DataField = 'id_cidade'
    DataSource = dsPadrao
    KeyField = 'id_cidade'
    ListField = 'cidade'
    ListSource = LookUp.dsCidades
    TabOrder = 9
  end
  inherited dsPadrao: TDataSource
    Left = 855
    Top = 138
  end
end

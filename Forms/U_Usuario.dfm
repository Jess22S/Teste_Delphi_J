inherited UsuarioF: TUsuarioF
  BorderStyle = bsSizeToolWin
  Caption = 'CADASTRO DE USU'#193'RIOS'
  ClientHeight = 333
  ClientWidth = 991
  DefaultMonitor = dmMainForm
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 999
  ExplicitHeight = 360
  TextHeight = 15
  object lblID: TLabel [0]
    Left = 200
    Top = 70
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
  object lblNome: TLabel [1]
    Left = 202
    Top = 125
    Width = 50
    Height = 22
    Caption = 'Nome:'
    FocusControl = edtNome
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblSemha: TLabel [2]
    Left = 200
    Top = 184
    Width = 52
    Height = 22
    Caption = 'Senha:'
    FocusControl = edtSenha
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblTipo: TLabel [3]
    Left = 365
    Top = 184
    Width = 41
    Height = 22
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblCadastro: TLabel [4]
    Left = 543
    Top = 184
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
    Width = 991
    TabOrder = 5
    ExplicitWidth = 983
    inherited btnNovo: TBitBtn
      Left = 35
      Width = 95
      ExplicitLeft = 35
      ExplicitWidth = 95
    end
    inherited btnExcluir: TBitBtn
      Left = 137
      Width = 95
      ExplicitLeft = 137
      ExplicitWidth = 95
    end
    inherited btnEditar: TBitBtn
      Left = 239
      Width = 95
      ExplicitLeft = 239
      ExplicitWidth = 95
    end
    inherited btnGravar: TBitBtn
      Left = 341
      Width = 95
      ExplicitLeft = 341
      ExplicitWidth = 95
    end
    inherited btnCancelar: TBitBtn
      Left = 444
      Width = 95
      ExplicitLeft = 444
      ExplicitWidth = 95
    end
    inherited btnAtualizar: TBitBtn
      Left = 546
      Width = 95
      ExplicitLeft = 546
      ExplicitWidth = 95
    end
    inherited btnPesquisar: TBitBtn
      Left = 648
      Width = 103
      Visible = False
      ExplicitLeft = 648
      ExplicitWidth = 103
    end
    inherited Panel3: TPanel
      Left = 841
      ExplicitLeft = 833
    end
  end
  inherited Panel2: TPanel
    Top = 263
    Width = 991
    TabOrder = 6
    ExplicitTop = 251
    ExplicitWidth = 983
    inherited BindNavigator1: TBindNavigator
      Left = 239
      Width = 496
      Hints.Strings = ()
      ExplicitLeft = 239
      ExplicitWidth = 496
    end
  end
  object edtID: TDBEdit [7]
    Left = 202
    Top = 94
    Width = 63
    Height = 23
    DataField = 'id_usuario'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 0
  end
  object edtNome: TDBEdit [8]
    Left = 202
    Top = 149
    Width = 436
    Height = 23
    CharCase = ecUpperCase
    DataField = 'nome'
    DataSource = dsPadrao
    TabOrder = 1
  end
  object edtSenha: TDBEdit [9]
    Left = 200
    Top = 208
    Width = 161
    Height = 23
    DataField = 'senha'
    DataSource = dsPadrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object edtCadastro: TDBEdit [10]
    Left = 543
    Top = 208
    Width = 95
    Height = 23
    DataField = 'cadastro'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 4
  end
  object cmbTipo: TDBComboBox [11]
    Left = 364
    Top = 208
    Width = 175
    Height = 23
    DataField = 'tipo'
    DataSource = dsPadrao
    Enabled = False
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited dsPadrao: TDataSource
    DataSet = DM.qryUsuario
    Top = 72
  end
  inherited BindSourceDB1: TBindSourceDB
    Top = 72
  end
end

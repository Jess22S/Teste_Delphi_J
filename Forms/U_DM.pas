unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    qryUsuario: TFDQuery;
    qryTipoPessoa: TFDQuery;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    qryUsuarioid_usuario: TFDAutoIncField;
    qryUsuarionome: TWideStringField;
    qryUsuariosenha: TWideStringField;
    qryUsuariotipo: TWideStringField;
    qryUsuariocadastro: TDateField;
    dspTipo_Pessoa: TDataSetProvider;
    cdsTipoPessoa: TClientDataSet;
    cdsTipoPessoaid_tipo_pessoa: TAutoIncField;
    cdsTipoPessoatipo_pessoa: TWideStringField;
    cdsTipoPessoacadastro: TDateField;
    qryTipoPessoaid_tipo_pessoa: TFDAutoIncField;
    qryTipoPessoatipo_pessoa: TWideStringField;
    qryTipoPessoacadastro: TDateField;
    qryPessoa: TFDQuery;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    qryEndereco: TFDQuery;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
    qryEstados: TFDQuery;
    qryCidades: TFDQuery;
    cdsUsuarioid_usuario: TAutoIncField;
    cdsUsuarionome: TWideStringField;
    cdsUsuariosenha: TWideStringField;
    cdsUsuariotipo: TWideStringField;
    cdsUsuariocadastro: TDateField;
    qryEstadosid_estado: TIntegerField;
    qryEstadosestado: TWideStringField;
    qryEstadossigla: TWideStringField;
    qryCidadesid_cidade: TIntegerField;
    qryCidadescidade: TWideStringField;
    qryCidadesid_estado: TIntegerField;
    qryEnderecoid_pessoa: TIntegerField;
    qryEnderecoid_endereco: TFDAutoIncField;
    qryEndereconumero: TIntegerField;
    qryEnderecobairro: TWideStringField;
    qryEnderecotipo_endereco: TWideStringField;
    qryEnderecoprincipal: TBooleanField;
    qryEnderecocep: TWideStringField;
    qryEnderecoid_cidade: TIntegerField;
    qryEnderecoid_estado: TIntegerField;
    cdsEnderecoid_pessoa: TIntegerField;
    cdsEnderecoid_endereco: TAutoIncField;
    cdsEndereconumero: TIntegerField;
    cdsEnderecobairro: TWideStringField;
    cdsEnderecotipo_endereco: TWideStringField;
    cdsEnderecoprincipal: TBooleanField;
    cdsEnderecocep: TWideStringField;
    cdsEnderecoid_cidade: TIntegerField;
    cdsEnderecoid_estado: TIntegerField;
    qryEnderecoendereco: TWideStringField;
    cdsEnderecoendereco: TWideStringField;
    qryPessoaid_pessoa: TFDAutoIncField;
    qryPessoanome: TWideStringField;
    qryPessoatelefone: TWideStringField;
    qryPessoarg: TWideStringField;
    qryPessoacpf: TWideStringField;
    qryPessoacnpj: TWideStringField;
    qryPessoasexo: TWideStringField;
    qryPessoaestado_civil: TWideStringField;
    qryPessoaemail: TWideStringField;
    qryPessoaid_tipo_pessoa: TIntegerField;
    S: TBooleanField;
    qryPessoacadastro: TDateField;
    cdsPessoaid_pessoa: TAutoIncField;
    cdsPessoanome: TWideStringField;
    cdsPessoatelefone: TWideStringField;
    cdsPessoarg: TWideStringField;
    cdsPessoacpf: TWideStringField;
    cdsPessoacnpj: TWideStringField;
    cdsPessoasexo: TWideStringField;
    cdsPessoaestado_civil: TWideStringField;
    cdsPessoaemail: TWideStringField;
    cdsPessoaid_tipo_pessoa: TIntegerField;
    cdsPessoastatus: TBooleanField;
    cdsPessoacadastro: TDateField;
    cdsPessoacdsEndereco: TDataSetField;
    cdsPessoaqryEndereco: TDataSetField;
    qryEnderecoestado: TStringField;
    cdsEnderecoestado: TStringField;
    qryEnderecocidade: TStringField;
    cdsEnderecocidade: TStringField;
    qryLogin: TFDQuery;
    qryLoginid_usuario: TIntegerField;
    qryLoginnome: TWideStringField;
    qryLoginsenha: TWideStringField;
    qryLogintipo: TWideStringField;
    qryLog: TFDQuery;
    qryLogid_log: TFDAutoIncField;
    qryLoglog_data: TDateField;
    qryLoglog_hora: TTimeField;
    qryLoglog_nome_usuario: TWideStringField;
    qryLoglog_operacao: TWideStringField;
    qryLoglog_tabela: TWideStringField;
    dsLog: TDataSource;
    dsLogin: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    var Usuario, TipoUsuario: String;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Usuario;

{$R *.dfm}

end.

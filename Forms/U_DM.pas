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
    qryEnderecoendereco2: TWideStringField;
    qryEnderecoendereco3: TWideStringField;
    qryEndereconumero: TIntegerField;
    qryEnderecobairro: TWideStringField;
    qryEnderecotipo_endereco: TWideStringField;
    qryEnderecoprincipal: TBooleanField;
    qryEnderecocep: TWideStringField;
    qryEnderecoid_cidade: TIntegerField;
    qryEnderecoid_estado: TIntegerField;
    cdsEnderecoid_pessoa: TIntegerField;
    cdsEnderecoid_endereco: TAutoIncField;
    cdsEnderecoendereco1: TWideStringField;
    cdsEnderecoendereco2: TWideStringField;
    cdsEnderecoendereco3: TWideStringField;
    cdsEndereconumero: TIntegerField;
    cdsEnderecobairro: TWideStringField;
    cdsEnderecotipo_endereco: TWideStringField;
    cdsEnderecoprincipal: TBooleanField;
    cdsEnderecocep: TWideStringField;
    cdsEnderecoid_cidade: TIntegerField;
    cdsEnderecoid_estado: TIntegerField;
    qryEnderecoendereco1: TWideStringField;
    qryEnderecoid_endereco1: TIntegerField;
    qryEnderecoid_endereco2: TIntegerField;
    qryEnderecoid_endereco3: TIntegerField;
    cdsEnderecoid_endereco1: TIntegerField;
    cdsEnderecoid_endereco2: TIntegerField;
    cdsEnderecoid_endereco3: TIntegerField;
    qryPessoaid_pessoa: TFDAutoIncField;
    qryPessoanome: TWideStringField;
    qryPessoatelefone: TWideStringField;
    qryPessoarg: TWideStringField;
    qryPessoacpf: TWideStringField;
    qryPessoacnpj: TWideStringField;
    qryPessoaemail: TWideStringField;
    qryPessoaid_tipo_pessoa: TIntegerField;
    qryPessoastatus: TBooleanField;
    qryPessoacadastro: TDateField;
    cdsPessoaid_pessoa: TAutoIncField;
    cdsPessoanome: TWideStringField;
    cdsPessoatelefone: TWideStringField;
    cdsPessoarg: TWideStringField;
    cdsPessoacpf: TWideStringField;
    cdsPessoacnpj: TWideStringField;
    cdsPessoaemail: TWideStringField;
    cdsPessoaid_tipo_pessoa: TIntegerField;
    cdsPessoastatus: TBooleanField;
    cdsPessoacadastro: TDateField;
    cdsPessoacdsEndereco: TDataSetField;
    cdsPessoaqryEndereco: TDataSetField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Pessoa;

{$R *.dfm}

end.

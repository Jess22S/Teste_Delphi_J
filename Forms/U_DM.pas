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
    FDAutoIncField2: TFDAutoIncField;
    WideStringField3: TWideStringField;
    DateField3: TDateField;
    dspEndereco: TDataSetProvider;
    cdsEndereco: TClientDataSet;
    AutoIncField2: TAutoIncField;
    WideStringField4: TWideStringField;
    DateField4: TDateField;
    qryPessoaid_pessoa: TFDAutoIncField;
    qryPessoanome: TWideStringField;
    qryPessoatelefone: TWideStringField;
    qryPessoarg: TWideStringField;
    qryPessoacpf_cnpj: TWideStringField;
    qryPessoaemail: TWideStringField;
    qryPessoaid_tipo_pessoa: TIntegerField;
    qryPessoastatus: TBooleanField;
    qryPessoacadastro: TDateField;
    cdsPessoaid_pessoa: TAutoIncField;
    cdsPessoanome: TWideStringField;
    cdsPessoatelefone: TWideStringField;
    cdsPessoarg: TWideStringField;
    cdsPessoacpf_cnpj: TWideStringField;
    cdsPessoaemail: TWideStringField;
    cdsPessoaid_tipo_pessoa: TIntegerField;
    cdsPessoastatus: TBooleanField;
    cdsPessoacadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

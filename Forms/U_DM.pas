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
    qryEnderecoid_pessoa: TIntegerField;
    qryEnderecoid_endereco: TFDAutoIncField;
    qryEnderecoendereco: TWideStringField;
    qryEndereconumero: TIntegerField;
    qryEnderecobairro: TWideStringField;
    qryEnderecocep: TWideStringField;
    qryEnderecoid_cidade: TIntegerField;
    qryEnderecoid_estado: TIntegerField;
    cdsEnderecoid_pessoa: TIntegerField;
    cdsEnderecoid_endereco: TAutoIncField;
    cdsEnderecoendereco: TWideStringField;
    cdsEndereconumero: TIntegerField;
    cdsEnderecobairro: TWideStringField;
    cdsEnderecocep: TWideStringField;
    cdsEnderecoid_cidade: TIntegerField;
    cdsEnderecoid_estado: TIntegerField;
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
    procedure qryPessoacpf_cnpjChange(Sender: TField);
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

procedure TDM.qryPessoacpf_cnpjChange(Sender: TField);
begin
  if (PessoaF.DBRadioGroup1.ItemIndex = 0) then
  begin
    PessoaF.edtCPF_CNPJ.Clear;
    DM.qryPessoacpf_cnpj.EditMask := '###.###.###-##';
    PessoaF.edtCPF_CNPJ.Text := DM.qryPessoacpf_cnpj.EditMask;
  end
  else
  begin
    PessoaF.edtCPF_CNPJ.Clear;
    DM.qryPessoacpf_cnpj.EditMask := '##.###.###/####-##';
    PessoaF.edtCPF_CNPJ.Text := DM.qryPessoacpf_cnpj.EditMask;
  end;
end;

end.

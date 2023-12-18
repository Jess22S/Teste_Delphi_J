unit U_Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.Bind.Controls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, U_DM,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TPessoaF = class(TPadraoF)
    btnSair2: TBitBtn;
    dsEndereco: TDataSource;
    dsTipo_Pessoa: TDataSource;
    PageControl1: TPageControl;
    tsDadosPessoais: TTabSheet;
    lblID: TLabel;
    lblRG: TLabel;
    lblNome: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    lblCadastro: TLabel;
    lblTipoPessoa: TLabel;
    lblCPF: TLabel;
    Label9: TLabel;
    edtID: TDBEdit;
    edtRG: TDBEdit;
    edtNome: TDBEdit;
    edtTelefone: TDBEdit;
    edtEmail: TDBEdit;
    edtCadastro: TDBEdit;
    cmbTipoPessoa: TDBLookupComboBox;
    s: TDBGrid;
    cbAtivo: TDBCheckBox;
    edtCPF: TDBEdit;
    edtCNPJ: TDBEdit;
    tsEndereco: TTabSheet;
    lblEndereco: TLabel;
    lblNumero1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtEndereco: TDBEdit;
    edtNumero: TDBEdit;
    edtBairro: TDBEdit;
    edtCEP: TDBEdit;
    cmbUF: TDBLookupComboBox;
    cmbCidade: TDBLookupComboBox;
    Panel4: TPanel;
    rgTipo_Endereco: TDBRadioGroup;
    cbPrincipal: TDBCheckBox;
    grdCadEndereco: TDBGrid;
    btnNovoEndereco: TBitBtn;
    lblSexo: TLabel;
    lblEstado_Civil: TLabel;
    cmbSexo: TDBComboBox;
    cmbEstado_Civil: TDBComboBox;
    dsEstado: TDataSource;
    dsCidade: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoEnderecoClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarCampos;
    procedure DesabilitarCampos;
    procedure LimparCamposEndereco;
    procedure Qry_DesabilitaBotao(btnPadrao: TBitBtn);
  public
    { Public declarations }
  end;

var
  PessoaF: TPessoaF;

implementation

{$R *.dfm}

{ TPessoaF }

procedure TPessoaF.HabilitarCampos;
begin
  edtNome.Enabled              := True;
  edtRG.Enabled                := True;
  edtCPF.Enabled               := True;
  edtCNPJ.Enabled              := True;
  cmbTipoPessoa.Enabled        := True;
  cmbTipoPessoa.ListFieldIndex := 0;
  edtTelefone.Enabled          := True;
  edtEmail.Enabled             := True;
  edtEndereco.Enabled          := True;
  edtNumero.Enabled            := True;
  edtBairro.Enabled            := True;
  edtCEP.Enabled               := True;
  cmbCidade.Enabled            := True;
  cmbCidade.ListFieldIndex     := 0;
  cmbUF.Enabled                := True;
  cmbUF.ListFieldIndex         := 0;
  cbAtivo.Enabled              := True;
  cbAtivo.Checked              := True;
  rgTipo_Endereco.Enabled      := True;
  cbPrincipal.Enabled          := True;
  btnNovoEndereco.Enabled      := True;
  cmbSexo.Enabled              := True;
  cmbSexo.ItemIndex            := 0;
  cmbEstado_Civil.Enabled      := True;
  cmbSexo.ItemIndex            := 0;
end;

procedure TPessoaF.LimparCamposEndereco;
begin
  edtEndereco.Clear;
  edtNumero.Clear;
  edtBairro.Clear;
  edtCEP.Clear;
  cmbCidade.ListFieldIndex := 0;
  cmbUF.ListFieldIndex     := 0;
  cbPrincipal.Checked      := False;
end;

procedure TPessoaF.DesabilitarCampos;
begin
  edtNome.Enabled              := False;
  edtRG.Enabled                := False;
  edtCPF.Enabled               := False;
  edtCNPJ.Enabled              := False;
  cmbTipoPessoa.Enabled        := False;
  cmbTipoPessoa.ListFieldIndex := 0;
  edtTelefone.Enabled          := False;
  edtEmail.Enabled             := False;
  edtEndereco.Enabled          := False;
  edtNumero.Enabled            := False;
  edtBairro.Enabled            := False;
  edtCEP.Enabled               := False;
  cmbCidade.Enabled            := False;
  cmbCidade.ListFieldIndex     := 0;
  cmbUF.Enabled                := False;
  cmbUF.ListFieldIndex         := 0;
  cbAtivo.Enabled              := False;
  cbAtivo.Checked              := True;
  cbPrincipal.Enabled          := False;
  btnNovoEndereco.Enabled      := False;
  cmbSexo.Enabled              := False;
  cmbSexo.ItemIndex            := 0;
  cmbEstado_Civil.Enabled      := False;
  cmbSexo.ItemIndex            := 0;
end;

procedure TPessoaF.Qry_DesabilitaBotao(btnPadrao: TBitBtn);
begin
  if ((DM.qryUsuario.Active = False) or (DM.qryUsuario.IsEmpty)) then
  begin
    btnPadrao.Enabled := False;
  end;
end;

procedure TPessoaF.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DesabilitarCampos;

  DM.qryPessoa.Open;
  DM.qryEndereco.Open;

  DM.qryTipoPessoa.Open;
  DM.qryTipoPessoa.FetchAll;

  DM.qryEstados.Open;
  DM.qryEstados.FetchAll;

  DM.qryCidades.Open;
  DM.qryCidades.FetchAll;
end;

procedure TPessoaF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
    DM.qryPessoa.Open;
    DM.qryEndereco.Open;
    DM.qryTipoPessoa.Open;
    DM.qryEstados.Open;
    DM.qryCidades.Open;

    inherited;

    HabilitarCampos;
    DM.qryPessoa.Append;
    DM.qryTipoPessoa.Append;
    DM.qryEndereco.Append;
    DM.qryEstados.Append;
    DM.qryCidades.Append;
    DM.qryPessoa.Active;
    DM.qryEndereco.Active;
    DM.qryTipoPessoa.Active;
    DM.qryEstados.Active;
    DM.qryCidades.Active;

    DM.qryPessoa.Last;
    Prox := DM.qryPessoaid_pessoa.AsInteger + 1;
    DM.qryPessoa.Append;
    edtID.Text := IntToStr(Prox);
    DM.qryPessoaid_pessoa.AsInteger := Prox;

    PageControl1.ActivePageIndex    := 0;
    edtNome.SetFocus;
    DM.qryPessoacadastro.AsDateTime := Now;
    cmbTipoPessoa.ListFieldIndex    := 0;
    cmbCidade.ListFieldIndex        := 0;
    cmbUF.ListFieldIndex            := 0;

    edtCadastro.Enabled := False;
end;

procedure TPessoaF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TPessoaF.btnNovoEnderecoClick(Sender: TObject);
var
  Prox: Integer;
begin
    DM.qryEndereco.Last;
    Prox := DM.qryEnderecoid_endereco.AsInteger + 1;
    DM.qryEndereco.Append;
    DM.qryEnderecoid_endereco.AsInteger := Prox;

    edtEndereco.SetFocus;
    cbPrincipal.Checked      := False;
    cmbCidade.ListFieldIndex := 0;
    cmbUF.ListFieldIndex     := 0;

    edtCadastro.Enabled := False;
end;

procedure TPessoaF.btnEditarClick(Sender: TObject);
begin
  inherited;
  Qry_DesabilitaBotao(btnEditar);

  if (MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryPessoa.Edit;
    DM.qryEstados.Edit;
  end
  else
  begin
    Abort;
  end;

  DM.qryPessoa.Edit;
  DM.qryEstados.Edit;
  HabilitarCampos;
  btnAtualizar.Enabled := True;
end;

procedure TPessoaF.btnExcluirClick(Sender: TObject);
begin
  Qry_DesabilitaBotao(btnExcluir);

  if (MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryPessoa.Delete;
    DM.qryEstados.Delete;
    MessageDlg('Registro exclu�do com sucesso!', mtInformation, [mbOk], 0);
  end
  else
  begin
    Abort;
  end;

  DesabilitarCampos;
end;

procedure TPessoaF.btnAtualizarClick(Sender: TObject);
begin
  DM.qryPessoa.Refresh;
  DM.qryEstados.Refresh;
  inherited;
  DesabilitarCampos;
  Qry_DesabilitaBotao(btnAtualizar);
end;

procedure TPessoaF.btnCancelarClick(Sender: TObject);
begin
  DM.qryPessoa.Cancel;
  DM.qryEstados.Cancel;
  inherited;
  DesabilitarCampos;
  Qry_DesabilitaBotao(btnCancelar);
  Qry_DesabilitaBotao(btnExcluir);
  Qry_DesabilitaBotao(btnEditar);
end;
end.

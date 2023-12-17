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
    PageControl1: TPageControl;
    tsDadosPessoais: TTabSheet;
    tsEndereco: TTabSheet;
    lblID: TLabel;
    lblRG: TLabel;
    lblNome: TLabel;
    lblTelefone: TLabel;
    lblCPF_CNPJ: TLabel;
    lblEmail: TLabel;
    lblCadastro: TLabel;
    edtID: TDBEdit;
    edtRG: TDBEdit;
    edtNome: TDBEdit;
    edtTelefone: TDBEdit;
    edtCPF_CNPJ: TDBEdit;
    edtEmail: TDBEdit;
    edtCadastro: TDBEdit;
    edtEndereco1: TDBEdit;
    lblEndereco: TLabel;
    lblEndereco2: TLabel;
    edtEndereco2: TDBEdit;
    lblEndereco3: TLabel;
    edtEndereco3: TDBEdit;
    edtNumero1: TDBEdit;
    lblNumero1: TLabel;
    edtNumero2: TDBEdit;
    lblNumero2: TLabel;
    edtNumero3: TDBEdit;
    lblNumero3: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    edtBairro2: TDBEdit;
    edtCEP2: TDBEdit;
    cmbUF2: TDBLookupComboBox;
    cmbCidade2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtBairro1: TDBEdit;
    edtCEP1: TDBEdit;
    cmbUF1: TDBLookupComboBox;
    cmbCidade1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtBairro3: TDBEdit;
    edtCEP3: TDBEdit;
    cmbUF3: TDBLookupComboBox;
    cmbCidade3: TDBLookupComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    lblTipoPessoa: TLabel;
    cmbTipoPessoa: TDBLookupComboBox;
    dsTipo_Pessoa: TDataSource;
    grdPesquisar: TDBGrid;
    cbAtivo: TDBCheckBox;
    dsEstados: TDataSource;
    dsCidades: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarCampos;
    procedure DesabilitarCampos;
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
  edtCPF_CNPJ.Enabled          := True;
  cmbTipoPessoa.Enabled        := True;
  cmbTipoPessoa.ListFieldIndex := 0;
  edtTelefone.Enabled          := True;
  edtEmail.Enabled             := True;
  edtEndereco1.Enabled         := True;
  edtNumero1.Enabled           := True;
  edtBairro1.Enabled           := True;
  edtCEP1.Enabled              := True;
  cmbCidade1.Enabled           := True;
  cmbCidade1.ListFieldIndex    := 0;
  cmbUF1.Enabled               := True;
  cmbUF1.ListFieldIndex        := 0;
  edtEndereco2.Enabled         := True;
  edtNumero2.Enabled           := True;
  edtBairro2.Enabled           := True;
  edtCEP2.Enabled              := True;
  cmbCidade2.Enabled           := True;
  cmbCidade2.ListFieldIndex    := 0;
  cmbUF2.Enabled               := True;
  cmbUF2.ListFieldIndex        := 0;
  edtEndereco3.Enabled         := True;
  edtNumero3.Enabled           := True;
  edtBairro3.Enabled           := True;
  edtCEP3.Enabled              := True;
  cmbCidade3.Enabled           := True;
  cmbCidade3.ListFieldIndex    := 0;
  cmbUF3.Enabled               := True;
  cmbUF3.ListFieldIndex        := 0;
  cbAtivo.Enabled              := True;
  cbAtivo.Checked              := True;
end;

procedure TPessoaF.DesabilitarCampos;
begin
  edtNome.Enabled              := False;
  edtRG.Enabled                := False;
  edtCPF_CNPJ.Enabled          := False;
  cmbTipoPessoa.Enabled        := False;
  cmbTipoPessoa.ListFieldIndex := 0;
  edtTelefone.Enabled          := False;
  edtEmail.Enabled             := False;
  edtEndereco1.Enabled         := False;
  edtNumero1.Enabled           := False;
  edtBairro1.Enabled           := False;
  edtCEP1.Enabled              := False;
  cmbCidade1.Enabled           := False;
  cmbCidade1.ListFieldIndex    := 0;
  cmbUF1.Enabled               := False;
  cmbUF1.ListFieldIndex        := 0;
  edtEndereco2.Enabled         := False;
  edtNumero2.Enabled           := False;
  edtBairro2.Enabled           := False;
  edtCEP2.Enabled              := False;
  cmbCidade2.Enabled           := False;
  cmbCidade2.ListFieldIndex    := 0;
  cmbUF2.Enabled               := False;
  cmbUF2.ListFieldIndex        := 0;
  edtEndereco3.Enabled         := False;
  edtNumero3.Enabled           := False;
  edtBairro3.Enabled           := False;
  edtCEP3.Enabled              := False;
  cmbCidade3.Enabled           := False;
  cmbCidade3.ListFieldIndex    := 0;
  cmbUF3.Enabled               := False;
  cmbUF3.ListFieldIndex        := 0;
  cbAtivo.Enabled              := False;
  cbAtivo.Checked              := True;
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
  DM.qryEndereco.Append;
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

  PageControl1.ActivePageIndex := 0;
  edtNome.SetFocus;
  edtCadastro.Text             := DateToStr(Now);
  cmbTipoPessoa.ListFieldIndex := 0;
  cmbCidade1.ListFieldIndex    := 0;
  cmbCidade2.ListFieldIndex    := 0;
  cmbCidade3.ListFieldIndex    := 0;
  cmbUF1.ListFieldIndex        := 0;
  cmbUF2.ListFieldIndex        := 0;
  cmbUF3.ListFieldIndex        := 0;

  edtCadastro.Enabled := False;
end;

procedure TPessoaF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
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
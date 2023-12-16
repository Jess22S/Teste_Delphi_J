unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.Bind.Controls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TClienteF = class(TPadraoF)
    lblID: TLabel;
    lblNome: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    edtNumero: TDBEdit;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblCPF: TLabel;
    edtCPF: TDBEdit;
    lblEmail: TLabel;
    lblCadastro: TLabel;
    edtID: TDBEdit;
    edtNome: TDBEdit;
    edtEndereco: TDBEdit;
    edtBairro: TDBEdit;
    edtCadastro: TDBEdit;
    edtEmail: TDBEdit;
    cmbCidade: TDBLookupComboBox;
    cmbUF: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarCampos;
    procedure DesabilitarCampos;
  public
    { Public declarations }
  end;

var
  ClienteF: TClienteF;

implementation

{$R *.dfm}

uses U_LookUp;

{ TClienteF }

procedure TClienteF.DesabilitarCampos;
begin
  edtNome.Enabled := False;
  edtEndereco.Enabled := False;
  edtNumero.Enabled := False;
  edtBairro.Enabled := False;
  edtCEP.Enabled := False;
  cmbCidade.Enabled := False;
  cmbCidade.ListFieldIndex := 0;
  cmbUF.Enabled := False;
  cmbUF.ListFieldIndex := 0;
  edtTelefone.Enabled := False;
  edtCPF.Enabled := False;
  edtCadastro.Enabled := False;
  edtEmail.Enabled := False;
end;

procedure TClienteF.HabilitarCampos;
begin
  edtNome.Enabled := True;
  edtEndereco.Enabled := True;
  edtNumero.Enabled := True;
  edtBairro.Enabled := True;
  edtCEP.Enabled := True;
  cmbCidade.Enabled := True;
  cmbCidade.ListFieldIndex := 0;
  cmbUF.Enabled := True;
  cmbUF.ListFieldIndex := 0;
  edtTelefone.Enabled := True;
  edtCPF.Enabled := True;
  edtCadastro.Enabled := True;
  edtEmail.Enabled := True;
end;

procedure TClienteF.FormShow(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
  LookUp.qryEstados.Open();
  LookUp.qryEstados.FetchAll;

  LookUp.qryCidades.Open();
  LookUp.qryCidades.FetchAll;
end;

procedure TClienteF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
  inherited;
  HabilitarCampos;

//  qryPadrao.Active;
//  qryPadrao.Last;
//  Prox := qryPadraoid_cliente.AsInteger + 1;
//  qryPadrao.Append;
//  edtID.Text := IntToStr(Prox);
//  qryPadraoid_cliente.AsInteger := StrToInt(edtID.Text);

  edtNome.SetFocus;
  edtCadastro.Text := DateToStr(Now);
  edtCadastro.Enabled := False;
end;

procedure TClienteF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TClienteF.btnEditarClick(Sender: TObject);
begin
  inherited;
  HabilitarCampos;
  btnAtualizar.Enabled := True;
end;

procedure TClienteF.btnExcluirClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TClienteF.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TClienteF.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

end.

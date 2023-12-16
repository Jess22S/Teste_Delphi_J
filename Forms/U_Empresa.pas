unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.Bind.Controls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TEmpresaF = class(TPadraoF)
    lblID: TLabel;
    edtID: TDBEdit;
    lblRazaoSocial: TLabel;
    edtRazao_Social: TDBEdit;
    lblNomeFantasia: TLabel;
    edtNome_Fantasia: TDBEdit;
    lblEndereco: TLabel;
    edtEndereco: TDBEdit;
    lblNumero: TLabel;
    edtNumero: TDBEdit;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblCNPJ: TLabel;
    edtCNPJ: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    lblLogo: TLabel;
    lblCadastro: TLabel;
    edtCadastro: TDBEdit;
    btnSair2: TBitBtn;
    cmbUF: TDBLookupComboBox;
    cmbCidade: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFotoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarCampos;
    procedure DesabilitarCampos;
  public
    { Public declarations }
  end;

var
  EmpresaF: TEmpresaF;

implementation

{$R *.dfm}

uses U_LookUp;

{ TEmpresaF }

procedure TEmpresaF.HabilitarCampos;
begin
  edtRazao_Social.Enabled := True;
  edtCNPJ.Enabled := True;
  edtNome_Fantasia.Enabled := True;
  edtEndereco.Enabled := True;
  edtNumero.Enabled := True;
  edtBairro.Enabled := True;
  edtCEP.Enabled := True;
  cmbCidade.Enabled := True;
  cmbCidade.ListFieldIndex := 0;
  cmbUF.Enabled := True;
  cmbUF.ListFieldIndex := 0;
  edtTelefone.Enabled := True;
  edtEmail.Enabled := True;
end;

procedure TEmpresaF.DesabilitarCampos;
begin
  edtRazao_Social.Enabled := False;
  edtCNPJ.Enabled := False;
  edtNome_Fantasia.Enabled := False;
  edtEndereco.Enabled := False;
  edtNumero.Enabled := False;
  edtBairro.Enabled := False;
  edtCEP.Enabled := False;
  cmbCidade.Enabled := False;
  cmbCidade.ListFieldIndex := 0;
  cmbUF.Enabled := False;
  cmbUF.ListFieldIndex := 0;
  edtTelefone.Enabled := False;
  edtEmail.Enabled := False;
end;

procedure TEmpresaF.FormShow(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
  LookUp.qryEstados.Open();
  LookUp.qryEstados.FetchAll;

  LookUp.qryCidades.Open();
  LookUp.qryCidades.FetchAll;
end;

procedure TEmpresaF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
  inherited;
  HabilitarCampos;

//  qryPadrao.Active;
//  qryPadrao.Last;
//  Prox := qryPadraoid_empresa.AsInteger + 1;
//  qryPadrao.Append;
//  edtID.Text := IntToStr(Prox);
//  qryPadraoid_empresa.AsInteger := Prox;

  edtRazao_Social.SetFocus;
  edtCadastro.Text := DateToStr(Now);
  cmbUF.ListFieldIndex := 0;
  edtCadastro.Enabled := False;
end;

procedure TEmpresaF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TEmpresaF.btnEditarClick(Sender: TObject);
begin
  inherited;
//  qryPadrao.Edit;
  HabilitarCampos;
  btnAtualizar.Enabled := True;
end;

procedure TEmpresaF.btnExcluirClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TEmpresaF.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TEmpresaF.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TEmpresaF.btnFotoClick(Sender: TObject);
begin
  // Insere Foto
//  qryPadrao.Edit;
//  OpenDialog1.Execute;
//  imgLogo.Picture.LoadFromFile(OpenDialog1.FileName);
//  qryPadrao.Refresh;
  MessageDlg('Imagem inserida com sucesso!', mtInformation, [mbOk], 0);
end;

procedure TEmpresaF.btnLimparClick(Sender: TObject);
begin
  // Apaga Foto
//  qryPadrao.Edit;
//  qryPadraologo.AsVariant := Null;
//  qryPadrao.Refresh;
  MessageDlg('Imagem apagada com sucesso!', mtInformation, [mbOk], 0);
end;

end.

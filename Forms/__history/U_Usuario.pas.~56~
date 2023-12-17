unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.Bind.Controls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.StdCtrls, Vcl.ExtCtrls, U_DM, Vcl.Mask, Vcl.DBCtrls;

type
  TUsuarioF = class(TPadraoF)
    lblID: TLabel;
    edtID: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblSemha: TLabel;
    edtSenha: TDBEdit;
    lblTipo: TLabel;
    lblCadastro: TLabel;
    edtCadastro: TDBEdit;
    cmbTipo: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarCampos;
    procedure DesabilitarCampos;
    procedure Qry_DesabilitaBotao(btnPadrao: TBitBtn);
  public
    { Public declarations }
  end;

var
  UsuarioF: TUsuarioF;

implementation

{$R *.dfm}

procedure TUsuarioF.DesabilitarCampos;
begin
  edtNome.Enabled  := False;
  edtSenha.Enabled := False;
  cmbTipo.Enabled  := False;
end;

procedure TUsuarioF.HabilitarCampos;
begin
  edtNome.Enabled  := True;
  edtSenha.Enabled := True;
  cmbTipo.Enabled  := True;
end;

procedure TUsuarioF.Qry_DesabilitaBotao(btnPadrao: TBitBtn);
begin
  if ((DM.qryUsuario.Active = False) or (DM.qryUsuario.IsEmpty)) then
  begin
    btnPadrao.Enabled := False;
  end;
end;

procedure TUsuarioF.FormShow(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TUsuarioF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
  DM.qryUsuario.Open;
  inherited;
  HabilitarCampos;
  DM.qryUsuario.Append;
  DM.qryUsuario.Active;
  DM.qryUsuario.Last;
  Prox := DM.qryUsuarioid_usuario.AsInteger + 1;
  DM.qryUsuario.Append;
  edtID.Text := IntToStr(Prox);
  DM.qryUsuarioid_usuario.AsInteger := Prox;

  edtNome.SetFocus;
  edtCadastro.Text    := DateToStr(Now);
  edtCadastro.Enabled := False;
end;

procedure TUsuarioF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TUsuarioF.btnEditarClick(Sender: TObject);
begin
  inherited;
  Qry_DesabilitaBotao(btnEditar);

  if (MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryUsuario.Edit;
  end
  else
  begin
    Abort;
  end;

  HabilitarCampos;
  btnAtualizar.Enabled := True;
end;

procedure TUsuarioF.btnExcluirClick(Sender: TObject);
begin
  Qry_DesabilitaBotao(btnExcluir);

  if (MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryUsuario.Delete;
    MessageDlg('Registro excluído com sucesso!', mtInformation, [mbOk], 0);
  end
  else
  begin
    Abort;
  end;

  DesabilitarCampos;
end;

procedure TUsuarioF.btnAtualizarClick(Sender: TObject);
begin
  DM.qryUsuario.Refresh;
  inherited;
  DesabilitarCampos;
  Qry_DesabilitaBotao(btnAtualizar);
end;

procedure TUsuarioF.btnCancelarClick(Sender: TObject);
begin
  DM.qryUsuario.Cancel;
  inherited;
  DesabilitarCampos;
  Qry_DesabilitaBotao(btnCancelar);
  Qry_DesabilitaBotao(btnExcluir);
  Qry_DesabilitaBotao(btnEditar);
end;
end.

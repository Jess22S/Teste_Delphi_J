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
    procedure LimparCampos;
    procedure Qry_DesabilitaBotao(btnPadrao: TBitBtn);
    procedure Incluir;
    procedure Alterar;
    procedure Excluir;
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
  edtNome.Enabled   := True;
  edtSenha.Enabled  := True;
  cmbTipo.Enabled   := True;
  cmbTipo.ItemIndex := 0;
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

procedure TUsuarioF.LimparCampos;
begin
  edtNome.Clear;
  edtSenha.Clear;
end;

procedure TUsuarioF.Incluir;
begin
  DM.qryLog.Open;
  DM.qryLog.Active;
  DM.qryLog.Insert;
  DM.qryLoglog_data.Value            := Date;
  DM.qryLoglog_hora.Value            := Time;
  DM.qryLoglog_nome_usuario.AsString := DM.Usuario;
  DM.qryLoglog_tabela.Value          := 'Usu�rio';
  DM.qryLoglog_operacao.Value        := 'Incluiu';
  DM.qryLog.Post;
  DM.qryUsuario.Append;
  DM.qryUsuariocadastro.Value        := Date;
  LimparCampos;
end;

procedure TUsuarioF.Alterar;
begin
  DM.qryLog.Open;
  DM.qryLog.Active;
  DM.qryLog.Edit;
  DM.qryLoglog_data.Value            := Date;
  DM.qryLoglog_hora.Value            := Time;
  DM.qryLoglog_nome_usuario.AsString := DM.Usuario;
  DM.qryLoglog_tabela.Value          := 'Usu�rio';
  DM.qryLoglog_operacao.Value        := 'Alterou';
  DM.qryLog.Post;
  DM.qryUsuario.Append;
  DM.qryUsuariocadastro.Value        := Date;
  LimparCampos;
end;

procedure TUsuarioF.Excluir;
begin
  DM.qryLog.Open;
  DM.qryLog.Active;
  DM.qryLog.Edit;
  DM.qryLoglog_data.Value            := Date;
  DM.qryLoglog_hora.Value            := Time;
  DM.qryLoglog_nome_usuario.AsString := DM.Usuario;
  DM.qryLoglog_tabela.AsString       := 'Usu�rio';
  DM.qryLoglog_operacao.AsString     := 'Excluiu';
  DM.qryLog.Post;
  DM.qryUsuario.Append;
  DM.qryUsuariocadastro.Value        := Date;
  LimparCampos;
end;

procedure TUsuarioF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
  DM.qryUsuario.Open;
  inherited;
  LimparCampos;
  HabilitarCampos;
  DM.qryUsuario.Append;
  DM.qryUsuario.Active;
  DM.qryUsuario.Last;
  Prox := DM.qryUsuarioid_usuario.AsInteger + 1;
  DM.qryUsuario.Append;
  edtID.Text := IntToStr(Prox);
  DM.qryUsuarioid_usuario.AsInteger := Prox;

  edtNome.SetFocus;
  DM.qryUsuariocadastro.AsDateTime := Now;
  edtCadastro.Enabled              := False;
end;

procedure TUsuarioF.btnGravarClick(Sender: TObject);
var
  NomeDoLog: String;
  Arquivo: TextFile;
begin
  inherited;
  DesabilitarCampos;

  NomeDoLog := 'C:\Users\J�ssica\Documents\J�ssica\Programa - Teste Delphi\Teste_Delphi_J\Log\Gravado.txt';
  AssignFile(Arquivo, NomeDoLog);

  if (FileExists(NomeDoLog)) then
  begin
    Append(Arquivo);
  end
  else
  begin
    Rewrite(Arquivo);
  end;

  try
    Incluir;
    Writeln(Arquivo, '----------------------------');
    Writeln(Arquivo, 'Log de Inclus�o de Registros');
    Writeln(Arquivo, 'Data: ' + DateToStr(DM.qryLoglog_data.Value));
    Writeln(Arquivo, 'Hora: ' + TimeToStr(DM.qryLoglog_hora.Value));
    Writeln(Arquivo, 'Usu�rio: ' + DM.qryLoglog_nome_usuario.AsString);
    Writeln(Arquivo, 'Tabela: ' + DM.qryLoglog_tabela.AsString) ;
    Writeln(Arquivo, 'Opera��o: ' + DM.qryLoglog_operacao.AsString);
    Writeln(Arquivo, '----------------------------');
  finally
    CloseFile(Arquivo);
  end;
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
var
  NomeDoLog: String;
  Arquivo: TextFile;
begin
  Qry_DesabilitaBotao(btnExcluir);

  if (MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryUsuario.Delete;
    MessageDlg('Registro exclu�do com sucesso!', mtInformation, [mbOk], 0);
  end
  else
  begin
    Abort;
  end;

  NomeDoLog := 'C:\Users\J�ssica\Documents\J�ssica\Programa - Teste Delphi\Teste_Delphi_J\Log\Excluido.txt';
  AssignFile(Arquivo, NomeDoLog);

  if (FileExists(NomeDoLog)) then
  begin
    Append(Arquivo);
  end
  else
  begin
    Rewrite(Arquivo);
  end;

  if (FileExists(NomeDoLog)) then
  begin
    Append(Arquivo);
  end
  else
  begin
    Rewrite(Arquivo);
  end;

  try
    Excluir;
    Writeln(Arquivo, '----------------------------');
    Writeln(Arquivo, 'Log de Exclus�o de Registros');
    Writeln(Arquivo, 'Data: ' + DateToStr(DM.qryLoglog_data.Value));
    Writeln(Arquivo, 'Hora: ' + TimeToStr(DM.qryLoglog_hora.Value));
    Writeln(Arquivo, 'Usu�rio: ' + DM.qryLoglog_nome_usuario.AsString);
    Writeln(Arquivo, 'Tabela: ' + DM.qryLoglog_tabela.AsString) ;
    Writeln(Arquivo, 'Opera��o: ' + DM.qryLoglog_operacao.AsString);
    Writeln(Arquivo, '----------------------------');
  finally
    CloseFile(Arquivo);
  end;

  DesabilitarCampos;
end;

procedure TUsuarioF.btnAtualizarClick(Sender: TObject);
var
  NomeDoLog: String;
  Arquivo: TextFile;
begin
  DM.qryUsuario.Refresh;
  inherited;
  DesabilitarCampos;
  Qry_DesabilitaBotao(btnAtualizar);

  NomeDoLog := 'C:\Users\J�ssica\Documents\J�ssica\Programa - Teste Delphi\Teste_Delphi_J\Log\Alterado.txt';
  AssignFile(Arquivo, NomeDoLog);

  if (FileExists(NomeDoLog)) then
  begin
    Append(Arquivo);
  end
  else
  begin
    Rewrite(Arquivo);
  end;

  try
    Alterar;
    Writeln(Arquivo, '----------------------------');
    Writeln(Arquivo, 'Log de Altera��o de Registros');
    Writeln(Arquivo, 'Data: ' + DateToStr(DM.qryLoglog_data.Value));
    Writeln(Arquivo, 'Hora: ' + TimeToStr(DM.qryLoglog_hora.Value));
    Writeln(Arquivo, 'Usu�rio: ' + DM.qryLoglog_nome_usuario.AsString);
    Writeln(Arquivo, 'Tabela: ' + DM.qryLoglog_tabela.AsString) ;
    Writeln(Arquivo, 'Opera��o: ' + DM.qryLoglog_operacao.AsString);
    Writeln(Arquivo, '----------------------------');
  finally
    CloseFile(Arquivo);
  end;
end;

procedure TUsuarioF.btnCancelarClick(Sender: TObject);
begin
  DM.qryUsuario.Cancel;

  inherited;
  DesabilitarCampos;
  LimparCampos;

  Qry_DesabilitaBotao(btnCancelar);
  Qry_DesabilitaBotao(btnExcluir);
  Qry_DesabilitaBotao(btnEditar);
end;
end.

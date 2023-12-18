unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TLoginF = class(TForm)
    Panel1: TPanel;
    imgLogo: TImage;
    edtUsuario: TDBEdit;
    edtSenha: TDBEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    btnEntrar: TBitBtn;
    lblTipo: TLabel;
    cmbTipo: TDBComboBox;
    btnCancelar: TBitBtn;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  LoginF: TLoginF;

implementation

{$R *.dfm}

uses U_DM, U_Principal;

procedure TLoginF.LimparCampos;
begin
  edtUsuario.Clear;
  edtSenha.Clear;
  cmbTipo.ItemIndex := 0;
end;

procedure TLoginF.FormShow(Sender: TObject);
begin
  DM.qryLogin.Open;
  LimparCampos;

  if (not (DM.qryLogin.Active)) then
  begin
    DM.qryLogin.Active;
  end;
end;

procedure TLoginF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TLoginF.btnEntrarClick(Sender: TObject);
begin
   DM.qryLogin.Close;
   DM.qryLogin.SQL.Add('');
   DM.qryLogin.SQL.Clear;
   DM.qryLogin.Params.Clear;
   DM.qryLogin.SQL.Add(
      'SELECT ' +
      ' ID_USUARIO, ' +
      ' NOME, ' +
      ' SENHA, ' +
      ' TIPO ' +
      ' FROM USUARIO ' +
      ' WHERE NOME = :pNome ' +
      ' AND SENHA  = :pSenha ' +
      ' AND TIPO   = :pTipo');

   DM.qryLogin.ParamByName('PNOME').AsString  := edtUsuario.Text;
   DM.qryLogin.ParamByName('PSENHA').AsString := edtUsuario.Text;
   DM.qryLogin.ParamByName('PTIPO').AsString  := cmbTipo.Text;
   DM.qryLogin.Open;

   if (edtUsuario.Text = EmptyStr) then
   begin
      ShowMessage('Favor Preencha o Usu�rio!');
      edtUsuario.SetFocus;
      Exit;
   end;

   if (edtSenha.Text = EmptyStr) then
   begin
      ShowMessage('Favor Preencha a Senha!');
      edtSenha.SetFocus;
      Exit;
   end;

   if (cmbTipo.Text = EmptyStr) then
   begin
      ShowMessage('Favor Preencha o Tipo!');
      edtSenha.SetFocus;
      Exit;
   end;

   if DM.qryLogin.RecordCount = 0 then
   Begin
      MessageDlg('Senha ou Usu�rio incorretos!', mtInformation, [mbOk], 0);
      edtUsuario.SetFocus;
   end
   else
   begin
     if (cmbTipo.Text = 'Administrador') then
     begin
       PrincipalF.btnUsuario.Visible := True;
     end
     else
     begin
       PrincipalF.btnUsuario.Visible := False;
     end;

     MessageDlg('Seja bem vindo ' + edtUsuario.Text + '', mtInformation, [mbOk], 0);
     PrincipalF:= TPrincipalF.create(Self);
     PrincipalF.ShowModal;
     LoginF.Hide;
   end;
end;

procedure TLoginF.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // FAZ A TECLA ENTER TER A MESMA FUN��O DA TECLA TAB
  if (Key = #13) then
  begin
    Key := #0;
    Perform(wm_nextDlgCtl, 0, 0);
  end;

  // A TECLA ESC SAI DA TELA
  if (Key = #27) then
  begin
    Close;
  end;
end;
end.
unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus, U_Pessoa;

type
  TPrincipalF = class(TForm)
    Panel1: TPanel;
    btnPessoa: TSpeedButton;
    btnTipoPessoa: TSpeedButton;
    btnUsuario: TSpeedButton;
    btnFechar: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    mmUsuario: TMenuItem;
    mmPessoa: TMenuItem;
    mmTipoPessoa: TMenuItem;
    mmSobreoSistema: TMenuItem;
    mmSair: TMenuItem;
    mmFechar: TMenuItem;
    Panel2: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure mmSairClick(Sender: TObject);
    procedure btnPessoaClick(Sender: TObject);
    procedure btnTipoPessoaClick(Sender: TObject);
    procedure mmUsuarioClick(Sender: TObject);
    procedure mmPessoaClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure mmTipoPessoaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalF: TPrincipalF;

implementation

{$R *.dfm}

uses U_Usuario, U_Tipo_Pessoa, U_DM;

procedure TPrincipalF.btnUsuarioClick(Sender: TObject);
begin
  if (not (Assigned(UsuarioF))) then
  begin
    UsuarioF := TUsuarioF.Create(Self);
  end;

  UsuarioF.Show;
end;

procedure TPrincipalF.btnPessoaClick(Sender: TObject);
begin
  if (not (Assigned(UsuarioF))) then
  begin
    PessoaF := TPessoaF.Create(Self);
  end;

  PessoaF.Show;
end;

procedure TPrincipalF.btnTipoPessoaClick(Sender: TObject);
begin
  if (not (Assigned(UsuarioF))) then
  begin
    Tipo_PessoaF := TTipo_PessoaF.Create(Self);
  end;

  Tipo_PessoaF.Show;
end;

procedure TPrincipalF.btnFecharClick(Sender: TObject);
begin
 if (MessageDlg('Deseja sair do Sistema?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    Application.Terminate;
  end
  else
  begin
    Abort;
  end;
end;

procedure TPrincipalF.mmTipoPessoaClick(Sender: TObject);
begin
  btnTipoPessoa.Click;
end;

procedure TPrincipalF.mmPessoaClick(Sender: TObject);
begin
  btnPessoa.Click;
end;

procedure TPrincipalF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // A TECLA ESC SAI DA TELA
  if (Key = #27) then
  begin
    btnFechar.Click;
  end;
end;

procedure TPrincipalF.mmSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPrincipalF.Timer1Timer(Sender: TObject);
begin
  // INSERE DADOS NO STATUSBAR
  StatusBar1.Panels[0].Text := DateToStr(now);
  StatusBar1.Panels[1].Text := TimeToStr(now);
  StatusBar1.Panels[2].Text := 'SEJA BEM-VINDO AO SISTEMA Sr(a): ' + DM.Usuario;
  StatusBar1.Panels[3].Text := 'TIPO DE USUÁRIO: ' + DM.TipoUsuario;
end;

procedure TPrincipalF.mmUsuarioClick(Sender: TObject);
begin
  btnUsuario.Click;
end;
end.

unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TPrincipalF = class(TForm)
    Panel1: TPanel;
    btnUsuario: TSpeedButton;
    btnPessoa: TSpeedButton;
    btnTipoPessoa: TSpeedButton;
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
    procedure Timer1Timer(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure mmSairClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnPessoaClick(Sender: TObject);
    procedure mmUsuarioClick(Sender: TObject);
    procedure mmPessoaClick(Sender: TObject);
    procedure btnTipoPessoaClick(Sender: TObject);
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

uses U_Usuario, U_Empresa, U_Cliente;

procedure TPrincipalF.btnTipoPessoaClick(Sender: TObject);
begin
  ClienteF := TClienteF.Create(Self);
  ClienteF.ShowModal;

  try
    //
  finally
    ClienteF.Free;
    ClienteF := Nil;
  end;
end;

procedure TPrincipalF.btnPessoaClick(Sender: TObject);
begin
  EmpresaF := TEmpresaF.Create(Self);
  EmpresaF.ShowModal;

  try
    //
  finally
    EmpresaF.Free;
    EmpresaF := Nil;
  end;
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

procedure TPrincipalF.btnUsuarioClick(Sender: TObject);
begin
  UsuarioF := TUsuarioF.Create(Self);
  UsuarioF.ShowModal;

  try
    //
  finally
    UsuarioF.Free;
    UsuarioF := Nil;
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
  StatusBar1.Panels[2].Text := 'SEJA BEM-VINDO AO SISTEMA';
end;

procedure TPrincipalF.mmUsuarioClick(Sender: TObject);
begin
  btnUsuario.Click;
end;

end.

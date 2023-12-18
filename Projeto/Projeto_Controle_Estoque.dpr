program Projeto_Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {PrincipalF},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {PadraoF},
  U_Usuario in '..\Forms\U_Usuario.pas' {UsuarioF},
  U_Pessoa in '..\Forms\U_Pessoa.pas' {PessoaF},
  U_Tipo_Pessoa in '..\Forms\U_Tipo_Pessoa.pas' {Tipo_PessoaF},
  U_Login in '..\Forms\U_Login.pas' {LoginF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TLoginF, LoginF);
  Application.Run;
end.

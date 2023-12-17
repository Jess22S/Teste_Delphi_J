program Projeto_Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {PrincipalF},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {PadraoF},
  U_Usuario in '..\Forms\U_Usuario.pas' {UsuarioF},
  U_Pessoa in '..\Forms\U_Pessoa.pas' {PessoaF},
  U_Cliente in '..\Forms\U_Cliente.pas' {ClienteF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalF, PrincipalF);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

program Projeto_Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {PrincipalF},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {PadraoF},
  U_Usuario in '..\Forms\U_Usuario.pas' {UsuarioF},
  U_Empresa in '..\Forms\U_Empresa.pas' {EmpresaF},
  U_LookUp in '..\Compartilhamento\U_LookUp.pas' {LookUp: TDataModule},
  U_Cliente in '..\Forms\U_Cliente.pas' {ClienteF},
  U_PesquisaPadrao in '..\Forms\U_PesquisaPadrao.pas' {Pesquisa_PadraoF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalF, PrincipalF);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TLookUp, LookUp);
  Application.Run;
end.

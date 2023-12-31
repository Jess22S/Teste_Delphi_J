unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.Bind.Controls, Vcl.Bind.Navigator, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TPadraoF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAtualizar: TBitBtn;
    btnPesquisar: TBitBtn;
    dsPadrao: TDataSource;
    Panel3: TPanel;
    btnSair: TBitBtn;
    BindNavigator1: TBindNavigator;
    BindSourceDB1: TBindSourceDB;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarBotoes;
    procedure DesabilitarBotoes;
  public
    { Public declarations }
  end;

var
  PadraoF: TPadraoF;

implementation

{$R *.dfm}

uses U_DM;

procedure TPadraoF.HabilitarBotoes;
begin
  btnNovo.Enabled      := True;
  btnExcluir.Enabled   := True;
  btnEditar.Enabled    := True;
  btnGravar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnAtualizar.Enabled := False;
  btnPesquisar.Enabled := True;
end;

procedure TPadraoF.DesabilitarBotoes;
begin
  btnNovo.Enabled      := False;
  btnEditar.Enabled    := False;
  btnExcluir.Enabled   := False;
  btnPesquisar.Enabled := False;
  btnCancelar.Enabled  := True;
end;

procedure TPadraoF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPadraoF.btnNovoClick(Sender: TObject);
begin
  DesabilitarBotoes;
  btnGravar.Enabled      := True;
  btnAtualizar.Enabled   := False; 
end;

procedure TPadraoF.btnPesquisarClick(Sender: TObject);
begin
  HabilitarBotoes;
end;

procedure TPadraoF.btnEditarClick(Sender: TObject);
begin       
  DesabilitarBotoes;
  btnGravar.Enabled := False;
  btnAtualizar.Enabled := True; 
end;

procedure TPadraoF.btnExcluirClick(Sender: TObject);
begin
  MessageDlg('Registro exclu�do com sucesso!', mtInformation, [mbOk], 0);
  HabilitarBotoes;
end;

procedure TPadraoF.btnGravarClick(Sender: TObject);
begin
  MessageDlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
  HabilitarBotoes;
end;   

procedure TPadraoF.btnAtualizarClick(Sender: TObject);
begin
  MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOk], 0);
  HabilitarBotoes;
end;

procedure TPadraoF.btnCancelarClick(Sender: TObject);
begin
  MessageDlg('A��o cancelada pelo usu�rio!', mtInformation, [mbOk], 0);
  HabilitarBotoes;
end;

procedure TPadraoF.btnSairClick(Sender: TObject);
begin
  Close;
end; 
end.

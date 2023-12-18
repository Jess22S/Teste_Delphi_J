unit U_Tipo_Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.Bind.Controls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, U_DM;

type
  TTipo_PessoaF = class(TPadraoF)
    lblID: TLabel;
    lblNome: TLabel;
    lblCadastro: TLabel;
    edtID: TDBEdit;
    edtNome: TDBEdit;
    edtCadastro: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
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
  Tipo_PessoaF: TTipo_PessoaF;

implementation

{$R *.dfm}

{ TTipo_PessoaF }

procedure TTipo_PessoaF.DesabilitarCampos;
begin
  edtNome.Enabled     := False;
  edtCadastro.Enabled := False;
end;

procedure TTipo_PessoaF.HabilitarCampos;
begin
  edtNome.Enabled := True;
end;

procedure TTipo_PessoaF.Qry_DesabilitaBotao(btnPadrao: TBitBtn);
begin
  if ((DM.qryUsuario.Active = False) or (DM.qryUsuario.IsEmpty)) then
  begin
    btnPadrao.Enabled := False;
  end;
end;

procedure TTipo_PessoaF.FormShow(Sender: TObject);
begin
  DM.qryTipoPessoa.Close;
  DesabilitarCampos;
end;

procedure TTipo_PessoaF.btnNovoClick(Sender: TObject);
var
  Prox: Integer;
begin
  DM.qryTipoPessoa.Open;

  inherited;

  HabilitarCampos;
  DM.qryTipoPessoa.Active;
  DM.qryTipoPessoa.Last;
  Prox := DM.qryTipoPessoaid_tipo_pessoa.AsInteger + 1;
  DM.qryTipoPessoa.Append;
  edtID.Text := IntToStr(Prox);
  DM.qryTipoPessoaid_tipo_pessoa.AsInteger := Prox;

  edtNome.SetFocus;
  DM.qryTipoPessoacadastro.AsDateTime := Now;
  edtCadastro.Enabled:= False;
end;

procedure TTipo_PessoaF.btnGravarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TTipo_PessoaF.btnEditarClick(Sender: TObject);
begin
  inherited;
  HabilitarCampos;
  btnAtualizar.Enabled := True;
end;

procedure TTipo_PessoaF.btnExcluirClick(Sender: TObject);
begin
   Qry_DesabilitaBotao(btnExcluir);

  if (MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk) then
  begin
    DM.qryTipoPessoa.Delete;
    MessageDlg('Registro exclu�do com sucesso!', mtInformation, [mbOk], 0);
  end
  else
  begin
    Abort;
  end;

  DesabilitarCampos;
end;

procedure TTipo_PessoaF.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;

procedure TTipo_PessoaF.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DesabilitarCampos;
end;
end.

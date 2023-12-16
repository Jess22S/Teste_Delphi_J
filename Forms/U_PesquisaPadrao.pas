unit U_PesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ppFormWrapper, ppRptExp, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer, ppParameter, fcxDataSource,
  ppDB, ppDBPipe, ppBands, ppCache;

type
  TPesquisa_PadraoF = class(TForm)
    Panel1: TPanel;
    lblOpcoes_Pesquisa: TLabel;
    lblNome: TLabel;
    cmbChave_Pesquisa: TComboBox;
    edtNome: TEdit;
    edtInicio: TMaskEdit;
    edtFim: TMaskEdit;
    lblInicio: TLabel;
    lblFim: TLabel;
    grdPesq_Padrao: TDBGrid;
    Panel2: TPanel;
    btnTransferir: TBitBtn;
    btnPesquisar: TBitBtn;
    btnImprimir: TBitBtn;
    qryPesq_Padrao: TFDQuery;
    dsPesq_Padrao: TDataSource;
    Panel3: TPanel;
    btnSair: TBitBtn;
    frxDB_Pesq_Padrao: TppDBPipeline;
    REL_Pesq_Padrao: TppReport;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmbChave_PesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo: Integer;
  end;

var
  Pesquisa_PadraoF: TPesquisa_PadraoF;

implementation

{$R *.dfm}

procedure TPesquisa_PadraoF.FormShow(Sender: TObject);
begin
  qryPesq_Padrao.Close;
end;

procedure TPesquisa_PadraoF.cmbChave_PesquisaChange(Sender: TObject);
begin
  if (cmbChave_Pesquisa.Text <> EmptyStr) then
  begin
    btnPesquisar.Enabled  := True;
    btnTransferir.Enabled := True;
    btnImprimir.Enabled   := True;
  end;


  case (cmbChave_Pesquisa.ItemIndex) of
      0: // PESQUISA O C�DIGO
      begin
        qryPesq_Padrao.Close;
        edtNome.NumbersOnly := True;
        edtNome.Visible     := True;
        lblNome.Visible     := True;
        edtInicio.Visible   := False;
        lblInicio.Visible   := False;
        edtFim.Visible      := False;
        lblFim.Visible      := False;
        edtNome.Clear;
        edtNome.SetFocus;
      end;

      1: // PESQUISA O NOME
      begin
        qryPesq_Padrao.Close;
        edtNome.NumbersOnly := False;
        edtNome.Visible     := True;
        lblNome.Visible     := True;
        edtInicio.Visible   := False;
        lblInicio.Visible   := False;
        edtFim.Visible      := False;
        lblFim.Visible      := False;
        edtNome.Clear;
        edtNome.SetFocus;
      end;

      2: // PESQUISA PELA DATA
      begin
      qryPesq_Padrao.Close;
        edtInicio.Visible := True;
        lblInicio.Visible := True;
        edtNome.Visible   := False;
        lblNome.Visible   := False;
        edtFim.Visible    := False;
        lblFim.Visible    := False;
        edtInicio.Clear;
        edtInicio.SetFocus;
      end;

      3: // PESQUISA PELA PER�ODO
      begin
        qryPesq_Padrao.Close;
        edtInicio.Visible := True;
        lblInicio.Visible := True;
        edtFim.Visible    := True;
        lblFim.Visible    := True;
        edtNome.Visible   := False;
        lblNome.Visible   := False;
        edtInicio.Clear;
        edtFim.Clear;
        edtInicio.SetFocus;
      end;

      4: // PESQUISA POR TODOS
      begin
        qryPesq_Padrao.Open;
        btnPesquisar.Enabled := False;
        edtNome.Visible      := False;
        lblNome.Visible      := False;
        edtInicio.Visible    := False;
        lblInicio.Visible    := False;
        edtFim.Visible       := False;
        lblFim.Visible       := False;
        edtNome.Clear;
        edtInicio.Clear;
        edtFim.Clear;
      end;
  end;
end;

procedure TPesquisa_PadraoF.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisa_PadraoF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // A TECLA ENTER ATIVA O BOT�O PESQUISAR
  if ((Key = #13) and (btnPesquisar.Enabled = True)) then
  begin
    btnPesquisar.Click;
  end;

  // A TECLA ESC SAI DA TELA
  if (Key = #27) then
  begin
    Close;
  end;
end;
end.

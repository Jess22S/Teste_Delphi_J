unit U_LookUp;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TLookUp = class(TDataModule)
    qryEstados: TFDQuery;
    dsEstados: TDataSource;
    FDTransaction: TFDTransaction;
    qryCidades: TFDQuery;
    dsCidades: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookUp: TLookUp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_DM;

{$R *.dfm}

end.

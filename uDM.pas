unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  Datasnap.DBClient, Data.FMTBcd, Data.SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Trans: TFDTransaction;
    QPaises: TFDQuery;
    QEstados: TFDQuery;
    QCidades: TFDQuery;
    DSPaises: TDataSource;
    DSEstados: TDataSource;
    DSCidades: TDataSource;
    QCondicaodePagamentos: TFDQuery;
    QFormadePagamentos: TFDQuery;
    DSCondicaodePagamentos: TDataSource;
    DSFormadePagamentos: TDataSource;
    QClientes: TFDQuery;
    QFuncionarios: TFDQuery;
    QFornecedores: TFDQuery;
    DSClientes: TDataSource;
    DSFuncionarios: TDataSource;
    DSFornecedores: TDataSource;
    QParcelas: TFDQuery;
    DSParcelas: TDataSource;
    QProdutos: TFDQuery;
    DSProdutos: TDataSource;
    QGrupos: TFDQuery;
    DSGrupos: TDataSource;
    QCargos: TFDQuery;
    DSCargos: TDataSource;
  private
    { Private declarations }
   // procedure pesquisarPais (var  DSet : TClientDataSet );
  //  procedure pesquisarEstado(var  DSet : TClientDataSet );
  //  procedure pesquisarCidade(var  DSet : TClientDataSet );



  public
    FDQuery: TFDQuery;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }







end.

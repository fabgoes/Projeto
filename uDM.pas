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
    QPaisesCODPAIS: TIntegerField;
    QPaisesPAIS: TStringField;
    QPaisesDDI: TStringField;
    QPaisesSIGLA: TStringField;
    QPaisesDATCAD: TDateField;
    QPaisesDATULTALT: TDateField;
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
  private
    { Private declarations }
    procedure pesquisarPais (var  DSet : TClientDataSet );
    procedure pesquisarEstado(var  DSet : TClientDataSet );
    procedure pesquisarCidade(var  DSet : TClientDataSet );

    function GerarID :string;

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

function TDM.GerarID: string;
begin

end;

procedure TDM.pesquisarCidade(var DSet: TClientDataSet);
begin
    with FDQuery  do
    begin
       sql.Clear;
       sql.add('select * from cidades');
       open;
    while not eof do
    begin
       DSet.Append;
       DSet.FieldByName('codCidade').asinteger := FieldByName('codCidade').asinteger;
       DSet.FieldByName('Cidade').asstring := FieldByName('Cidade').asstring;
       DSet.FieldByName('ddd').asstring := FieldByName('ddd').asstring;
       DSet.FieldByName('codEstado').asinteger := FieldByName('codEstado').asinteger ;
       DSet.Post;

      end;
      close;
    end;
end;

procedure TDM.pesquisarEstado(var DSet: TClientDataSet);
begin
    with FDQuery  do
    begin
       sql.Clear;
       sql.add('select * from estados');
       open;
    while not eof do
    begin
       DSet.Append;
       DSet.FieldByName('codEstado').asinteger := FieldByName('codEstado').asinteger;
       DSet.FieldByName('Estado').asstring := FieldByName('Estado').asstring;
       DSet.FieldByName('uf').asstring := FieldByName('uf').asstring;
       DSet.FieldByName('codPais').asinteger := FieldByName('codPais').asinteger ;

       DSet.Post;

      end;
      close;
    end;
end;
procedure TDM.pesquisarPais(var DSet : TClientDataSet);
begin
    with FDQuery  do
    begin
       sql.Clear;
       sql.add('select * from paises');
       open;
    while not eof do
    begin
       DSet.Append;
       DSet.FieldByName('codPais').asinteger := FieldByName('codPais').asinteger;
       DSet.FieldByName('Pais').asstring := FieldByName('Pais').asstring;
       DSet.FieldByName('ddi').asstring := FieldByName('ddi').asstring;
       DSet.FieldByName('sigla').asstring := FieldByName('sigla').asstring;
       DSet.Post;

      end;
      close;
    end;
    end;




end.

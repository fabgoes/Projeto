unit uCidades;

interface

uses
  Classes, SysUtils, uPai, uEstados;

type

{ Cidades }

 Cidades = class (Pai)
  private
  protected
    cidade : string [50];
    ddd : string[3];
    oEstado : Estados;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setCidade (pCidade : string);
    procedure setDDD (pDDD : string);
    procedure setoEstado (poEstado : Estados);
    function getCidade : string;
    function getDDD : string;
    function getoEstado : Estados;
    function clone : Cidades;


end;

implementation

{ Cidades }

constructor Cidades.crieObj;
begin
  inherited;
  cidade := '';
  ddd := '';
  oEstado := Estados.crieObj;
end;

destructor Cidades.destrua_se;
begin
  oEstado.destrua_se;

end;

procedure Cidades.setCidade(pCidade: string);
begin
  cidade := pCidade;
end;

procedure Cidades.setDDD(pDDD: string);
begin
  ddd := pDDD;
end;

procedure Cidades.setoEstado(poEstado: Estados);
begin
  oEstado := poEstado;
end;

function Cidades.getCidade: string;
begin
  result := cidade;
end;

function Cidades.getDDD: string;
begin
  result := ddd;
end;


function Cidades.getoEstado: Estados;
begin
  result := oEstado.clone;
end;

function Cidades.clone: Cidades;
begin
  result := Cidades.crieObj;
  result.setCodigo(codigo);
  result.setCidade(cidade);
  result.setDDD(ddd);
  result.setoEstado(oEstado.clone);
  result.setDataCad(dataCad);
end;

end.


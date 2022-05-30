unit uPaises;

interface

uses
  Classes, SysUtils, uPai;

type

 { Paises }

 Paises = class (pai)
  private
  protected
    pais : string[50];
    ddi : string[5];
    sigla : string[3];
  public
    constructor crieObj;
    constructor crieInit(pCodigo : integer; pPais, pDDI, pSigla: string);
    destructor destrua_se;
    procedure setPais (pPais : string);
    procedure setDDI (pDDI : string);
    procedure setSigla (pSigla : string);
    function getPais : string;
    function getDDI : string;
    function getSigla : string;
    function clone : Paises;
end;


implementation
constructor Paises.crieObj;
begin
  inherited;
  pais := '';
  ddi := '';
  sigla := '';
end;

constructor Paises.crieInit(pCodigo: integer; pPais, pDDI, pSigla: string);
begin
  codigo := pCodigo;
  pais := pPais;
  ddi := pDDI;
  sigla := pSigla;

end;

destructor Paises.destrua_se;
begin
  inherited;
end;

procedure Paises.setPais(pPais: string);
begin
  pais := pPais;
end;

procedure Paises.setDDI(pDDI: string);
begin
  ddi := pDDI;
end;

procedure Paises.setSigla(pSigla: string);
begin
  sigla := pSigla;
end;

function Paises.getPais: string;
begin
  result := pais;
end;

function Paises.getDDI: string;
begin
  result := ddi;
end;

function Paises.getSigla: string;
begin
  result := sigla;
end;

function Paises.clone: Paises;
begin
  result := Paises.crieObj;
  result.setCodigo(codigo);
  result.setPais(pais);
  result.setDDI(ddi);
  result.setSigla(sigla);
  result.setDataCad(dataCad);
end;

end.
unit uEstados;

interface

uses
  Classes, SysUtils, uPai, uPaises;

type

{ Estados }

 Estados = class (Pai)
  private
  protected
    estado : string[50];
    uf     : string[2];
    oPais  : paises;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setEstado(pEstado : string);
    procedure setUF (pUF : string);
    procedure setoPais (poPais : Paises);
    function getEstado : string;
    function getUF : string;
    function getOPais : Paises;
    function clone : Estados;
end;

implementation

{ Estados }

constructor Estados.crieObj;
begin
  inherited;
  estado := '';
  uf     := '';
  oPais  := Paises.crieObj;
end;

destructor Estados.destrua_se;
begin
  oPais.destrua_se;
end;

procedure Estados.setEstado(pEstado: string);
begin
  estado := pEstado;
end;

procedure Estados.setUF(pUF: string);
begin
  uf := pUF;
end;

procedure Estados.setoPais(poPais: Paises);
begin
  oPais := poPais;
end;

function Estados.getEstado: string;
begin
  result := Estado;
end;

function Estados.getUF: string;
begin
  result := uf;
end;

function Estados.getoPais: Paises;
begin
  result := oPais.clone;
end;

function Estados.clone: Estados;
begin
  result := Estados.crieObj;
  result.setCodigo(codigo);
  result.setEstado(estado);
  result.setUF(uf);
  result.setoPais(oPais.clone);
  result.setDataCad(dataCad);
  result.setDataCad(DataUltAlt);
end;

end.


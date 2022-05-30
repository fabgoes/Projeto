unit uCondicaodePagamentos;

interface
uses
    Classes, SysUtils, uPai;

type
   CondicaodePagamentos = class (Pai)
private
protected

     CondicaoPag: string[50];
     Juros     : double;
     Multas    : double;
     Desconto  : double;



public
   constructor CrieObj;
   destructor Destrua_se;
   constructor crieInit(pCodigo : integer; pCondicaoPag, pSituacao, pDataCad : string; pJuros, pMultas, pDesconto : double);
   procedure setCondicaoPag (pCondicaoPag : string);
   procedure setJuros (pJuros : double);
   procedure setMultas(pMultas : double);
   procedure setDesconto (pDesconto: double);
   function getCondicaoPag : string;
   function getJuros : double;
   function getMultas : double;
   function getDesconto : double;
   function clone : CondicaodePagamentos;

end;

implementation

{ CondicaodePagamentos }

function CondicaodePagamentos.clone: CondicaodePagamentos;
begin
   result := CondicaodePagamentos.crieObj;
   result.setCodigo(codigo);
   result.setCondicaoPag(CondicaoPag);
   result.setJuros (Juros);
   result.setMultas (Multas);
   result.setDesconto (Desconto);
   result.setDataCad(dataCad);
end;

constructor CondicaodePagamentos.crieInit(pCodigo : integer; pCondicaoPag, pSituacao, pDataCad : string; pJuros, pMultas, pDesconto: double);
begin
   codigo      := pCodigo;
   CondicaoPag := pCondicaoPag;
   //Situacao    := pSituacao;
   dataCad     := pDataCad;
   juros       := pJuros;
   Multas      := pMultas;
   Desconto    := pDesconto;
end;

constructor CondicaodePagamentos.CrieObj;
begin
   inherited;
   CondicaoPag := '';
   juros       := 0;
   Multas      := 0;
   Desconto    := 0;
end;

destructor CondicaodePagamentos.Destrua_se;
begin
   inherited;
end;

function CondicaodePagamentos.getCondicaoPag: string;
begin
   result := CondicaoPag;
end;

function CondicaodePagamentos.getDesconto: double;
begin
   result := Desconto;
end;

function CondicaodePagamentos.getJuros: double;
begin
   result := Juros;
end;

function CondicaodePagamentos.getMultas: double;
begin
   result := Multas;
end;

procedure CondicaodePagamentos.setCondicaoPag(pCondicaoPag: string);
begin
   CondicaoPag := pCondicaoPag;
end;

procedure CondicaodePagamentos.setDesconto(pDesconto: double);
begin
   Desconto := pDesconto;
end;

procedure CondicaodePagamentos.setJuros(pJuros: double);
begin
   Juros := pJuros;
end;

procedure CondicaodePagamentos.setMultas(pMultas: double);
begin
   Multas := pMultas;
end;

end.

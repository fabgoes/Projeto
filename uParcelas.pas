unit uParcelas;

interface
uses
    Classes, SysUtils, uPai;

type
   Parcelas = class (Pai)
private
protected

     NumParcela: integer;
     QtdDias   : integer;
     Juros     : Currency;

public
   constructor CrieObj;
   destructor Destrua_se;
   constructor crieInit(pCodigo,pQtdDias, pNumParcela : integer;   pDataCad, pDataUltAlt : string; pJuros :Currency);
   procedure setNumParcela (pNumParcela : integer);
   procedure setQtdDias (pQtdDias : integer);
   procedure setJuros (pJuros :Currency);
   function getNumParcela : integer;
   function getQtdDias: integer;
   function getJuros:Currency;
   function clone : Parcelas;


   end;

implementation

{ Parcelas }

function Parcelas.clone: Parcelas;
begin
   result:=Parcelas.CrieObj;
   result.setCodigo(Codigo);
   result.setNumParcela(NumParcela);
   result.setQtdDias(QtdDias);
   result.setJuros(Juros);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);


end;

constructor Parcelas.crieInit(pCodigo,pQtdDias, pNumParcela : integer;   pDataCad, pDataUltAlt : string; pJuros :Currency);
begin
   Codigo    := pCodigo;
   NumParcela:= pNumParcela;
   QtdDias   := pQtdDias;
   Juros     := pJuros;
   DataCad   := pDataCad;
   DataUltAlt:= pDataUltAlt;

end;

constructor Parcelas.CrieObj;
begin
   inherited;
   NumParcela:= 0;
   QtdDias   := 0;
   Juros     := 0.0;
end;

destructor Parcelas.Destrua_se;
begin

end;

function Parcelas.getJuros: Currency;
begin
   result:=Juros;
end;

function Parcelas.getNumParcela: integer;
begin
   result:=NumParcela;
end;

function Parcelas.getQtdDias: integer;
begin
   result:=QtdDias;
end;

procedure Parcelas.setJuros(pJuros: Currency);
begin
   Juros:= pJuros;
end;

procedure Parcelas.setNumParcela(pNumParcela: integer);
begin
   NumParcela:=pNumParcela;
end;

procedure Parcelas.setQtdDias(pQtdDias:  integer);
begin
   QtdDias :=pQtdDias;
end;

end.

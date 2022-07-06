unit uPai;

interface

uses
  Classes, SysUtils;
type
  Pai=class
private
protected
   Codigo     :integer;
   DataCad    : string[10];
   DataUltAlt : string[10];
public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setCodigo(pCodigo:integer);
   procedure setDataCad(pDataCad:string);
   procedure setDataUltAlt (pDataUltAlt:string);
   function getCodigo:integer;
   function getDataCad: string;
   function getDataUltAlt: string;
   function Clone: Pai;


end;

implementation

{ Pai }

function Pai.Clone: Pai;
begin
   result:=Pai.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
end;

constructor Pai.CrieObj;
begin
   Codigo :=0;
   DataCad:='';
   DataUltAlt:=' ';
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.getCodigo: integer;
begin
   result:= Codigo;
end;

function Pai.getDataCad: string;
begin
   result:= Datacad;
end;

function Pai.getDataUltAlt: string;
begin
    result:= DataUltAlt;
end;

procedure Pai.setCodigo(pCodigo: integer);
begin
   Codigo:= pCodigo;
end;

procedure Pai.setDataCad(pDataCad: string);
begin
   DataCad:= pDataCad;
end;

procedure Pai.setDataUltAlt(pDataUltAlt: string);
begin
   DataUltAlt:= pDataUltAlt;
end;

end.

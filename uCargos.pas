unit uCargos;

interface
uses
  Classes, SysUtils, uPai, Vcl.ComCtrls;

type
   Cargos = class (Pai)

  protected
   Cargo  	 :string[50];




  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setCargo(pCargo:string);
   function getCargo:string;
   function Clone:Cargos;


end;
implementation

{ Cargos }
constructor Cargos.CrieObj;
begin
   inherited;
   Cargo :='';
end;

destructor Cargos.Destrua_se;
begin
   inherited;
end;

function Cargos.getCargo: string;
begin
   result:= Cargo;
end;


procedure Cargos.setCargo(pCargo: string);
begin
   Cargo:= pCargo;
end;

function Cargos.Clone: Cargos;
begin
   result:= Cargos.CrieObj;
   result.setCodigo(Codigo);
   result.setCargo(Cargo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);


end;



end.

unit uGrupos;

interface
uses
  Classes, SysUtils, uPai, Vcl.ComCtrls;

type
   Grupos = class (Pai)

  protected
   Grupo  	      :string[100];
   Situacao	      :string[1];
   Observacao	    :string[100];



  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setGrupo(pGrupo:string);
   procedure setSituacao(pSituacao:string);
   procedure setObservacao(pObservacao:string);
   function getGrupo:string;
   function getSituacao:string;
   function getObservacao:string;
   function Clone:Grupos;


end;

implementation

{ Grupos }


constructor Grupos.CrieObj;
begin
   inherited;
   Grupo     := '';
   Situacao  := '';
   Observacao:='';
end;

destructor Grupos.Destrua_se;
begin
    inherited;
end;

function Grupos.getGrupo: string;
begin
   result := Grupo;
end;

function Grupos.getObservacao: string;
begin
   result:= Observacao;
end;

function Grupos.getSituacao: string;
begin
    result:=Situacao;
end;

procedure Grupos.setGrupo(pGrupo: string);
begin
    Grupo:= pGrupo;
end;

procedure Grupos.setObservacao(pObservacao: string);
begin
    Observacao:= pObservacao;
end;

procedure Grupos.setSituacao(pSituacao: string);
begin
    Situacao:=pSituacao;
end;

function Grupos.Clone: Grupos;
begin
   result:= Grupos.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setGrupo(Grupo);
   result.setSituacao(Situacao);
   result.setObservacao(Observacao);


end;


end.

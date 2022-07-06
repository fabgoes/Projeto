unit uCtrlGrupos;
interface
   uses uController, uDaoGrupos,Data.DB, uDM,Datasnap.DBClient;
   type
      CtrlGrupos = class (controller)
     private

     protected
         aDaoGrupo : DaoGrupos;
     public

       constructor CrieObj;
       destructor Destrua_se;
       function Excluir(pObj : TObject):string;         override;
       function Salvar(pObj : TObject):string;          override;
       function Carregar (pObjt : TObject):string;      override;
       procedure Pesquisar ( pChave : string );         override;
       function getDS : TObject;                        override;
       Procedure setDM(pDM : TObject);                  override;
       function AcheiReg(): boolean;
   end;

implementation

{ CtrlGrupos }

function CtrlGrupos .AcheiReg: boolean;
begin
   result := aDaoGrupo.AcheiReg;

end;



function CtrlGrupos.Carregar(pObjt: TObject): string;
begin
  result := aDaoGrupo.Carregar(pObjt);

end;

constructor CtrlGrupos.CrieObj;
begin
   aDaoGrupo:= DaoGrupos.CrieObj;
end;

destructor CtrlGrupos.Destrua_se;
begin


end;

function CtrlGrupos .Excluir(pObj: TObject): string;
begin
   aDaoGrupo.Excluir(pObj);
end;

function CtrlGrupos.getDS: TObject;
begin
   result := aDaoGrupo.getDS;

end;


procedure CtrlGrupos.Pesquisar(pChave: string);
begin
    aDaoGrupo.Pesquisar(pchave);
end;

function CtrlGrupos.Salvar(pObj: TObject): string;
begin
    result := aDaoGrupo.Salvar(pObj);


end;



procedure CtrlGrupos.setDM(pDM: TObject);
begin
  inherited;
  aDaoGrupo.setDM(pDM);

end;

end.

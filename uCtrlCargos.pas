unit uCtrlCargos;

interface
   uses uController, Data.DB, uDaoCargos, uDM,Datasnap.DBClient;
   type
      CtrlCargos = class (controller)
     private

     protected
         aDaoCargo : DaoCargos;
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

{ CtrlCargos }

function CtrlCargos.AcheiReg: boolean;
begin
   result := aDaoCargo.AcheiReg;
end;

function CtrlCargos.Carregar(pObjt: TObject): string;
begin
   result := aDaoCargo.Carregar(pObjt);
end;

constructor CtrlCargos.CrieObj;
begin
   aDaoCargo:= DaoCargos.CrieObj;
end;

destructor CtrlCargos.Destrua_se;
begin

end;

function CtrlCargos.Excluir(pObj: TObject): string;
begin
   aDaoCargo.Excluir(pObj);
end;

function CtrlCargos.getDS: TObject;
begin
    result := aDaoCargo.getDS
end;

procedure CtrlCargos.Pesquisar(pChave: string);
begin
  inherited;
  aDaoCargo.Pesquisar(pchave);
end;

function CtrlCargos.Salvar(pObj: TObject): string;
begin
   result := aDaoCargo.Salvar(pObj);
end;

procedure CtrlCargos.setDM(pDM: TObject);
begin
  inherited;
  aDaoCargo.setDM(pDM);
end;

end.

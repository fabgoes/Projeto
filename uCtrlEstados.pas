unit uCtrlEstados;

interface

uses uController,Data.DB, uDaoEstados, uDM, Datasnap.DBClient, uCtrlPaises;

type
   CtrlEstados = class (controller)
     private

     protected
       aDaoEstado : DaoEstados;
       aCtrlPais  : CtrlPaises;
     public
        constructor CrieObj;
        destructor Destrua_se;
        function Excluir(pObj : TObject): string;        override;
        function Salvar(pObj : TObject): string;         override;
        function Carregar (pObjt : TObject):string;      override;
        procedure Pesquisar ( pChave : string );         override;
        function getDS : TObject;                        override;
        Procedure setDM(pDM : TObject);                  override;
        function AcheiReg(): boolean;
        function getaCtrlPais :TObject;
        procedure setaCtrlPais (paCtrlPais: TObject);
   end;

implementation

{ CtrlEstados }

function CtrlEstados.AcheiReg: boolean;
begin
    result:= aDaoEstado.AcheiReg;
end;

function CtrlEstados.Carregar(pObjt: TObject): string;
begin
   result := aDaoEstado.Carregar(pObjt);

end;

constructor CtrlEstados.CrieObj;
begin
  aDaoEstado:= DaoEstados.CrieObj;


end;

destructor CtrlEstados.Destrua_se;
begin
   

end;

function CtrlEstados.Excluir(pObj: TObject): string;
begin
   result := aDaoEstado.Excluir(pObj);
end;

function CtrlEstados.getaCtrlPais: TObject;
begin
   result:= aCtrlPais;
end;

function CtrlEstados.getDS: TObject;
begin
   result:= aDaoEstado.getDS;
end;



procedure CtrlEstados.Pesquisar(pChave: string);
begin
   aDaoEstado.Pesquisar(pChave);

end;

function CtrlEstados.Salvar(pObj: TObject): string;
begin
    result := aDaoEstado.Salvar(pObj);
end;



procedure CtrlEstados.setaCtrlPais(paCtrlPais: TObject);
begin
    aCtrlPais := CtrlPaises(paCtrlPais);
end;

procedure CtrlEstados.setDM(pDM: TObject);
begin
  inherited;
  aDaoEstado.setDM(pDM);

end;

end.

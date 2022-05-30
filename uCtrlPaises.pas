unit uCtrlPaises;

interface
   uses uController, Data.DB, uDaoPaises, uDM,Datasnap.DBClient;
   type
      CtrlPaises = class (controller)
     private

     protected
         aDaoPais : DaoPaises;
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

{ CtrlPaises }

function CtrlPaises.AcheiReg: boolean;
begin
   result := aDaoPais.AcheiReg;

end;



function CtrlPaises.Carregar(pObjt: TObject): string;
begin
   result := aDaoPais.Carregar(pObjt);

end;

constructor CtrlPaises.CrieObj;
begin
   aDaoPais:= DaoPaises.CrieObj;
end;

destructor CtrlPaises.Destrua_se;
begin


end;

function CtrlPaises.Excluir(pObj: TObject): string;
begin
    aDaoPais.Excluir(pObj);
end;

function CtrlPaises.getDS: TObject;
begin
   result := aDaoPais.getDS;

end;


procedure CtrlPaises.Pesquisar(pChave: string);
begin
    aDaoPais.Pesquisar(pchave);
end;

function CtrlPaises.Salvar(pObj: TObject): string;
begin
    result := aDaoPais.Salvar(pObj);


end;



procedure CtrlPaises.setDM(pDM: TObject);
begin
  inherited;
  aDaoPais.setDM(pDM);

end;

end.

unit uCtrlParcelas;

interface
   uses uController, Data.DB, uDaoParcelas, uDM,Datasnap.DBClient;
   type
      CtrlParcelas = class (controller)
     private

     protected
         aDaoParcela : DaoParcelas;
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

{ CtrlParcelas }

function CtrlParcelas.AcheiReg: boolean;
begin

end;

function CtrlParcelas.Carregar(pObjt: TObject): string;
begin

end;

constructor CtrlParcelas.CrieObj;
begin

end;

destructor CtrlParcelas.Destrua_se;
begin

end;

function CtrlParcelas.Excluir(pObj: TObject): string;
begin

end;

function CtrlParcelas.getDS: TObject;
begin

end;

procedure CtrlParcelas.Pesquisar(pChave: string);
begin
  inherited;

end;

function CtrlParcelas.Salvar(pObj: TObject): string;
begin

end;

procedure CtrlParcelas.setDM(pDM: TObject);
begin
  inherited;

end;

end.

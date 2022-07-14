unit uDaoParcelas;

interface
uses
   Data.DB, uDAO, uDM, uParcelas, System.SysUtils, Datasnap.DBClient;
   type
   DaoParcelas = class (DAO)
   private
   protected
   public
       constructor  CrieObj;                                               override;
       function Excluir(pObj : TObject): string;                           override;
       function Salvar(pObj : TObject): string;                            override;
       function Carregar (pObjt : TObject):string;                         override;
       procedure Pesquisar ( pChave : string );                            override;
       function getDS : TObject;                                           override;
       function AcheiReg(): boolean;



   end;
implementation

{ DaoParcelas }

function DaoParcelas.AcheiReg: boolean;
begin

end;

function DaoParcelas.Carregar(pObjt: TObject): string;
begin

end;

constructor DaoParcelas.CrieObj;
begin
  inherited;

end;

function DaoParcelas.Excluir(pObj: TObject): string;
begin

end;

function DaoParcelas.getDS: TObject;
begin

end;

procedure DaoParcelas.Pesquisar(pChave: string);
begin
  inherited;

end;

function DaoParcelas.Salvar(pObj: TObject): string;
begin

end;

end.

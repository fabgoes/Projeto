unit uDaoCondicaodePagamentos;

interface
uses
   Data.DB, uDAO,uCondicaodePagamentos,  uDM;

   type

   DaoCondicaodePagamentos = class (DAO)

   private
   protected
   public
       function Excluir(pObj : TObject) :string;        override;
       function Salvar(pObj : TObject) :string;         override;
       procedure setDM (pObj : TObject);                override;
       function Carregar (pObjt : TObject):string;      override;
       procedure Pesquisar ( pChave : string );         override;
       function getDS : TObject   ;                     override;
       function AcheiReg(): boolean;

   end;

implementation

{ DaoCondicaodePagamentos }

function DaoCondicaodePagamentos.AcheiReg: boolean;
begin
   result := not( aDm.QCondicaodePagamentos.Eof);
end;

function DaoCondicaodePagamentos.Carregar(pObjt: TObject): string;
begin

end;

function DaoCondicaodePagamentos.Excluir(pObj: TObject): string;
begin

end;

function DaoCondicaodePagamentos.getDS: TObject;
begin
    result:= aDM.DSEstados;
end;

procedure DaoCondicaodePagamentos.Pesquisar(pChave: string);
begin
  inherited;

end;

function DaoCondicaodePagamentos.Salvar(pObj: TObject): string;
begin

end;

procedure DaoCondicaodePagamentos.setDM(pObj: TObject);
begin
  inherited;

end;

end.

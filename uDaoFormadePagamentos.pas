unit uDaoFormadePagamentos;

interface
uses
   Data.DB, uDAO , uDM, uFormadePagamentos;
   type
   DaoFormadePagamentos = class (DAO)
   private
   protected
   public
       function Excluir(pObj : TObject) :string;         override;
       function Salvar(pObj : TObject) :string;          override;
       procedure setDM (pObj : TObject);                 override;
       function Carregar (pObjt : TObject):string;       override;
       procedure Pesquisar ( pChave : string );          override;
       function getDS : TObject;                         override;

   end;

implementation

{ DaoFormadePagamentos }

function DaoFormadePagamentos.Carregar(pObjt: TObject): string;
begin

end;

function DaoFormadePagamentos.Excluir(pObj: TObject): string;
begin

end;



function DaoFormadePagamentos.getDS: TObject;
begin

end;

procedure DaoFormadePagamentos.Pesquisar(pChave: string);
begin
  inherited;

end;

function DaoFormadePagamentos.Salvar(pObj: TObject): string;
begin

end;

procedure DaoFormadePagamentos.setDM(pObj: TObject);
begin
  inherited;

end;

end.

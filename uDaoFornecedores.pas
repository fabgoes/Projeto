unit uDaoFornecedores;

interface
uses
   Data.DB, uDAO, uDM, uFornecedores, System.SysUtils, Datasnap.DBClient;
   type
   DaoFornecedores = class (DAO)
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

{ DaoFornecedores }

function DaoFornecedores.AcheiReg: boolean;
begin

end;

function DaoFornecedores.Carregar(pObjt: TObject): string;
begin

end;

constructor DaoFornecedores.CrieObj;
begin
  inherited;

end;

function DaoFornecedores.Excluir(pObj: TObject): string;
begin

end;

function DaoFornecedores.getDS: TObject;
begin

end;

procedure DaoFornecedores.Pesquisar(pChave: string);
begin
  inherited;

end;

function DaoFornecedores.Salvar(pObj: TObject): string;
begin

end;

end.

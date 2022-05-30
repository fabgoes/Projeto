unit uDaoFuncionarios;

interface
uses
   Data.DB, uDAO, uDM, uFuncionarios, System.SysUtils, Datasnap.DBClient;
   type
   DaoFuncionarios = class (DAO)
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

{ DaoFuncionarios }

function DaoFuncionarios.AcheiReg: boolean;
begin

end;

function DaoFuncionarios.Carregar(pObjt: TObject): string;
begin

end;

constructor DaoFuncionarios.CrieObj;
begin
  inherited;

end;

function DaoFuncionarios.Excluir(pObj: TObject): string;
begin

end;

function DaoFuncionarios.getDS: TObject;
begin

end;

procedure DaoFuncionarios.Pesquisar(pChave: string);
begin
  inherited;

end;

function DaoFuncionarios.Salvar(pObj: TObject): string;
begin

end;

end.

unit uCtrlFornecedores;

interface
   uses uController, Data.DB, uDaoFornecedores, uDM,Datasnap.DBClient;
   type
      CtrlFornecedores = class (controller)
     private

     protected
         aDaoFornecedor : DaoFornecedores;
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

{ CtrlFornecedores }

function CtrlFornecedores.AcheiReg: boolean;
begin

end;

function CtrlFornecedores.Carregar(pObjt: TObject): string;
begin

end;

constructor CtrlFornecedores.CrieObj;
begin

end;

destructor CtrlFornecedores.Destrua_se;
begin

end;

function CtrlFornecedores.Excluir(pObj: TObject): string;
begin

end;

function CtrlFornecedores.getDS: TObject;
begin

end;

procedure CtrlFornecedores.Pesquisar(pChave: string);
begin
  inherited;

end;

function CtrlFornecedores.Salvar(pObj: TObject): string;
begin

end;

procedure CtrlFornecedores.setDM(pDM: TObject);
begin
  inherited;

end;

end.

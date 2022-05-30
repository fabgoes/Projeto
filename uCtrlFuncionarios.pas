unit uCtrlFuncionarios;

interface
   uses uController, Data.DB, uDaoFuncionarios, uDM,Datasnap.DBClient;
   type
      CtrlFuncionarios = class (controller)
     private

     protected
         aDaoFuncionario : DaoFuncionarios;
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

{ CtrlFuncionarios }

function CtrlFuncionarios.AcheiReg: boolean;
begin

end;

function CtrlFuncionarios.Carregar(pObjt: TObject): string;
begin

end;

constructor CtrlFuncionarios.CrieObj;
begin

end;

destructor CtrlFuncionarios.Destrua_se;
begin

end;

function CtrlFuncionarios.Excluir(pObj: TObject): string;
begin

end;

function CtrlFuncionarios.getDS: TObject;
begin

end;

procedure CtrlFuncionarios.Pesquisar(pChave: string);
begin
  inherited;

end;

function CtrlFuncionarios.Salvar(pObj: TObject): string;
begin

end;

procedure CtrlFuncionarios.setDM(pDM: TObject);
begin
  inherited;

end;

end.

unit uCtrlClientes;

interface
   uses uController, Data.DB, uDaoClientes, uDM,Datasnap.DBClient, uCtrlCidades;
   type
      CtrlClientes = class (controller)
     private

     protected
         aDaoCliente : DaoClientes;
         aCtrlCidade  : CtrlCidades;
     public

       constructor CrieObj;
       destructor Destrua_se;
       function Excluir(pObj : TObject):string;         override;
       function Salvar(pObj : TObject):string;          override;
       function Carregar (pObjt : TObject):string;      override;
       procedure Pesquisar ( pChave : string );         override;
       function getDS : TObject;                        override;
       Procedure setDM(pDM : TObject);                  override;
       function getaCtrlCidade :TObject;
       procedure setaCtrlCidade (paCtrlCidade: TObject);
       function AcheiReg(): boolean;
   end;

implementation

{ CtrlClientes }

function CtrlClientes.AcheiReg: boolean;
begin
   result := aDaoCliente.AcheiReg;
end;

function CtrlClientes.Carregar(pObjt: TObject): string;
begin
   result := aDaoCliente.Carregar(pObjt);
end;

constructor CtrlClientes.CrieObj;
begin
   aDaoCliente:= DaoClientes.CrieObj;
end;

destructor CtrlClientes.Destrua_se;
begin

end;

function CtrlClientes.Excluir(pObj: TObject): string;
begin
   result := aDaoCliente.Excluir(pObj);
end;

function CtrlClientes.getaCtrlCidade: TObject;
begin
   result:= aCtrlCidade;
end;

function CtrlClientes.getDS: TObject;
begin
   result := aDaoCliente.getDS;
end;

procedure CtrlClientes.Pesquisar(pChave: string);
begin

  aDaoCliente.Pesquisar(pchave);
end;

function CtrlClientes.Salvar(pObj: TObject): string;
begin
   result := aDaoCliente.Salvar(pObj);
end;

procedure CtrlClientes.setaCtrlCidade(paCtrlCidade: TObject);
begin
    aCtrlCidade := CtrlCidades(paCtrlCidade);
end;

procedure CtrlClientes.setDM(pDM: TObject);
begin
  inherited;
  aDaoCliente.setDM(pDM);
end;

end.

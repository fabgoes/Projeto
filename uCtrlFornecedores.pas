unit uCtrlFornecedores;



interface
uses uController,Data.DB, uDaoFornecedores, uDM, Datasnap.DBClient, uCtrlCidades;
type
   CtrlFornecedores = class (controller)
     private
     protected
       aDaoFornecedor   : DaoFornecedores;
       aCtrlCidade      : CtrlCidades;
     public
        constructor CrieObj;
        destructor Destrua_se;
        function Excluir(pObj : TObject): string;        override;
        function Salvar(pObj : TObject): string;         override;
        function Carregar (pObjt : TObject):string;      override;
        procedure Pesquisar ( pChave : string );         override;
        function getDS : TObject;                        override;
        Procedure setDM(pDM : TObject);                  override;
        function AcheiReg(): boolean;
        function getaCtrlCidade :TObject;
        procedure setaCtrlCidade (paCtrlCidade: TObject);
   end;
implementation

{ CtrlFornecedores }
function CtrlFornecedores.AcheiReg: boolean;
begin
    result:= aDaoFornecedor.AcheiReg;
end;

function CtrlFornecedores.Carregar(pObjt: TObject): string;
begin
   result := aDaoFornecedor.Carregar(pObjt);
end;

constructor CtrlFornecedores.CrieObj;
begin
  aDaoFornecedor:= DaoFornecedores.CrieObj;

end;
destructor CtrlFornecedores.Destrua_se;
begin

end;

function CtrlFornecedores.Excluir(pObj: TObject): string;
begin
   result := aDaoFornecedor.Excluir(pObj);
end;

function CtrlFornecedores.getaCtrlCidade: TObject;
begin
   result:= aCtrlCidade;
end;

function CtrlFornecedores.getDS: TObject;
begin
   result:= aDaoFornecedor.getDS;
end;

procedure CtrlFornecedores.Pesquisar(pChave: string);
begin
   aDaoFornecedor.Pesquisar(pChave);
end;

function CtrlFornecedores.Salvar(pObj: TObject): string;
begin
    result := aDaoFornecedor.Salvar(pObj);
end;

procedure CtrlFornecedores.setaCtrlCidade(paCtrlCidade: TObject);
begin
    aCtrlCidade := CtrlCidades(paCtrlCidade);
end;
procedure CtrlFornecedores.setDM(pDM: TObject);
begin
  inherited;
  aDaoFornecedor.setDM(pDM);
end;
end.


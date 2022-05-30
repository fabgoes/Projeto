unit uCtrlFormadePagamentos;

interface
uses
   uController,  Data.DB, uDaoFormadePagamentos;

type
   CtrlFormadePagamentos = class (controller)
      private
       aDaoFormadePagamento : DaoFormadePagamentos ;
      protected
        public
        constructor CrieObj;                             override;
        destructor Destrua_se;                           override;
        function  Excluir(pObj : TObject):string;        override;
        function  Salvar(pObj : TObject):string;         override;
        function Carregar (pObjt : TObject):string;      override;
        Procedure Pesquisar ( pChave : string );          override;
        function getDS : TObject;                        override;
        Procedure setDM(pObj : TObject);                 override;
   end;

implementation

{ CtrlFormadePagamentos }

function CtrlFormadePagamentos.Carregar(pObjt: TObject): string;
begin

end;

constructor CtrlFormadePagamentos.CrieObj;
begin
   aDaoFormadePagamento:= DaoFormadePagamentos.CrieObj;

end;

destructor CtrlFormadePagamentos.Destrua_se;
begin
    aDaoFormadePagamento.Destrua_se;
end;

function  CtrlFormadePagamentos.Excluir(pObj: TObject): string;
begin
  inherited;

end;



function  CtrlFormadePagamentos.Salvar(pObj: TObject): string;
begin
  inherited;

end;
procedure CtrlFormadePagamentos.setDM(pObj: TObject);
begin
  inherited;
  aDaoFormadePagamento.setDM(pOBJ);
end;

function CtrlFormadePagamentos.getDS :  TObject;
begin
    result :=  aDaoFormadePagamento.getDS;
end;

procedure CtrlFormadePagamentos.Pesquisar(pChave: string);
begin
  inherited;

end;

end.

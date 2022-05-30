unit uCtrlCondicaodePagamentos;

interface
uses
   uController,  Data.DB, uDaoCondicaodePagamentos;

type
   CtrlCondicaodePagamentos = class (controller)
      private

      protected
         aDaoCondicaodePagamento : DaoCondicaodePagamentos;
      public
        constructor CrieObj;                             override;
        destructor Destrua_se;                           override;
        function  Excluir(pObj : TObject):string;        override;
        function  Salvar(pObj : TObject):string;         override;
        function Carregar (pObjt : TObject):string;      override;
        procedure Pesquisar ( pChave : string );         override;
        function getDS : TObject;                        override;
        Procedure setDM(pObj : TObject);                 override;
        function AcheiReg(): boolean;
   end;

implementation

{ CtrlCondicaodePagamentos }

function CtrlCondicaodePagamentos.AcheiReg: boolean;
begin
  // result := aDaoCondicaodePagamento.AcheiReg;

end;

function CtrlCondicaodePagamentos.Carregar(pObjt: TObject): string;
begin

end;

constructor CtrlCondicaodePagamentos.CrieObj;
begin
   aDaoCondicaodePagamento:=  DaoCondicaodePagamentos.CrieObj;

end;

destructor CtrlCondicaodePagamentos.Destrua_se;
begin
    aDaoCondicaodePagamento.Destrua_se;
end;

function  CtrlCondicaodePagamentos.Excluir(pObj: TObject): string;
begin
  inherited;

end;

procedure CtrlCondicaodePagamentos.Pesquisar(pChave: string);
begin

end;

function  CtrlCondicaodePagamentos.Salvar(pObj: TObject): string;
begin
  inherited;

end;
procedure CtrlCondicaodePagamentos.setDM(pObj: TObject);
begin
  inherited;
  aDaoCondicaodePagamento.setDM(pOBJ);
end;

function CtrlCondicaodePagamentos.getDS : TObject;
begin
    result :=  aDaoCondicaodePagamento.getDS;
end;

end.

unit uCtrlCidades;

interface
uses uController,  Data.DB, uDaoCidades, uDM, Datasnap.DBClient, uCtrlEstados;

type
   CtrlCidades = class (controller)
      private

      protected
         aDaoCidade : DaoCidades;
         aCtrlEstado : CtrlEstados;
      public
        constructor CrieObj;
        destructor Destrua_se;
        function  Excluir(pObj : TObject):string;        override;
        function  Salvar(pObj : TObject):string;         override;
        function Carregar (pObjt : TObject):string;      override;
        procedure Pesquisar ( pChave : string );         override;
        function getDS : TObject;                        override;
        Procedure setDM(pDM : TObject);                  override;
        function AcheiReg(): boolean;
        function getaCtrlEstado :TObject;
        procedure setaCtrlEstado (pCtrlEstado: TObject);
   end;

implementation

{ CtrlCidades }

function CtrlCidades.AcheiReg: boolean;
begin
    result := aDaoCidade.AcheiReg;
end;

function CtrlCidades.Carregar(pObjt: TObject): string;
begin
   result := aDaoCidade.Carregar(pObjt);


end;

constructor CtrlCidades.CrieObj;
begin
   aDaoCidade:= DaoCidades.CrieObj;

end;

destructor CtrlCidades.Destrua_se;
begin


end;

function CtrlCidades.Excluir(pObj: TObject): string;
begin
    result := aDaoCidade.Excluir(pObj);
end;

function CtrlCidades.getaCtrlEstado: TObject;
begin
   result:= aCtrlEstado;
end;

function CtrlCidades.getDS: TObject;
begin
    result:= aDaoCidade.getDS;

end;

procedure CtrlCidades.Pesquisar(pChave: string);
begin
  inherited;
  aDaoCidade.Pesquisar(pChave);

end;

function CtrlCidades.Salvar(pObj: TObject): string;
begin
    result := aDaoCidade.Salvar(pObj);

end;



procedure CtrlCidades.setaCtrlEstado(pCtrlEstado: TObject);
begin
   aCtrlEstado := CtrlEstados(pCtrlEstado);

end;

procedure CtrlCidades.setDM(pDM: TObject);
begin
  inherited;
  aDaoCidade.setDM(pDM);

end;

end.

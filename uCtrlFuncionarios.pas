unit uCtrlFuncionarios;

interface
   uses uController, Data.DB, uDaoFuncionarios, uDM,Datasnap.DBClient,
        uCtrlCidades, uCtrlCargos;
   type
      CtrlFuncionarios = class (controller)
     private

     protected
         aDaoFuncionario : DaoFuncionarios;
         aCtrlCidade     : CtrlCidades;
         aCtrlCargo      : CtrlCargos;
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
       function getaCtrlCidade :TObject;
       procedure setaCtrlCidade (paCtrlCidade: TObject);
       function getaCtrlCargo :TObject;
       procedure setaCtrlCargo (paCtrlCargo: TObject);
   end;

implementation

{ CtrlFuncionarios }

function CtrlFuncionarios.AcheiReg: boolean;
begin
   result:= aDaoFuncionario.AcheiReg;
end;

function CtrlFuncionarios.Carregar(pObjt: TObject): string;
begin
  result := aDaoFuncionario.Carregar(pObjt);
end;

constructor CtrlFuncionarios.CrieObj;
begin
  aDaoFuncionario:= DaoFuncionarios.CrieObj;
end;

destructor CtrlFuncionarios.Destrua_se;
begin

end;

function CtrlFuncionarios.Excluir(pObj: TObject): string;
begin
   result := aDaoFuncionario.Excluir(pObj);
end;

function CtrlFuncionarios.getaCtrlCargo: TObject;
begin
    result:= aCtrlCargo;
end;

function CtrlFuncionarios.getaCtrlCidade: TObject;
begin
   result:= aCtrlCidade;
end;

function CtrlFuncionarios.getDS: TObject;
begin
   result:= aDaoFuncionario.getDS;
end;

procedure CtrlFuncionarios.Pesquisar(pChave: string);
begin
  inherited;
  aDaoFuncionario.Pesquisar(pChave);
end;

function CtrlFuncionarios.Salvar(pObj: TObject): string;
begin
   result := aDaoFuncionario.Salvar(pObj);
end;

procedure CtrlFuncionarios.setaCtrlCargo(paCtrlCargo: TObject);
begin
    aCtrlCargo:= CtrlCargos(paCtrlCargo);
end;

procedure CtrlFuncionarios.setaCtrlCidade(paCtrlCidade: TObject);
begin
   aCtrlCidade := CtrlCidades(paCtrlCidade);
end;

procedure CtrlFuncionarios.setDM(pDM: TObject);
begin
  inherited;
  aDaoFuncionario.setDM(pDM);
end;

end.

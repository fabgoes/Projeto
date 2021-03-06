unit uCtrlProdutos;

interface
   uses uController, uDaoProdutos,Data.DB, uDM,Datasnap.DBClient,
   uCtrlGrupos, uCtrlFornecedores;
   type
      CtrlProdutos = class (controller)
     private

     protected
         aDaoProduto     : DaoProdutos;
         aCtrlGrupo      : CtrlGrupos;
         aCtrlFornecedor : CtrlFornecedores;
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
       function getaCtrlGrupo :TObject;
       procedure setaCtrlGrupo (paCtrlGrupo: TObject);
       function getaCtrlFornecedor :TObject;
       procedure setaCtrlFornecedor (paCtrlFornecedor: TObject);
   end;

implementation

{ CtrlGrupos }

function CtrlProdutos.AcheiReg: boolean;
begin
   result := aDaoProduto.AcheiReg;

end;



function CtrlProdutos.Carregar(pObjt: TObject): string;
begin
  result := aDaoProduto.Carregar(pObjt);

end;

constructor CtrlProdutos.CrieObj;
begin
   aDaoProduto:= DaoProdutos.CrieObj;
end;

destructor CtrlProdutos.Destrua_se;
begin


end;

function CtrlProdutos.Excluir(pObj: TObject): string;
begin
   aDaoProduto.Excluir(pObj);
end;

function CtrlProdutos.getaCtrlFornecedor: TObject;
begin
   result := aCtrlFornecedor;
end;

function CtrlProdutos.getaCtrlGrupo: TObject;
begin
   result := aCtrlGrupo;
end;

function CtrlProdutos.getDS: TObject;
begin
   result := aDaoProduto.getDS;

end;


procedure CtrlProdutos.Pesquisar(pChave: string);
begin
    aDaoProduto.Pesquisar(pchave);
end;

function CtrlProdutos.Salvar(pObj: TObject): string;
begin
    result := aDaoProduto.Salvar(pObj);


end;



procedure CtrlProdutos.setaCtrlFornecedor(paCtrlFornecedor: TObject);
begin
   aCtrlFornecedor := CtrlFornecedores(paCtrlFornecedor);
end;

procedure CtrlProdutos.setaCtrlGrupo(paCtrlGrupo: TObject);
begin
   aCtrlGrupo := CtrlGrupos(paCtrlGrupo);
end;

procedure CtrlProdutos.setDM(pDM: TObject);
begin
  inherited;
  aDaoProduto.setDM(pDM);

end;

end.

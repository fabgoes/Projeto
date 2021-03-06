unit uProdutos;

interface

uses
  Classes, SysUtils, uPai, uCidades, Vcl.ComCtrls, uFornecedores,uGrupos;

type
   Produtos = class (Pai)

  protected
   Produto	      :string[100];
   Situacao	      :string[1];
   Unidade  	    :string[10];
   Largura	      :smallint;
   NCM	          :string[20];
   QtdEstoque	    :currency;
   VlCusto 	      :currency;
   VlUltcompra	  :currency;
   VlVenda	      :currency;
   Observacao	    :string[100];
   CFOP	          :string[4];
   oGrupo	        :Grupos;
   oFornecedor    :Fornecedores;

  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setProduto(pProduto:string);
   procedure setSituacao(pSituacao:string);
   procedure setUnidade(pUnidade:string);
   procedure setLargura(pLargura:smallint);
   procedure setNCM(pNCM:string);
   procedure setQtdEstoque(pQtdEstoque:currency);
   procedure setVlCusto(pVlCusto:currency);
   procedure setVlUltcompra(pVlUltcompra:currency);
   procedure setVlVenda(pVlVenda:currency);
   procedure setObservacao(pObservacao:string);
   procedure setCFOP(pCFOP:string);
   procedure setoGrupo(poGrupo:Grupos);
   procedure setoFornecedor(poFornecedor : Fornecedores);
   function getProduto:string;
   function getSituacao:string;
   function getUnidade:string;
   function getLargura:smallint;
   function getNCM:string;
   function getQtdEstoque:currency;
   function getVlCusto:currency;
   function getVlUltcompra:currency;
   function getVlVenda:currency;
   function getObservacao:string;
   function getCFOP:string;
   function getoGrupo:Grupos;
   function getoFornecedor:Fornecedores;
   function Clone:Produtos;


end;

implementation

{ Produtos }



constructor Produtos.CrieObj;
begin
   inherited;
   Produto	     :='';
   Situacao	     :='';
   Unidade  	   :='';
   Largura	     := 0;
   NCM	         :='';
   QtdEstoque	   := 0.0;
   VlCusto 	     := 0.0;
   VlUltcompra	 := 0.0;
   VlVenda	     := 0.0;
   Observacao	   :='';
   CFOP	         :='';
   oGrupo	       :=Grupos.CrieObj;
   oFornecedor   :=Fornecedores.CrieObj;

end;

destructor Produtos.Destrua_se;
begin
   inherited;
end;

function Produtos.getCFOP: string;
begin
    result:= CFOP;
end;

function Produtos.getLargura: smallint;
begin
   result:=Largura;
end;

function Produtos.getNCM: string;
begin
    result:=NCM;
end;

function Produtos.getObservacao: string;
begin
    result:=Observacao;
end;

function Produtos.getoFornecedor: Fornecedores;
begin
    result := oFornecedor.clone;
end;

function Produtos.getoGrupo: Grupos;
begin
    result := oGrupo.clone;
end;

function Produtos.getProduto: string;
begin
    result:= Produto;
end;

function Produtos.getQtdEstoque: currency;
begin
    result:=QtdEstoque;
end;

function Produtos.getSituacao: string;
begin
    result:=Situacao;
end;

function Produtos.getUnidade: string;
begin
    result:=Unidade;
end;

function Produtos.getVlCusto: currency;
begin
    result:=VlCusto;
end;

function Produtos.getVlUltcompra: currency;
begin
    result:=VlUltcompra;
end;

function Produtos.getVlVenda: currency;
begin
    result:= VlVenda;
end;

procedure Produtos.setCFOP(pCFOP: string);
begin
    CFOP:=pCFOP ;
end;

procedure Produtos.setLargura(pLargura: smallint);
begin
   Largura:= pLargura;
end;

procedure Produtos.setNCM(pNCM: string);
begin
   NCM:=pNCM;
end;

procedure Produtos.setObservacao(pObservacao: string);
begin
   Observacao:= pObservacao;
end;

procedure Produtos.setoFornecedor(poFornecedor: Fornecedores);
begin
   oFornecedor:= poFornecedor;
end;

procedure Produtos.setoGrupo(poGrupo: Grupos);
begin
   oGrupo:= poGrupo;
end;

procedure Produtos.setProduto(pProduto: string);
begin
    Produto:= pProduto;
end;

procedure Produtos.setQtdEstoque(pQtdEstoque: currency);
begin
    QtdEstoque:= pQtdEstoque;
end;

procedure Produtos.setSituacao(pSituacao: string);
begin
    Situacao:= pSituacao;
end;

procedure Produtos.setUnidade(pUnidade: string);
begin
   Unidade:=pUnidade;
end;

procedure Produtos.setVlCusto(pVlCusto: currency);
begin
   VlCusto:= pVlCusto;
end;

procedure Produtos.setVlUltcompra(pVlUltcompra: currency);
begin
   VlUltcompra:=pVlUltcompra;
end;

procedure Produtos.setVlVenda(pVlVenda: currency);
begin
   VlVenda:=pVlVenda;
end;

function Produtos.Clone: Produtos;
begin
   result:= Produtos.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setProduto(Produto);
   result.setSituacao(Situacao);
   result.setUnidade(Unidade);
   result.setLargura(Largura);
   result.setNCM(NCM);
   result.setQtdEstoque(QtdEstoque);
   result.setVlCusto(VlCusto);
   result.setVlUltcompra(VlUltcompra);
   result.setVlVenda(VlVenda);
   result.setObservacao(Observacao);
   result.setCFOP(CFOP);
   result.setoGrupo(oGrupo.Clone);
   result.setoFornecedor(oFornecedor.Clone);



end;

end.

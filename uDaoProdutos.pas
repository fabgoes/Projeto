unit uDaoProdutos;

interface
uses
   Data.DB, uDAO, uDM, uProdutos, System.SysUtils, Datasnap.DBClient;
   type
   DaoProdutos = class (DAO)
   private
   protected
   public
       constructor  CrieObj;                                               override;
       function Excluir(pObj : TObject): string;                           override;
       function Salvar(pObj : TObject): string;                            override;
       function Carregar (pObjt : TObject):string;                         override;
       procedure Pesquisar ( pChave : string );                            override;
       function getDS : TObject;                                           override;
       function AcheiReg(): boolean;



   end;

implementation

{ DaoProdutos }

function DaoProdutos.AcheiReg: boolean;
begin
    result := not( aDm.QProdutos.Eof);
end;


function DaoProdutos.Carregar(pObjt: TObject): string;
var
   mProduto : Produtos;
begin
   try
     try
      mProduto := Produtos(pObjt);
      with aDM.QProdutos DO
      begin
        mProduto := Produtos(pObjt);
        mProduto.setCodigo(aDM.QProdutos.FieldByName('CODPRODUTO').Value);
        mProduto.setProduto( aDM.QProdutos.FieldByName('PRODUTO').AsString);
        mProduto.setSituacao( aDM.QProdutos.FieldByName('SITUACAO').AsString);
        mProduto.setObservacao( aDM.QProdutos.FieldByName('OBSERVACAO').AsString);
        mProduto.setUnidade( aDM.QProdutos.FieldByName('UNIDADE').AsString);
        mProduto.setLargura( aDM.QProdutos.FieldByName('LARGURA').Value);
        mProduto.setNCM( aDM.QProdutos.FieldByName('NCM').AsString);
        mProduto.setQtdEstoque( aDM.QProdutos.FieldByName('QtdEstoque').Value);
        mProduto.setVlCusto ( aDM.QProdutos.FieldByName('VlCusto').Value);
        mProduto.setVlUltcompra( aDM.QProdutos.FieldByName('VlUltcompra').Value);
        mProduto.setVlVenda( aDM.QProdutos.FieldByName('VlVenda').Value);
        mProduto.setObservacao( aDM.QProdutos.FieldByName('Observacao').AsString);
        mProduto.setCFOP( aDM.QProdutos.FieldByName('CFOP').AsString);
        mProduto.getoGRUPO.setCodigo( aDM.QProdutos.FieldByName('CODGRUPO').Value);
        mProduto.getoFornecedor.setCodigo( aDM.QProdutos.FieldByName('CODFORNECEDOR').Value);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;

constructor DaoProdutos.CrieObj;
begin
  inherited;

end;

function DaoProdutos.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mProduto : Produtos;
begin
   try
      mProduto := Produtos(pObj);
      mSql := 'delete from Produtos where codProduto = '+ inttostr(mProduto.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QProdutos.Active:= false;
      aDm.QProdutos.SQL.Clear;
      aDM.QProdutos.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;


end;

function DaoProdutos.getDS: TObject;
begin
    result:= aDM.DSProdutos;
end;



procedure DaoProdutos.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Produtos where codProduto = '+quotedstr(pChave)
  else
        mSql := 'select * from Produtos where produto like '+quotedstr('%'+pChave+'%') +' order by produto; '
  else
        msql := 'select * from Produtos order by produto';
  aDM.QProdutos.Active := false;
  aDM.QProdutos.SQL.Clear;
  aDM.QProdutos.SQL.Add(mSql);
  aDM.QProdutos.Open();
end;

function DaoProdutos.Salvar(pObj: TObject): string;
var
   mSql     : string;
   mProduto : Produtos;
begin
    try
      aDM.Trans.StartTransaction;
      mProduto := Produtos(pObj);
      with aDm.QProdutos do
      begin
        if mProduto.getCodigo = 0 then
        mSql := ' insert into produtos (Produto,Situacao ,  Unidade, Largura , NCM,QtdEstoque, VlCusto ,VlUltcompra, VlVenda , Observacao  , CFOP, CodGrupo, CodFornecedor) ' + ' values ( :Produto,:situacao, :Unidade,:Largura,:NCM ,:QtdEstoque,:VlCusto,:VlUltcompra,:VlVenda, :Observacao , :CFOP, :CodGrupo,:CodFornecedor)'
        else
        begin
          mSql := 'update produtos set Produto= :Produto,Situacao = :situacao,  Unidade= :Unidade, Largura =:Largura, ' + ' NCM = :NCM ,QtdEstoque= :QtdEstoque, VlCusto =:VlCusto,VlUltcompra =:VlUltcompra, VlVenda = :VlVenda,   Observacao = :Observacao , CFOP= :CFOP,   CodGrupo= :CodGrupo,  CodFornecedor=   :CodFornecedor';
          mSql := mSql + ' where codProduto = :CodProduto';



        end;
        aDM.QProdutos.SQL.Clear;
        aDm.QProdutos.SQL.Add(mSql);
        ParamByName('PRODUTO').Value :=mProduto.getProduto;
        ParamByName('SITUACAO').Value :=mProduto.getSituacao;
        ParamByName('UNIDADE').Value :=mProduto.getUnidade;
        ParamByName('LARGURA').Value :=mProduto.getLargura;
        ParamByName('NCM').Value :=mProduto.getNCM;
        ParamByName('QtdEstoque').Value :=mProduto.getQtdEstoque;
        ParamByName('VlCusto').Value :=mProduto.getVlCusto;
        ParamByName('VlUltcompra').Value :=mProduto.getVlUltcompra;
        ParamByName('VlVenda').Value :=mProduto.getVlVenda;
        ParamByName('OBSERVACAO').Value :=mProduto.getObservacao;
        ParamByName('CFOP').Value :=mProduto.getCFOP;
        if mProduto.getCodigo <> 0 then
        ParamByName('CODPRODUTO').Value :=mProduto.getCodigo;
        ParamByName('CODGRUPO').Value :=mProduto.getoGrupo.getCodigo;
        ParamByName('CODFORNECEDOR').Value :=mProduto.getoFornecedor.getCodigo;
        ExecSQL;


      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;













end.

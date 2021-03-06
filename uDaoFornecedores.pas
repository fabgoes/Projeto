unit uDaoFornecedores;

interface
uses
   Data.DB, uDAO, uDM, uFornecedores, System.SysUtils, Datasnap.DBClient, uDaoCidades, uCtrlCidades;
   type
   DaoFornecedores = class (DAO)
   private
   
       protected
       aDaoCidade  : DaoCidades;
       aCtrlCidade : CtrlCidades;
     public
       function Excluir(pObj : TObject): string;                           override;
       function Salvar(pObj : TObject): string;                            override;
       function Carregar (pObjt : TObject):string;                         override;
       procedure Pesquisar ( pChave : string );                            override;
       function getDS : TObject;                                           override;
       function AcheiReg(): boolean;

   end;






implementation


{ DaoFornecedores }

function DaoFornecedores.AcheiReg: boolean;
begin
   result := not( aDm.QFornecedores.Eof);
end;

function DaoFornecedores.Carregar(pObjt: TObject): string;
var
   mFornecedor: Fornecedores;
begin
   try
     try
      mFornecedor:= Fornecedores(pObjt);
      with aDM.QFornecedores DO
      begin
        mFornecedor:= Fornecedores(pObjt);
        mFornecedor.setCodigo(aDM.QFornecedores.FieldByName('CODFORNECEDOR').Value);
        mFornecedor.setNome( aDM.QFornecedores.FieldByName('FORNECEDOR').AsString);
        mFornecedor.setTelefone( aDM.QFornecedores.FieldByName('TELEFONE').AsString);
        mFornecedor.setEmail( aDM.QFornecedores.FieldByName('EMAIL').AsString);
        mFornecedor.setCEP( aDM.QFornecedores.FieldByName('CEP').AsString);
        mFornecedor.setBairro( aDM.QFornecedores.FieldByName('BAIRRO').AsString);
        mFornecedor.setLogradouro( aDM.QFornecedores.FieldByName('LOGRADOURO').AsString);
        mFornecedor.setNumero( aDM.QFornecedores.FieldByName('NUMERO').Value);
        mFornecedor.setComplemento( aDM.QFornecedores.FieldByName('Complemento').AsString);
        mFornecedor.setRazaoSocial( aDM.QFornecedores.FieldByName('RazaoSocial').Value);
        mFornecedor.setSite( aDM.QFornecedores.FieldByName('Site').AsString);
        mFornecedor.setCNPJ( aDM.QFornecedores.FieldByName('CNPJ').AsString);
        mFornecedor.setCelular( aDM.QFornecedores.FieldByName('Celular').AsString);
        mFornecedor.setFormaPag( aDM.QFornecedores.FieldByName('FormaPag').AsString);
        mFornecedor.setObservacao( aDM.QFornecedores.FieldByName('Observacao').AsString);
        mFornecedor.setInsEstadual( aDM.QFornecedores.FieldByName('InsEstadual').AsString);
        mFornecedor.getaCidade.setCodigo( aDM.QFornecedores.FieldByName('CODCIDADDE').Value);
        result := '';

      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;




function DaoFornecedores.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mFornecedor: Fornecedores;
begin
   try
      mFornecedor:= Fornecedores(pObj);
      mSql := 'delete  from fornecedores where codFornecedor = '+ inttostr(mFornecedor.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QFornecedores.Active:= false;
      aDm.QFornecedores.SQL.Clear;
      aDM.QFornecedores.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;
function DaoFornecedores.getDS: TObject;
begin
   result:= aDM.DSFornecedores;
end;

procedure DaoFornecedores.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Fornecedores where codFornecedor = '+quotedstr(pChave)
  else
        mSql := 'select * from Fornecedores where Fornecedor like '+quotedstr('%'+pChave+'%') +' order by fornecedor '
  else
        msql := 'select * from Fornecedores order by Fornecedor';
  aDM.QFornecedores.Active := false;
  aDM.QFornecedores.SQL.Clear;
  aDM.QFornecedores.SQL.Add(mSql);
  aDM.QFornecedores.Open();
end;

function DaoFornecedores.Salvar(pObj: TObject): string;
var
   mSql  : string;
   mFornecedor: Fornecedores;
begin
    try
      aDM.Trans.StartTransaction;
      mFornecedor:= Fornecedores(pObj);
      with aDm.QFornecedores do
      begin
        if mFornecedor.getCodigo = 0 then
        mSql:= 'insert into fornecedores ( fornecedor,RazaoSocial,telefone, Email, celular, CEP, Bairro, Logradouro, Numero, Complemento, CNPJ, Site, FormaPag,Observacao,InsEstadual, codCidade ) ' + 'values(:Fornecedor,:RazaoSocial,:Telefone,:Email,:celular,:CEP,:Bairro,:Logradouro,:Numero,:Complemento,:CNPJ, :Site, :FormaPag,:Observacao,:InsEstadual, :codCidade)'
        else
        begin
          mSql := ' update Fornecedores set fornecedor = :fornecedor,RazaoSocial= :RazaoSocial,Telefone= :Telefone,Email= :Email,celular= :celular,CEP= :CEP,Bairro= :Bairro,Logradouro= :Logradouro,Numero= :Numero, ' + ' Complemento= :Complemento, CNPJ = :CNPJ, Site= :Site, FormaPag= :FormaPag, Observacao= :Observacao, InsEstadual= :InsEstadual,codCidade = :codCidade';
          mSql := mSql + ' where codFornecedor = :CodFornecedor ';

        end;
        aDM.QFornecedores.SQL.Clear;
        aDm.QFornecedores.SQL.Add(mSql);
        ParamByName('FORNECEDOR').Value :=mFornecedor.getNome;
        ParamByName('RAZAOSOCIAL').Value :=mFornecedor.getRazaoSocial;
        ParamByName('TELEFONE').Value :=mFornecedor.getTelefone;
        ParamByName('EMAIL').Value :=mFornecedor.getEmail;
        ParamByName('CELULAR').Value :=mFornecedor.getCelular;
        ParamByName('CEP').Value :=mFornecedor.getCEP;
        ParamByName('BAIRRO').Value :=mFornecedor.getBairro;
        ParamByName('LOGRADOURO').Value :=mFornecedor.getLogradouro;
        ParamByName('NUMERO').Value :=mFornecedor.getNumero;
        ParamByName('COMPLEMENTO').Value :=mFornecedor.getComplemento;
        ParamByName('CNPJ').Value :=mFornecedor.getCNPJ;
        ParamByName('SITE').Value :=mFornecedor.getSite;
        ParamByName('FormaPag').Value :=mFornecedor.getFormaPag;
        ParamByName('OBSERVACAO').Value :=mFornecedor.getObservacao;
        ParamByName('InsEstadual').Value :=mFornecedor.getInsEstadual;
        if mFornecedor.getCodigo <> 0 then
        ParamByName('codFornecedor').Value :=mFornecedor.getCodigo;
        ParamByName('CODCIDADE').Value :=mFornecedor.getaCidade.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;
    end;
end;

end.

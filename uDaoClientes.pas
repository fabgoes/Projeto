unit uDaoClientes;

interface
uses
   Data.DB, uDAO, uDM, uClientes, System.SysUtils, Datasnap.DBClient;
   type
       DaoClientes = class (DAO)
   private
   protected
   public

       function Excluir(pObj : TObject): string;                           override;
       function Salvar(pObj : TObject): string;                            override;
       function Carregar (pObjt : TObject):string;                         override;
       procedure Pesquisar ( pChave : string );                            override;
       function getDS : TObject;                                           override;
       function AcheiReg(): boolean;



   end;

implementation

{ DaoClientes }

function DaoClientes.AcheiReg: boolean;
begin
    result := not( aDm.QClientes.Eof);
end;

function DaoClientes.Carregar(pObjt: TObject): string;
var
   mCliente : Clientes;
begin
   try
     try
      mCliente := Clientes(pObjt);
      with aDM.QClientes DO
      begin
        mCliente:= Clientes(pObjt);
        mCliente.setCodigo(aDM.QClientes.FieldByName('CODCLIENTE').Value);
        mCliente.setNome( aDM.QClientes.FieldByName('CLIENTE').AsString);
        mCliente.setFormaPag( aDM.QClientes.FieldByName('FormaPag').AsString);
        mCliente.setRG( aDM.QClientes.FieldByName('RG').AsString);
        mCliente.setCPF( aDM.QClientes.FieldByName('CPF').AsString);
        mCliente.setSexo( aDM.QClientes.FieldByName('SEXO').AsString);
        mCliente.setCNPJ( aDM.QClientes.FieldByName('CNPJ').AsString);
        mCliente.setTelefone( aDM.QClientes.FieldByName('TELEFONE').AsString);
        mCliente.setEmail( aDM.QClientes.FieldByName('EMAIL').AsString);
        mCliente.setCEP( aDM.QClientes.FieldByName('CEP').AsString);
        mCliente.setBairro( aDM.QClientes.FieldByName('BAIRRO').AsString);
        mCliente.setLogradouro( aDM.QClientes.FieldByName('LOGRADOURO').AsString);
        mCliente.setNumero( aDM.QClientes.FieldByName('NUMERO').Value);
        mCliente.setComplemento( aDM.QClientes.FieldByName('Complemento').AsString);
        mCliente.setDataNasc( aDM.QClientes.FieldByName('DataNasc').AsString);
        mCliente.setDataCad( aDM.QClientes.FieldByName('DataCad').AsString);
        mCliente.setDataUltAlt( aDM.QClientes.FieldByName('DataUltAlt').AsString);
        mCliente.setCelular( aDM.QClientes.FieldByName('Celular').AsString);
        mCliente.getaCidade.setCodigo( aDM.QClientes.FieldByName('codcidade').Value);
        result := '';

      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;



function DaoClientes.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mCliente : Clientes;
begin
   try
      mCliente := Clientes(pObj);
      mSql := 'delete  from clientes where codCliente = '+ inttostr(mCliente.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QClientes.Active:= false;
      aDm.QClientes.SQL.Clear;
      aDM.QClientes.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;

function DaoClientes.getDS: TObject;
begin
   result:= aDM.DSClientes;
end;

procedure DaoClientes.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Clientes where codCliente = '+quotedstr(pChave)
  else
        mSql := 'select * from Clientes where cliente like '+quotedstr('%'+pChave+'%') +' order by cliente; '
  else
        msql := 'select * from Clientes order by cliente';
  aDM.QClientes.Active := false;
  aDM.QClientes.SQL.Clear;
  aDM.QClientes.SQL.Add(mSql);
  aDM.QClientes.Open();
end;

function DaoClientes.Salvar(pObj: TObject): string;
var
   mSql  : string;
   mCliente : Clientes;
begin
    try
      aDM.Trans.StartTransaction;
      mCliente := Clientes(pObj);
      with aDm.QClientes do
      begin
        if mCliente.getCodigo = 0 then

        mSql:= ' insert into clientes(cliente,FormaPag,CNPJ,RG,CPF,Sexo,Telefone,Celular,Email,CEP,Bairro,Logradouro,Numero,Complemento,Datanasc, DataCad, DataUltAlt,codcidade) ' + ' values(:Cliente,:FormaPag,:CNPJ,:RG,:CPF,:Sexo,:Telefone,:celular,:Email,:CEP,:Bairro,:Logradouro,:Numero,:Complemento,:Datanasc,:DataCad, :DataUltAlt,:codcidade) '
        else
        begin
          mSql := ' update Clientes set cliente= :Cliente,FormaPag= :FormaPag,CNPJ= :CNPJ,RG= :RG,CPF= :CPF,Sexo= :Sexo,Telefone= :Telefone, ' + ' celular= :celular,Email= :Email,CEP= :CEP,Bairro= :Bairro,Logradouro= :Logradouro,Numero= :Numero,Complemento= :Complemento,DataNasc= :Datanasc, codcidade = :codcidade ' ;
          mSql := mSql + ' where codCliente = :CodCliente ';


        end;
        aDM.QClientes.SQL.Clear;
        aDm.QClientes.SQL.Add(mSql);
        ParamByName('CLIENTE').Value :=mCliente.getNome;
        ParamByName('RG').Value :=mCliente.getRG;
        ParamByName('CPF').Value :=mCliente.getCPF;
        ParamByName('CNPJ').Value :=mCliente.getCNPJ;
        ParamByName('SEXO').Value :=mCliente.getSexo;
        ParamByName('TELEFONE').Value :=mCliente.getTelefone;
        ParamByName('EMAIL').Value :=mCliente.getEmail;
        ParamByName('CELULAR').Value :=mCliente.getCelular;
        ParamByName('CEP').Value :=mCliente.getCEP;
        ParamByName('BAIRRO').Value :=mCliente.getBairro;
        ParamByName('NUMERO').Value :=mCliente.getNumero;
        ParamByName('LOGRADOURO').Value :=mCliente.getLogradouro;
        ParamByName('COMPLEMENTO').Value :=mCliente.getComplemento;
        ParamByName('FORMAPAG').Value :=mCliente.getFormaPag;
        ParamByName('DATANASC').Value :=mCliente.getDataNasc;
        //ParamByName('DATACAD').Value :=mCliente.getDataCad;
        //ParamByName('DATAULTALT').Value :=mCliente.getDataUltAlt;
        if mCliente.getCodigo <> 0 then
        ParamByName('CODCLIENTE').Value :=mCliente.getCodigo;
        ParamByName('CODCIDADE').Value :=mCliente.getaCidade.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;
    end;
end;
end.





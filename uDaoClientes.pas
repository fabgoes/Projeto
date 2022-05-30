unit uDaoClientes;

interface
uses
   Data.DB, uDAO, uDM, uClientes, System.SysUtils, Datasnap.DBClient;
   type
   DaoClientes = class (DAO)
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
        mCliente.setCliente( aDM.QClientes.FieldByName('CLIENTE').AsString);
        mCliente.setRG( aDM.QClientes.FieldByName('RG').AsString);
        mCliente.setCPF( aDM.QClientes.FieldByName('CPF').AsString);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;

constructor DaoClientes.CrieObj;
begin
  inherited;

end;

function DaoClientes.Excluir(pObj: TObject): string;
begin

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
        mSql := 'select * from Clientes where Cliente like '+quotedstr('%'+pChave+'%') +' order by cliente; '
  else
        msql := 'select * from Cliente order by cliente';
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

        mSql := 'insert into clientes (cliente, RG,CPF) values ( :cliente, :RG, :CPF)'
        else
        begin
          mSql := 'update Clientes set cliente = :Cliente , RG = :RG, CPF = :CPF';
          mSql := mSql + ' where codCliente = :CodCliente';


        end;
        aDM.QClientes.SQL.Clear;
        aDm.QClientes.SQL.Add(mSql);
        ParamByName('Cliente').Value :=mCliente.getCliente;
        ParamByName('RG').Value :=mCliente.getRG;
        ParamByName('CPF').Value :=mCliente.getCPF;
        if mCliente.getCodigo <> 0 then
        ParamByName('codCliente').Value :=mCliente.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;
    end;
end;
end.





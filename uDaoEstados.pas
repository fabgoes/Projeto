unit uDaoEstados;

interface
uses
   Data.DB, uDAO, uDM, Datasnap.DBClient,System.SysUtils, uEstados;
   type
   DaoEstados = class (Dao)
   private

   protected
   public

       function Excluir(pObj : TObject): string;         override;
       function Salvar(pObj : TObject): string;          override;
       function Carregar (pObjt : TObject):string;       override;
       procedure Pesquisar ( pChave : string);           override;
       function getDS : TObject;                         override;
       function AcheiReg(): boolean;
   end;

implementation




{ DaoEstados }

function DaoEstados.AcheiReg: boolean;
begin
   result := not( aDm.QEstados.Eof);
end;

function DaoEstados.Carregar(pObjt: TObject): string;
var
   mEstado : Estados;
begin
    try
      try
      mEstado := Estados(pObjt);
      with aDM.QEstados DO
      begin
        mEstado := Estados(pObjt);
        mEstado.setCodigo(aDM.QEstados.FieldByName('CODESTADO').Value);
        mEstado.setEstado( aDM.QEstados.FieldByName('ESTADO').AsString);
        mEstado.setUF( aDM.QEstados.FieldByName('UF').AsString);
        mEstado.getoPais.setCodigo( aDM.QEstados.FieldByName('CODPAIS').Value);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;



function DaoEstados.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mEstado : Estados;
begin
   try
      mEstado := Estados(pObj);
      mSql := 'delete  from estados where codEstado = '+inttostr(mEstado.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QEstados.Active:= false;
      aDm.QEstados.SQL.Clear;
      aDM.QEstados.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;

function DaoEstados.getDS: TObject;
begin
   result := aDM.DSEstados;

end;




procedure DaoEstados.Pesquisar(pChave: string);
var
  mSql: string;
begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Estados where codEstado = '+quotedstr(pChave)
  else
        mSql := 'select * from Estados where Estado like '+quotedstr('%'+pChave+'%') +' order by Estado; '
  else
        msql := 'select * from Estados order by Estado';
  aDM.QEstados.Active := false;
  aDM.QEstados.SQL.Clear;
  aDM.QEstados.SQL.Add(mSql);
  aDM.QEstados.Open();
end;

function DaoEstados.Salvar(pObj: TObject): string;
var
   mSql    : string;
   mEstado : Estados;
begin
    try
      aDM.Trans.StartTransaction;
      mEstado := Estados(pObj);
      with aDm.QEstados do
      begin
        if mEstado.getCodigo = 0 then
        mSql := 'insert into estados (estado, uf, codpais) values ( :estado, :uf, :codpais)'
        else
        begin
          mSql := 'update Estados set estado = :Estado , uf = :uf, codpais = :codpais';
          mSql := mSql + ' where codEstado = :CodEstado';

        end;

        aDM.QEstados.SQL.Clear;
        aDm.QEstados.SQL.Add(mSql);
        ParamByName('Estado').Value :=mEstado.getEstado;
        ParamByName('UF').Value :=mEstado.getUF;
        if mEstado.getCodigo <> 0 then
        ParamByName('codEstado').Value :=mEstado.getCodigo;
        ParamByName('codpais').Value :=mEstado.getoPais.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;


end.

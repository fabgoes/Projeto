unit uDaoCidades;

interface
uses
   Data.DB, uDAO, uDM, System.SysUtils, Datasnap.DBClient, uCidades;
   type
   DaoCidades = class (Dao)
   private

   protected
   public

       function Excluir(pObj : TObject): string;         override;
       function Salvar(pObj : TObject): string;          override;
       function Carregar (pObjt : TObject):string;       override;
       procedure Pesquisar ( pChave : string );          override;
       function getDS : TObject;                         override;
       function AcheiReg(): boolean;
   end;

implementation

{ DaoCidades }

function DaoCidades.AcheiReg: boolean;
begin
   result := not( aDm.QCidades.Eof);
end;

function DaoCidades.Carregar(pObjt: TObject): string;
var
   mCidade : Cidades;
begin
   try
     try
      mCidade := Cidades(pObjt);
      with aDM.QCidades DO
      begin
        mCidade := Cidades(pObjt);
        mCidade.setCodigo(aDM.QCidades.FieldByName('CODCIDADE').Value);
        mCidade.setCidade( aDM.QCidades.FieldByName('CIDADE').AsString);
        mCidade.setDDD( aDM.QCidades.FieldByName('DDD').AsString);
        mCidade.getoEstado.setCodigo( aDM.QCidades.FieldByName('CODESTADO').Value);
        //result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;




function DaoCidades.Excluir(pObj: TObject): string;
var
   mSql    : string;
   mCidade : Cidades;
begin
   try
      mCidade := Cidades(pObj);
      mSql := 'delete from Cidades where codCidade = '+inttostr(mCidade.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QCidades.Active:= false;
      aDm.QCidades.SQL.Clear;
      aDM.QCidades.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;


function DaoCidades.getDS: TObject;
begin
    result := aDM.DSCidades;
end;



procedure DaoCidades.Pesquisar(pChave: string);
var
   mSql: string;
begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Cidades where codCidade = '+quotedstr(pChave)
  else
        mSql := 'select * from Cidades where Cidade like '+quotedstr('%'+pChave+'%') +' order by Cidade; '
  else
    mSql := 'select * from Cidades order by Cidade ';
  aDM.QCidades.Active := false;
  aDM.QCidades.SQL.Clear;
  aDM.QCidades.SQL.Add(mSql);
  aDM.QCidades.Open();
end;

function DaoCidades.Salvar(pObj: TObject): string;
var
   mSql    : string;
   mCidade : Cidades;
begin
    try
      aDM.Trans.StartTransaction;
      mCidade := Cidades(pObj);
      with aDm.QCidades do
      begin
        if mCidade.getCodigo = 0 then
        mSql := ' insert into cidades (cidade, ddd, codestado) values ( :Cidade, :ddd, :codestado)'
        else
        begin
          mSql := 'update Cidades set cidade = :Cidade , ddd = :ddd, codEstado = :codEstado';
          mSql := mSql + ' where codCidade = :CodCidade';

        end;

        aDM.QCidades.SQL.Clear;
        aDm.QCidades.SQL.Add(mSql);
        ParamByName('Cidade').Value :=mCidade.getCidade;
        ParamByName('DDD').Value :=mCidade.getDDD;

        if mCidade.getCodigo <> 0 then
        ParamByName('codCidade').Value :=mCidade.getCodigo;
        ParamByName('codEstado').Value :=mCidade.getoEstado.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;


end.

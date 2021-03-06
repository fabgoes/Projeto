unit uDaoGrupos;

interface
uses
   Data.DB, uDAO, uDM, uGrupos, System.SysUtils, Datasnap.DBClient;// uConsultaPaises;
   type
   DaoGrupos = class (DAO)
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

{ DaoGrupos }

function DaoGrupos.AcheiReg: boolean;
begin
    result := not( aDm.QGrupos.Eof);
end;


function DaoGrupos.Carregar(pObjt: TObject): string;
var
   mGrupo : Grupos;
begin
   try
     try
      mGrupo := Grupos(pObjt);
      with aDM.QGrupos DO
      begin
        mGrupo := Grupos(pObjt);
        mGrupo.setCodigo(aDM.QGrupos.FieldByName('CODGRUPO').Value);
        mGrupo.setGrupo( aDM.QGrupos.FieldByName('GRUPO').AsString);
        mGrupo.setSituacao( aDM.QGrupos.FieldByName('SITUACAO').AsString);
        mGrupo.setObservacao( aDM.QGrupos.FieldByName('OBSERVACAO').AsString);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;

constructor DaoGrupos.CrieObj;
begin
  inherited;

end;

function DaoGrupos.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mGrupo : Grupos;
begin
   try
      mGrupo := Grupos(pObj);
      mSql := 'delete from grupos where codGrupo = '+ inttostr(mGrupo.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QGrupos.Active:= false;
      aDm.QGrupos.SQL.Clear;
      aDM.QGrupos.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


      end;

end;

function DaoGrupos.getDS: TObject;
begin
    result:= aDM.DSGrupos;
end;



procedure DaoGrupos.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Grupos where codGrupo = '+quotedstr(pChave)
  else
        mSql := 'select * from Grupos where grupo like '+quotedstr('%'+pChave+'%') +' order by grupo; '
  else
        msql := 'select * from Grupos order by grupo';
  aDM.QGrupos.Active := false;
  aDM.QGrupos.SQL.Clear;
  aDM.QGrupos.SQL.Add(mSql);
  aDM.QGrupos.Open();
end;

function DaoGrupos.Salvar(pObj: TObject): string;
var
   mSql   : string;
   mGrupo : Grupos;
begin
    try
      aDM.Trans.StartTransaction;
      mGrupo := Grupos(pObj);
      with aDm.QGrupos do
      begin
        if mGrupo.getCodigo = 0 then
        mSql := 'insert into grupos (Grupo, Situacao, Observacao) values (:Grupo, :Situacao, :Observacao)'
        else
        begin
          mSql := 'update Grupos set Grupo = :Grupo , Situacao = :Situacao, Observacao = :Observacao';
          mSql := mSql + ' where codGrupo = :CodGrupo';


        end;
        aDM.QGrupos.SQL.Clear;
        aDm.QGrupos.SQL.Add(mSql);
        ParamByName('GRUPO').Value :=mGrupo.getGrupo;
        ParamByName('SITUACAO').Value :=mGrupo.getSituacao;
        ParamByName('OBSERVACAO').Value :=mGrupo.getObservacao;
        if mGrupo.getCodigo <> 0 then
        ParamByName('CODGRUPO').Value :=mGrupo.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


end;

end.

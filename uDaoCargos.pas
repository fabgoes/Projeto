unit uDaoCargos;

interface
uses
   Data.DB, uDAO, uDM, uCargos, System.SysUtils, Datasnap.DBClient;
   type
   DaoCargos = class (DAO)
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

{ DaoCargos }

function DaoCargos.AcheiReg: boolean;
begin
   result := not( aDm.QCargos.Eof);
end;

function DaoCargos.Carregar(pObjt: TObject): string;
var
   mCargo : Cargos;
begin
   try
     try
      mCargo := Cargos(pObjt);
      with aDM.QCargos DO
      begin
        mCargo := Cargos(pObjt);
        mCargo.setCodigo(aDM.QCargos.FieldByName('CODCARGO').Value);
        mCargo.setCargo( aDM.QCargos.FieldByName('Cargo').AsString);
        mCargo.setDataCad( aDM.QCargos.FieldByName('DataCad').AsString);
        mCargo.setDataUltAlt( aDM.QCargos.FieldByName('DataUtlAlt').Value);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;
constructor DaoCargos.CrieObj;
begin
  inherited;

end;

function DaoCargos.Excluir(pObj: TObject): string;
var
   mSql    : string;
   mCargo : Cargos;
begin
   try
      mCargo := Cargos(pObj);
      mSql := 'delete from Cargos where codCargo = '+inttostr(mCargo.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QCargos.Active:= false;
      aDm.QCargos.SQL.Clear;
      aDM.QCargos.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;

function DaoCargos.getDS: TObject;
begin
   result := aDM.DSCargos;
end;

procedure DaoCargos.Pesquisar(pChave: string);
var
   mSql: string;
begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Cargos where codCargo = '+quotedstr(pChave)
  else
        mSql := 'select * from Cargos where Cargo like '+quotedstr('%'+pChave+'%') +' order by Cargo; '
  else
    mSql := 'select * from Cargos order by Cargo ';
  aDM.QCargos.Active := false;
  aDM.QCargos.SQL.Clear;
  aDM.QCargos.SQL.Add(mSql);
  aDM.QCargos.Open();
end;

function DaoCargos.Salvar(pObj: TObject): string;
var
   mSql    : string;
   mCargo : Cargos;
begin
    try
      aDM.Trans.StartTransaction;
      mCargo := Cargos(pObj);
      with aDm.QCargos do
      begin
        if mCargo.getCodigo = 0 then
        mSql := ' insert into cargos (cargo, dataCad, dataUltAlt) values (:cargo, :dataCad, :dataUltAlt)'
        else
        begin
          mSql := 'update Cargos set cargo = :Cargo , dataCad = :dataCad, dataUltAlt = :dataUltAlt';
          mSql := mSql + ' where codCargo = :CodCargo';

        end;

        aDM.QCargos.SQL.Clear;
        aDm.QCargos.SQL.Add(mSql);
        ParamByName('Cargo').Value :=mCargo.getCargo;
        ParamByName('dataCad').Value :=mCargo.getdataCad;
        ParamByName('dataUltAlt').Value :=mCargo.getdataUltAlt;


        if mCargo.getCodigo <> 0 then
        ParamByName('codCidade').Value :=mCargo.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;


end.

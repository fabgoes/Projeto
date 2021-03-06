unit uDaoPaises;

interface
uses
   Data.DB, uDAO, uDM, uPaises, System.SysUtils, Datasnap.DBClient;// uConsultaPaises;
   type
   DaoPaises = class (DAO)
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

{ DaoPaises }

function DaoPaises.AcheiReg: boolean;
begin
    result := not( aDm.QPaises.Eof);
end;


function DaoPaises.Carregar(pObjt: TObject): string;
var
   mPais : Paises;
begin
   try
     try
      mPais := Paises(pObjt);
      with aDM.QPaises DO
      begin
        mPais := Paises(pObjt);
        mPais.setCodigo(aDM.QPaises.FieldByName('CODPAIS').Value);
        mPais.setPais( aDM.QPaises.FieldByName('PAIS').AsString);
        mPais.setDDI( aDM.QPaises.FieldByName('DDI').AsString);
        mPais.setSigla( aDM.QPaises.FieldByName('SIGLA').AsString);
        mPais.setDataCad( aDM.QPaises.FieldByName('DataCad').AsString);
        mPais.setDataUltAlt( aDM.QPaises.FieldByName('DataUltAlt').AsString);
        result := '';
      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;

constructor DaoPaises.CrieObj;
begin
  inherited;

end;

function DaoPaises.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mPais : Paises;
begin
   try
      mPais:= Paises(pObj);
      mSql := 'delete  from paises where codPais = '+inttostr(mPais.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QPaises.Active:= false;
      aDm.QPaises.SQL.Clear;
      aDM.QPaises.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;

function DaoPaises.getDS: TObject;
begin
    result:= aDM.DSPaises;
end;



procedure DaoPaises.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Paises where codPais = '+quotedstr(pChave)
  else
        mSql := 'select * from Paises where Pais like '+quotedstr('%'+pChave+'%') +' order by Pais; '
  else
        msql := 'select * from Paises order by pais';
  aDM.QPaises.Active := false;
  aDM.QPaises.SQL.Clear;
  aDM.QPaises.SQL.Add(mSql);
  aDM.QPaises.Open();
end;

function DaoPaises.Salvar(pObj: TObject): string;
var
   mSql  : string;
   mPais : Paises;
begin
    try
      aDM.Trans.StartTransaction;
      mPais := Paises(pObj);
      with aDm.QPaises do
      begin
        if mPais.getCodigo = 0 then

        mSql := 'insert into paises (pais, ddi,sigla) values ( :Pais, :ddi, :sigla)'
        else
        begin
          mSql := 'update Paises set pais = :Pais , ddi = :ddi, sigla = :sigla';
          mSql := mSql + ' where codPais = :CodPais';


        end;
        aDM.QPaises.SQL.Clear;
        aDm.QPaises.SQL.Add(mSql);
        ParamByName('Pais').Value :=mPais.getPais;
        ParamByName('DDI').Value :=mPais.getDDI;
        ParamByName('SIGLA').Value :=mPais.getSigla;
        if mPais.getCodigo <> 0 then
        ParamByName('codPais').Value :=mPais.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;













end.

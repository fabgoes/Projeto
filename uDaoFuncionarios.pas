unit uDaoFuncionarios;

interface
uses
   Data.DB, uDAO, uDM, uFuncionarios, System.SysUtils, Datasnap.DBClient;
   type
   DaoFuncionarios = class (DAO)
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

{ DaoFuncionarios }

function DaoFuncionarios.AcheiReg: boolean;
begin
    result := not( aDm.QFuncionarios.Eof);
end;

function DaoFuncionarios.Carregar(pObjt: TObject): string;
var
   mFuncionario: Funcionarios;
begin
   try
     try
     // mFuncionario:= Funcionarios(pObjt);
      with aDM.QFuncionarios DO
      begin
        mFuncionario:= Funcionarios(pObjt);
        mFuncionario.setCodigo(aDM.QFuncionarios.FieldByName('CODFUNCIONARIO').Value);
        mFuncionario.setNome( aDM.QFuncionarios.FieldByName('FUNCIONARIO').AsString);
        mFuncionario.setRG( aDM.QFuncionarios.FieldByName('RG').AsString);
        mFuncionario.setCPF( aDM.QFuncionarios.FieldByName('CPF').AsString);
        mFuncionario.setSexo( aDM.QFuncionarios.FieldByName('SEXO').AsString);
        mFuncionario.setTelefone( aDM.QFuncionarios.FieldByName('TELEFONE').AsString);
        mFuncionario.setEmail( aDM.QFuncionarios.FieldByName('EMAIL').AsString);
        mFuncionario.setCEP( aDM.QFuncionarios.FieldByName('CEP').AsString);
        mFuncionario.setBairro( aDM.QFuncionarios.FieldByName('BAIRRO').AsString);
        mFuncionario.setLogradouro( aDM.QFuncionarios.FieldByName('LOGRADOURO').AsString);
        mFuncionario.setNumero( aDM.QFuncionarios.FieldByName('NUMERO').Value);
        mFuncionario.setComplemento( aDM.QFuncionarios.FieldByName('Complemento').AsString);
        mFuncionario.setVSalario( aDM.QFuncionarios.FieldByName('VSalario').Value);
        mFuncionario.setDataAdmissao( aDM.QFuncionarios.FieldByName('DataAdmissao').AsString);
        mFuncionario.setDataDemissao( aDM.QFuncionarios.FieldByName('DataDemissao').AsString);
        mFuncionario.getoCargo.setCodigo( aDM.QFuncionarios.FieldByName('CodCargo').Value);
        mFuncionario.setDataNasc( aDM.QFuncionarios.FieldByName('DataNasc').AsString);
        mFuncionario.setCelular( aDM.QFuncionarios.FieldByName('Celular').AsString);
        mFuncionario.getaCidade.setCodigo( aDM.QFuncionarios.FieldByName('codcidade').Value);
        result := '';

      end;
   except on e:exception do
      result:= 'Erro ao carregar: '+ e.Message;
   end;

 finally

 end;
end;



constructor DaoFuncionarios.CrieObj;
begin
  inherited;

end;

function DaoFuncionarios.Excluir(pObj: TObject): string;
var
   mSql  : string;
   mFuncionario: Funcionarios;
begin
   try
      mFuncionario:= Funcionarios(pObj);
      mSql := 'delete from funcionarios where codFuncionario = '+ inttostr(mFuncionario.getCodigo);
      aDm.Trans.StartTransaction;
      aDM.QFuncionarios.Active:= false;
      aDm.QFuncionarios.SQL.Clear;
      aDM.QFuncionarios.ExecSQL(mSql);
      aDM.Trans.Commit;
      result := '';
   except on e: Exception do
   begin
      aDM.Trans.Rollback;
      result := 'Erro ao Excluir : '  + e.Message;
   end;


   end;

end;

function DaoFuncionarios.getDS: TObject;
begin
   result:= aDM.DSFuncionarios;
end;

procedure DaoFuncionarios.Pesquisar(pChave: string);
var
   mSql: string;

begin
   if pChave <> ' ' then
      if ehNumero(pChave) then
         mSql := 'select * from Funcionarios where codFuncionario = '+quotedstr(pChave)
  else
        mSql := 'select * from funcionarios where funcionario like '+quotedstr('%'+pChave+'%') +' order by funcionario; '
  else
        msql := 'select * from funcionarios order by funcionario';
  aDM.QFuncionarios.Active := false;
  aDM.QFuncionarios.SQL.Clear;
  aDM.QFuncionarios.SQL.Add(mSql);
  aDM.QFuncionarios.Open();
end;

function DaoFuncionarios.Salvar(pObj: TObject): string;
var
   mSql  : string;
   mFuncionario: Funcionarios;
begin
    try
      aDM.Trans.StartTransaction;
      mFuncionario:= Funcionarios(pObj);
      with aDm.QFuncionarios do
      begin
        if mFuncionario.getCodigo = 0 then

        mSql:='insert into Funcionarios(funcionario,RG,CPF,Sexo,Telefone,Email,Celular,CEP,Bairro,Logradouro,Numero,Complemento, VSalario,  DataAdmissao,Datanasc, DataDemissao, codCidade, codCargo)' + ' values(:Funcionario,:RG,:CPF,:Sexo,:Telefone,:Email,:celular,:CEP,:Bairro,:Logradouro,:Numero,:Complemento,:VSalario,  :DataAdmissao, :Datanasc, :DataDemissao, :codCidade, :codcargo)'
        else
        begin
          mSql := ' update Funcionarios set funcionario = :Funcionario,RG= :RG,CPF= :CPF,Sexo= :Sexo,Telefone= :Telefone,Email= :Email, celular= :celular,CEP= :CEP,Bairro= :Bairro,Logradouro= :Logradouro,Numero= :Numero, ' + ' Complemento= :Complemento, VSalario = :VSalario,DataAdmissao = :DataAdmissao,DataNasc= :Datanasc, DataDemissao = :DataDemissao, codCidade = :codCidade, codcargo= :codcargo';
          mSql := mSql + ' where codFuncionario = :CodFuncionario ';


        end;
        aDM.QFuncionarios.SQL.Clear;
        aDm.QFuncionarios.SQL.Add(mSql);
        ParamByName('FUNCIONARIO').Value :=mFuncionario.getNome;
        ParamByName('RG').Value :=mFuncionario.getRG;
        ParamByName('CPF').Value :=mFuncionario.getCPF;
        ParamByName('SEXO').Value :=mFuncionario.getSexo;
        ParamByName('TELEFONE').Value :=mFuncionario.getTelefone;
        ParamByName('EMAIL').Value :=mFuncionario.getEmail;
        ParamByName('CELULAR').Value :=mFuncionario.getCelular;
        ParamByName('CEP').Value :=mFuncionario.getCEP;
        ParamByName('BAIRRO').Value :=mFuncionario.getBairro;
        ParamByName('NUMERO').Value :=mFuncionario.getNumero;
        ParamByName('LOGRADOURO').Value :=mFuncionario.getLogradouro;
        ParamByName('COMPLEMENTO').Value :=mFuncionario.getComplemento;
        ParamByName('VSalario').Value :=mFuncionario.getVSalario;
        ParamByName('DATAADMISSAO').Value :=mFuncionario.getDataAdmissao;
        ParamByName('DATANASC').Value :=mFuncionario.getDataNasc;
        ParamByName('DATADEMISSAO').Value :=mFuncionario.getDataDemissao;
        ParamByName('CODCARGO').Value :=mFuncionario.getoCargo.getCodigo;
        if mFuncionario.getCodigo <> 0 then
        ParamByName('codFuncionario').Value :=mFuncionario.getCodigo;
        ParamByName('CODCIDADE').Value :=mFuncionario.getaCidade.getCodigo;
        ExecSQL;
      end;
      aDM.Trans.Commit;
    except
      aDM.Trans.Rollback;




      end;


    end;













end.

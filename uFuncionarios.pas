unit uFuncionarios;

interface

uses
  Classes, SysUtils, uPai, uPessoas, uCargos;

type
   Funcionarios = class (Pessoas)
  private

  protected
    DataAdmissao : string[10];
    DataDemissao : string[10];
    VSalario     : currency;
    Celular      : string[14];
    CPF          : string [11];
    RG           : string [9];
    Sexo         : string [10];
    DataNasc     : string [10];
    oCargo       : Cargos;

  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setDataAdmissao(pDataAdmissao:string);
   procedure setDataDemissao (pDataDemissao :string);
   procedure setVSalario(pVSalario:currency);
   procedure setCelular (pCelular :string);
   procedure setSexo(pSexo:string);
   procedure setRG(pRG:string);
   procedure setCPF(pCPF:string);
   procedure setDataNasc(pDataNasc:string);
   procedure setoCargo (poCargo :cargos);
   function getDataAdmissao:string;
   function getDataDemissao:string;
   function getVSalario:currency;
   function getCelular:string;
   function getSexo:string;
   function getRG:string;
   function getCPF:string;
   function getDataNasc:string;
   function getoCargo:cargos;
   function Clone: Funcionarios;


end;


implementation

{ Funcionarios }



constructor Funcionarios.CrieObj;
begin
    inherited;
    DataAdmissao    := '';
    DataDemissao    := '';
    VSalario        := 0.0;
    Celular         := '';
    Sexo            :='';
    DataNasc        := '';
    RG              := '';
    CPF             :='';
    oCargo          := cargos.CrieObj;


end;

destructor Funcionarios.Destrua_se;
begin
   inherited;
end;


function Funcionarios.getoCargo: Cargos;
begin
   result:= oCargo;
end;

function Funcionarios.getRG: string;
begin
   result:= RG;
end;

function Funcionarios.getSexo: string;
begin
   result:= Sexo;
end;

function Funcionarios.getCelular: string;
begin
   result := Celular;
end;

function Funcionarios.getCPF: string;
begin
   result:= CPF;
end;

function Funcionarios.getDataAdmissao: string;
begin
   result := DataAdmissao;
end;

function Funcionarios.getDataDemissao: string;
begin
   result := DataDemissao;
end;

function Funcionarios.getDataNasc: string;
begin
   result:= DataNasc;
end;

function Funcionarios.getVSalario: currency;
begin
   result := VSalario;
end;



procedure Funcionarios.setoCargo(poCargo: Cargos);
begin
   oCargo:= poCargo;
end;

procedure Funcionarios.setRG(pRG: string);
begin
   RG:=pRG;
end;

procedure Funcionarios.setSexo(pSexo: string);
begin
   Sexo:=pSexo;
end;

procedure Funcionarios.setCelular(pCelular: string);
begin
   Celular:= pCelular;
end;

procedure Funcionarios.setCPF(pCPF: string);
begin
   CPF:= pCPF;
end;

procedure Funcionarios.setDataAdmissao(pDataAdmissao: string);
begin
   DataAdmissao := pDataAdmissao;
end;

procedure Funcionarios.setDataDemissao(pDataDemissao: string);
begin
   DataDemissao := pDataDemissao;
end;


procedure Funcionarios.setDataNasc(pDataNasc: string);
begin
   DataNasc:= pDataNasc;
end;

procedure Funcionarios.setVSalario(pVSalario: currency);
begin
   VSalario := pVSalario;
end;

function Funcionarios.Clone: Funcionarios;
begin

   result := Funcionarios.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setNome(Nome);
   result.setSexo(Sexo);
   result.setRG(RG);
   result.setCPF(CPF);
   result.setTelefone(Telefone);
   result.setEmail(Email);
   result.setCEP(CEP);
   result.setBairro(Bairro);
   result.setLogradouro(Logradouro);
   result.setNumero(Numero);
   result.setComplemento(Complemento);
   result.setDataAdmissao(DataAdmissao);
   result.setDataDemissao(DataDemissao);
   result.setVSalario(VSalario);
   result.setCelular(Celular);
   result.setoCargo(oCargo.Clone);
   result.setDataNasc(DataNasc);

end;

end.

unit uFuncionarios;

interface

uses
  Classes, SysUtils, uPai, uPessoas;

type
   Funcionarios = class (Pessoas)
  private

  protected
    Matricula  : integer;
    RG         : string[20];
    CPF        : string[20];
    DataAdm    : string[10];
    DataDem    : string[10];
    VSalario   : double;





  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setMatricula(pMatricula:integer);
   procedure setRG(pRG:string);
   procedure setCPF(pCPF:string);
   procedure setDataAdm(pDataAdm:string);
   procedure setDataDem (pDataDem :string);
   procedure setVSalario(pVSalario:double);
   function getMatricula:integer;
   function getRG:string;
   function getCPF:string;
   function getDataAdm:string;
   function getDataDem:string;
   function getVSalario:double;
   function Clone: Funcionarios;


end;


implementation

{ Funcionarios }



constructor Funcionarios.CrieObj;
begin
    Matricula  := 0;
    RG         := '';
    CPF        := '';
    DataAdm    := '';
    DataDem    := '';
    VSalario   := 0.0;
end;

destructor Funcionarios.Destrua_se;
begin

end;

function Funcionarios.getCPF: string;
begin
   result := CPF;
end;

function Funcionarios.getDataAdm: string;
begin
   result := DataAdm;
end;

function Funcionarios.getDataDem: string;
begin
   result := DataDem;
end;

function Funcionarios.getMatricula: integer;
begin
   result := Matricula;
end;

function Funcionarios.getRG: string;
begin
   result := RG;
end;

function Funcionarios.getVSalario: double;
begin
   result := VSalario;
end;

procedure Funcionarios.setCPF(pCPF: string);
begin
   CPF := pCPF;
end;

procedure Funcionarios.setDataAdm(pDataAdm: string);
begin
   DataAdm := pDataAdm;
end;

procedure Funcionarios.setDataDem(pDataDem: string);
begin
   DataDem := pDataDem;
end;

procedure Funcionarios.setMatricula(pMatricula: integer);
begin
   Matricula := pMatricula;
end;

procedure Funcionarios.setRG(pRG: string);
begin
   RG := pRG;
end;

procedure Funcionarios.setVSalario(pVSalario: double);
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
   result.setMatricula(Matricula);
   result.setDataAdm(DataAdm);
   result.setDataDem(DataDem);
   result.setVSalario(VSalario);
   result.setDataNasc(DataNasc);

end;

end.

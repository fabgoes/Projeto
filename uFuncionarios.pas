unit uFuncionarios;

interface

uses
  Classes, SysUtils, uPai, uPessoas;

type
   Funcionarios = class (Pessoas)
  private

  protected
    DataAdmissao : string[10];
    DataDemissao : string[10];
    VSalario     : currency;
    Celular      : string[14];
    Cargo        : string[50];


  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setDataAdmissao(pDataAdmissao:string);
   procedure setDataDemissao (pDataDemissao :string);
   procedure setVSalario(pVSalario:currency);
   procedure setCelular (pCelular :string);
   procedure setCargo (pCargo :string);
   function getDataAdmissao:string;
   function getDataDemissao:string;
   function getVSalario:currency;
   function getCelular:string;
   function getCargo:string;
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
    Cargo           := '';


end;

destructor Funcionarios.Destrua_se;
begin
   inherited;
end;


function Funcionarios.getCargo: string;
begin
    result:= Cargo;
end;

function Funcionarios.getCelular: string;
begin
   result := Celular;
end;

function Funcionarios.getDataAdmissao: string;
begin
   result := DataAdmissao;
end;

function Funcionarios.getDataDemissao: string;
begin
   result := DataDemissao;
end;

function Funcionarios.getVSalario: currency;
begin
   result := VSalario;
end;



procedure Funcionarios.setCargo(pCargo: string);
begin
   Cargo:= pCargo;
end;

procedure Funcionarios.setCelular(pCelular: string);
begin
   Celular:= pCelular;
end;

procedure Funcionarios.setDataAdmissao(pDataAdmissao: string);
begin
   DataAdmissao := pDataAdmissao;
end;

procedure Funcionarios.setDataDemissao(pDataDemissao: string);
begin
   DataDemissao := pDataDemissao;
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
   result.setCargo(Cargo);
   result.setDataNasc(DataNasc);

end;

end.

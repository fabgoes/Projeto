unit uPessoas;

interface

uses
  Classes, SysUtils, uPai;

type Pessoas = class (Pai)
  protected
    Nome       : string[50];
    Sexo       : string[10];
    Telefone   : string[10];
    Email      : string[50];
    CEP        : string[10];
    Bairro     : string[50];
    Logradouro : string[50];
    Numero     : integer;
    Complemento: string[50];
    DataNasc   : string[10];


  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setNome(pNome:string);
   procedure setSexo(pSexo:string);
   procedure setTelefone(pTelefone:string);
   procedure setEmail(pEmail:string);
   procedure setCEP(pCEP:string);
   procedure setBairro(pBairro:string);
   procedure setLogradouro(pLogradouro:string);
   procedure setNumero(pNumero:integer);
   procedure setComplemento(pComplemento:string);
   procedure setDataNasc(pDataNasc:string);
   function getNome:string;
   function getSexo:string;
   function getTelefone:string;
   function getEmail:string;
   function getCEP:string;
   function getBairro:string;
   function getLogradouro:string;
   function getNumero:integer;
   function getComplemento:string;
   function getDataNasc:string;
   function Clone: Pessoas;

end;

implementation

{ Pessoas }



constructor Pessoas.CrieObj;
begin
   Nome:= '';
   Sexo:='';
   Telefone:= '';
   Email:= '';
   CEP:= '';
   Bairro:= '';
   Logradouro:= '';
   Numero:= 0;
   Complemento:= '';
   DataNasc:= '';

end;

destructor Pessoas.Destrua_se;
begin

end;

function Pessoas.getBairro: string;
begin
   result := Bairro;
end;

function Pessoas.getCEP: string;
begin
   result:= CEP;
end;

function Pessoas.getComplemento: string;
begin
   result:=Complemento;
end;



function Pessoas.getDataNasc: string;
begin
   result := DataNasc;
end;

function Pessoas.getEmail: string;
begin
   result := Email;
end;

function Pessoas.getLogradouro: string;
begin
   result := Logradouro;
end;

function Pessoas.getNome: string;
begin
   result := Nome;
end;

function Pessoas.getNumero: integer;
begin
   result := Numero;
end;



function Pessoas.getSexo: string;
begin
   result := Sexo;
end;

function Pessoas.getTelefone: string;
begin
   result := Telefone;
end;

procedure Pessoas.setBairro(pBairro: string);
begin
   Bairro:= pBairro;
end;

procedure Pessoas.setCEP(pCEP: string);
begin
   CEP:= pCEP;
end;

procedure Pessoas.setComplemento(pComplemento: string);
begin
   Complemento:= pComplemento;
end;



procedure Pessoas.setDataNasc(pDataNasc: string);
begin
   DataNasc:=pDataNasc;
end;

procedure Pessoas.setEmail(pEmail: string);
begin
   Email:=pEmail;
end;

procedure Pessoas.setLogradouro(pLogradouro: string);
begin
   Logradouro:=pLogradouro;
end;

procedure Pessoas.setNome(pNome: string);
begin
   Nome:=pNome;
end;

procedure Pessoas.setNumero(pNumero: integer);
begin
   Numero:=pNumero;
end;


procedure Pessoas.setSexo(pSexo: string);
begin
   Sexo:=pSexo;
end;

procedure Pessoas.setTelefone(pTelefone: string);
begin
   Telefone:=pTelefone;
end;

function Pessoas.Clone: Pessoas;
begin
   result:= Pessoas.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setNome(Nome);
   result.setSexo(Sexo);
   result.setTelefone(Telefone);
   result.setEmail(Email);
   result.setCEP(CEP);
   result.setBairro(Bairro);
   result.setLogradouro(Logradouro);
   result.setNumero(Numero);
   result.setComplemento(Complemento);
   result.setDataNasc(DataNasc);

end;

end.
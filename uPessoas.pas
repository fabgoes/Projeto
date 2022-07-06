unit uPessoas;

interface

uses
  Classes, SysUtils, uPai, uCidades, Vcl.ComCtrls;

type
   Pessoas = class (Pai)
  protected
    Nome       : string[50];
    //Sexo       : string[10];
    //RG         : string[9];
   // CPF        : string[11];
    Telefone   : string[14];
    Email      : string[50];
    CEP        : string[5];
    Bairro     : string[50];
    Logradouro : string[50];
    Numero     : string[5];
    Complemento: string[50];
    DataNasc   : string[10];
    aCidade    : cidades;


  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setNome(pNome:string);
   procedure setTelefone(pTelefone:string);
   procedure setEmail(pEmail:string);
   procedure setCEP(pCEP:string);
   procedure setBairro(pBairro:string);
   procedure setLogradouro(pLogradouro:string);
   procedure setNumero(pNumero:string);
   procedure setComplemento(pComplemento:string);
   procedure setaCidade(pCidade:cidades);
   function getNome:string;
   function getTelefone:string;
   function getEmail:string;
   function getCEP:string;
   function getBairro:string;
   function getLogradouro:string;
   function getNumero:string;
   function getComplemento:string;
   function getaCidade:Cidades;
   function Clone: Pessoas;

end;

implementation

{ Pessoas }



constructor Pessoas.CrieObj;
begin
   inherited;
   Nome:= '';
   Telefone:= '';
   Email:= '';
   CEP:= '';
   Bairro:= '';
   Logradouro:= '';
   Numero:= '';
   Complemento:= '';
   aCidade := Cidades.crieObj;

end;

destructor Pessoas.Destrua_se;
begin
   inherited;
end;

function Pessoas.getBairro: string;
begin
   result := Bairro;
end;

function Pessoas.getCEP: string;
begin
   result := CEP;
end;

function Pessoas.getaCidade: Cidades;
begin
   result := aCidade.clone;
end;

function Pessoas.getComplemento: string;
begin
   result := Complemento;
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


function Pessoas.getNumero: string;
begin
   result :=  Numero;
end;



function Pessoas.getTelefone: string;
begin
   result :=Telefone;
end;

procedure Pessoas.setaCidade(pCidade: Cidades);
begin
   aCidade:= pCidade;
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


procedure Pessoas.setEmail(pEmail: string);
begin
   Email := pEmail;
end;

procedure Pessoas.setLogradouro(pLogradouro: string);
begin
   Logradouro := pLogradouro;
end;

procedure Pessoas.setNome(pNome: string);
begin
   Nome:=pNome;
end;




procedure Pessoas.setNumero(pNumero:string);
begin
    Numero:=pNumero;
end;


procedure Pessoas.setTelefone(pTelefone: string);
begin
   Telefone := pTelefone;
end;

function Pessoas.Clone: Pessoas;
begin
   result:= Pessoas.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setNome(Nome);
   result.setTelefone(Telefone);
   result.setEmail(Email);
   result.setCEP(CEP);
   result.setBairro(Bairro);
   result.setLogradouro(Logradouro);
   result.setNumero(Numero);
   result.setaCidade(aCidade.clone);
   result.setComplemento(Complemento);



end;

end.

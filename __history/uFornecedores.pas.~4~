unit uFornecedores;

interface

uses
  Classes, SysUtils, uPai, uPessoas;

type
   Fornecedores = class (Pessoas)
  protected
    CNPJ       : string[20];
    RG         : string[10];
    CPF        : string[20];
    Site       : string[100];
    Observacao : string[200];
    RazaoSocial: string[50];




  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setCNPJ(pCNPJ:string);
   procedure setRG(pRG:string);
   procedure setCPF(pCPF:string);
   procedure setSite(pSite:string);
   procedure setObservacao(pObservacao:string);
   procedure setRazaoSocial(pRazaoSocial:string);
   function getCNPJ:string;
   function getRG:string;
   function getCPF:string;
   function getSite:string;
   function getObservacao:string;
   function getRazaoSocial:string;
   function Clone: Fornecedores;


end;


implementation

{ Fornecedores }



constructor Fornecedores.CrieObj;
begin
   CNPJ       := '';
   RG         := '';
   CPF        := '';
   Site       := '';
   Observacao := '';
   RazaoSocial:= '';
end;

destructor Fornecedores.Destrua_se;
begin

end;

function Fornecedores.getCNPJ: string;
begin
   result:=CNPJ;
end;

function Fornecedores.getCPF: string;
begin
   result:=CPF;
end;

function Fornecedores.getObservacao: string;
begin
    result := Observacao;
end;

function Fornecedores.getRazaoSocial: string;
begin
   result:= RazaoSocial;
end;

function Fornecedores.getRG: string;
begin
   result := RG;
end;

function Fornecedores.getSite: string;
begin
   result:= Site;
end;

procedure Fornecedores.setCNPJ(pCNPJ: string);
begin
   CNPJ:=pCNPJ;
end;

procedure Fornecedores.setCPF(pCPF: string);
begin
   CPF := pCPF;
end;

procedure Fornecedores.setObservacao(pObservacao: string);
begin
   Observacao := pObservacao;
end;

procedure Fornecedores.setRazaoSocial(pRazaoSocial: string);
begin
   RazaoSocial:=pRazaoSocial;
end;

procedure Fornecedores.setRG(pRG: string);
begin
   RG := pRG;
end;

procedure Fornecedores.setSite(pSite: string);
begin
   Site:= pSite;
end;

function Fornecedores.Clone: Fornecedores;
begin
   result := Fornecedores.CrieObj;
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
   result.setCNPJ(CNPJ);
   result.setSite(Site);
   result.setObservacao(Observacao);
   result.setRazaoSocial(RazaoSocial);
   result.setDataNasc(DataNasc);
end;

end.

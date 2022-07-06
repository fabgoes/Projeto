unit uFornecedores;

interface

uses
  Classes, SysUtils, uPai, uPessoas;

type
   Fornecedores = class (Pessoas)
  private

  protected
    CNPJ              : string[11];
    Site              : string[100];
    RazaoSocial       : string[50];
    Celular           : string[14];
    FormaPag          : string[10];
    Observacao        : string[200];
    InsEstadual       : string[11];




  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setCNPJ(pCNPJ:string);
   procedure setSite(pSite:string);
   procedure setFormaPag(pFormaPag:string);
   procedure setObservacao(pObservacao:string);
   procedure setRazaoSocial(pRazaoSocial:string);
   procedure setCelular(pCelular:string);
   procedure setInsEstadual (pInsEstadual :string);
   function getCNPJ:string;
   function getSite:string;
   function getFormaPag:string;
   function getObservacao:string;
   function getRazaoSocial:string;
   function getCelular:string;
   function getInsEstadual :string;
   function Clone: Fornecedores;


end;


implementation

{ Fornecedores }



constructor Fornecedores.CrieObj;
begin
   inherited;
   CNPJ           := '';
   Site           := '';
   RazaoSocial    := '';
   Celular        := '';
   FormaPag       := '';
   Observacao     := '';
   InsEstadual    :='';

end;

destructor Fornecedores.Destrua_se;
begin
   inherited;
end;

function Fornecedores.getCNPJ: string;
begin
   result:= CNPJ;
end;

function Fornecedores.getFormaPag: string;
begin
   result :=FormaPag;
end;

function Fornecedores.getInsEstadual: string;
begin
   result:= InsEstadual
end;

function Fornecedores.getObservacao: string;
begin
    result := Observacao;
end;

function Fornecedores.getRazaoSocial: string;
begin
   result:= RazaoSocial;
end;


function Fornecedores.getSite: string;
begin
   result:= Site;
end;


function Fornecedores.getCelular: string;
begin
   result:= Celular;
end;

procedure Fornecedores.setCNPJ(pCNPJ: string);
begin
   CNPJ:=pCNPJ;
end;

procedure Fornecedores.setFormaPag(pFormaPag: string);
begin
    FormaPag:= pFormaPag;
end;

procedure Fornecedores.setInsEstadual(pInsEstadual: string);
begin
   InsEstadual:=pInsEstadual;
end;

procedure Fornecedores.setObservacao(pObservacao: string);
begin
   Observacao := pObservacao;
end;

procedure Fornecedores.setRazaoSocial(pRazaoSocial: string);
begin
   RazaoSocial:=pRazaoSocial;
end;


procedure Fornecedores.setSite(pSite: string);
begin
   Site:= pSite;
end;


procedure Fornecedores.setCelular(pCelular: string);
begin
   Celular:= pCelular;
end;

function Fornecedores.Clone: Fornecedores;
begin
   result := Fornecedores.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setNome(Nome);
   result.setTelefone(Telefone);
   result.setCelular(Celular);
   result.setEmail(Email);
   result.setCEP(CEP);
   result.setBairro(Bairro);
   result.setLogradouro(Logradouro);
   result.setNumero(Numero);
   result.setComplemento(Complemento);
   result.setCNPJ(CNPJ);
   result.setFormaPag(FormaPag);
   result.setSite(Site);
   result.setCNPJ(CNPJ);
   result.setObservacao(Observacao);
   result.setRazaoSocial(RazaoSocial);
   result.setInsEstadual(InsEstadual)

end;

end.

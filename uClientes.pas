unit uClientes;

interface

uses
  Classes, SysUtils, uPai, uPessoas,  Vcl.ComCtrls;

type
   Clientes = class (Pessoas)
  protected
    FormaPag   : string [50];
    CNPJ       : string [11];
    Celular    : string [14];






  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setFormaPag(pFormaPag:string);
   procedure setCNPJ(pCNPJ:string);
   procedure setCelular(pCelular:string);
   function getFormaPag:string;
   function getCNPJ:string;
   function getCelular:string;
   function Clone: Clientes;


end;


implementation

{ Clientes }



constructor Clientes.CrieObj;
begin
  inherited;
  FormaPag := '';
  CNPJ     := '';
  Celular  := '';

end;

destructor Clientes.Destrua_se;
begin
   inherited;
end;




function Clientes.getCelular: string;
begin
    result:= Celular;
end;

function Clientes.getCNPJ: string;
begin
   result := CNPJ;
end;

function Clientes.getFormaPag: string;
begin
   result:= FormaPag;
end;



procedure Clientes.setCelular(pCelular: string);
begin
   Celular:= pCelular;
end;

procedure Clientes.setCNPJ(pCNPJ: string);
begin
    CNPJ := pCNPJ;
end;

procedure Clientes.setFormaPag(pFormaPag: string);
begin
   FormaPag:= pFormaPag;
end;



function Clientes.Clone: Clientes;
begin
   result:= Clientes.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setNome(Nome);
   result.setCNPJ(CNPJ);
   result.setFormaPag(FormaPag);
   result.setSexo(Sexo);
   result.setRG(RG);
   result.setCPF(CPF);
   result.setTelefone(Telefone);
   result.setEmail(Email);
   result.setCEP(CEP);
   result.setBairro(Bairro);
   result.setLogradouro(Logradouro);
   result.setNumero(Numero);
   result.setaCidade(aCidade.clone);
   result.setComplemento(Complemento);
   result.setDataNasc(DataNasc);
   result.setCelular(Celular);

end;

end.

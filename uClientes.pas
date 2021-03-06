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
    CPF        : string [11];
    RG         : string [9];
    Sexo       : string [10];
    DataNasc   : string [10];






  public
   constructor CrieObj;
   destructor Destrua_se;
   procedure setFormaPag(pFormaPag:string);
   procedure setCNPJ(pCNPJ:string);
   procedure setCelular(pCelular:string);
   procedure setSexo(pSexo:string);
   procedure setRG(pRG:string);
   procedure setCPF(pCPF:string);
   procedure setDataNasc(pDataNasc:string);
   function getFormaPag:string;
   function getCNPJ:string;
   function getCelular:string;
   function getSexo:string;
   function getRG:string;
   function getCPF:string;
   function getDataNasc:string;
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
  Sexo:='';
  DataNasc:= '';
  RG := '';
  CPF:='';

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

function Clientes.getCPF: string;
begin
   result := CPF;
end;

function Clientes.getDataNasc: string;
begin
   result:= DataNasc;
end;

function Clientes.getFormaPag: string;
begin
   result:= FormaPag;
end;



function Clientes.getRG: string;
begin
   result := RG;
end;

function Clientes.getSexo: string;
begin
   result := Sexo;
end;

procedure Clientes.setCelular(pCelular: string);
begin
   Celular:= pCelular;
end;

procedure Clientes.setCNPJ(pCNPJ: string);
begin
    CNPJ := pCNPJ;
end;

procedure Clientes.setCPF(pCPF: string);
begin
    CPF:= pCPF;
end;

procedure Clientes.setDataNasc(pDataNasc: string);
begin
   DataNasc:=pDataNasc;
end;

procedure Clientes.setFormaPag(pFormaPag: string);
begin
   FormaPag:= pFormaPag;
end;



procedure Clientes.setRG(pRG: string);
begin
   RG:=pRG;
end;

procedure Clientes.setSexo(pSexo: string);
begin
   Sexo:=pSexo;
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

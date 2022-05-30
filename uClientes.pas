unit uClientes;

interface

uses
  Classes, SysUtils, uPai, uPessoas;

type
   Clientes = class (Pessoas)
  protected
    //codCliente : integer;
    Cliente    : string[50];
    RG         : string[20];
    CPF        : string[20];




  public
   constructor CrieObj;
   destructor Destrua_se;
   //procedure setCodCliente(pCodCliente:integer);
   procedure setCliente(pCliente:string);
   procedure setRG(pRG:string);
   procedure setCPF(pCPF:string);
   //function getCodCliente:integer;
   function getCliente:string;
   function getRG:string;
   function getCPF:string;
   function Clone: Clientes;


end;


implementation

{ Clientes }



constructor Clientes.CrieObj;
begin
 // codCliente := 0;
  Cliente := '';
  RG:= '';
  CPF:= '';
end;

destructor Clientes.Destrua_se;
begin

end;

function Clientes.getCliente: string;
begin
   result := Cliente;
end;



function Clientes.getCPF: string;
begin
   result := CPF;
end;

function Clientes.getRG: string;
begin
   result := RG;
end;

procedure Clientes.setCliente(pCliente: string);
begin
    Cliente := pCliente;
end;


procedure Clientes.setCPF(pCPF: string);
begin
   CPF:= pCPF ;
end;

procedure Clientes.setRG(pRG: string);
begin
   RG := pRG;
end;

function Clientes.Clone: Clientes;
begin
   result:= Clientes.CrieObj;
   result.setCodigo(Codigo);
   result.setDataCad(DataCad);
   result.setDataUltAlt(DataUltAlt);
   result.setCliente(Cliente);
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
   result.setDataNasc(DataNasc);

end;

end.
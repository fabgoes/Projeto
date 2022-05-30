unit uFormadePagamentos;

interface

uses
    Classes, SysUtils, uPai;

type
   FormadePagamentos = class (Pai)
private
protected

     FormaPag: string[50];
     Situacao: string[1];

public
   constructor CrieObj;
   destructor Destrua_se;
   constructor crieInit(pCodigo : integer; pFormaPag, pSituacao, pDataCad : string);
   procedure setFormaPag (pFormaPag : string);
   procedure setSituacao (pSituacao : string);
   function getFormaPag : string;
   function getSituacao: string;
   function clone : FormadePagamentos;


   end;

implementation

{ FormadePagamentos }

function FormadePagamentos.clone: FormadePagamentos;
begin
   result := FormadePagamentos.crieObj;
   result.setCodigo(codigo);
   result.setFormaPag(FormaPag);
   result.setSituacao (Situacao );
   result.setDataCad(dataCad);
end;

constructor FormadePagamentos.crieInit(pCodigo: integer; pFormaPag, pSituacao,
  pDataCad: string);
begin
   codigo := pCodigo;
   FormaPag := pFormaPag;
   Situacao := pSituacao;
   dataCad := pDataCad;

end;

constructor FormadePagamentos.CrieObj;
begin
  inherited;
  FormaPag:= '';
  Situacao := '';


end;

destructor FormadePagamentos.Destrua_se;
begin
   inherited;
end;

function FormadePagamentos.getFormaPag: string;
begin
   result := Formapag;
end;

function FormadePagamentos.getSituacao: string;
begin
   result := Situacao;
end;

procedure FormadePagamentos.setFormaPag(pFormaPag: string);
begin
   FormaPag := pFormaPag;
end;

procedure FormadePagamentos.setSituacao(pSituacao: string);
begin
   Situacao := pSituacao;
end;

end.

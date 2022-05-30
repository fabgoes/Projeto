unit uDao;

interface
uses
  Classes, SysUtils, Data.DB, uDM, Datasnap.DBClient;
type

 DAO = class
  private
  protected
      aDM : TDM;
  public
     constructor CrieObj;                             virtual;
     destructor Destrua_se;                           virtual;
     function Excluir(pObj : TObject):string;         virtual;
     function Salvar(pObj : TObject):string;          virtual;
     function Carregar (pObjt : TObject):string;      virtual;
     procedure Pesquisar ( pChave : string );         virtual;
     function getDS : TObject;                        virtual;
     procedure setDM(pDM: TObject);                   virtual;
     function ehNumero (valor :string): boolean;


end;

implementation

{ DAO }

function DAO.Carregar(pObjt: TObject): string;
begin

end;

constructor DAO.CrieObj;
begin

end;

destructor DAO.Destrua_se;
begin

end;

function DAO.ehNumero(valor: string): boolean;
var
  mValor : integer;
begin
    result := trystrtoint(valor, mValor);
end;

function DAO.Excluir(pObj: TObject): string;
begin

end;

function DAO.getDS: TObject;
begin

end;



procedure DAO.Pesquisar(pChave: string);
begin

end;

function DAO.Salvar(pObj: TObject): string;
begin


end;

procedure DAO.setDM(pDM: TObject);
begin
    aDM := TDM(pDM);


   try
     if not aDM.Conexao.Connected then
        aDM.Conexao.Connected := true;
     if not aDM.Trans.Active then
        aDM.Conexao.Open();
   Except



   end;


end;

end.

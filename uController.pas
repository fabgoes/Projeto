unit uController;

interface
uses
   System.SysUtils, Data.DB, uDM, Datasnap.DBClient;
type
  controller = class
    private
    protected
    public
       constructor CrieObj;                             virtual;
       destructor Destrua_se;                           virtual;
       function  Excluir(pObj : TObject):string;        virtual;
       function  Salvar(pObj : TObject):string;         virtual;
       function Carregar (pObjt : TObject):string;      virtual;
       procedure Pesquisar ( pChave : string );         virtual;
       function getDS : TObject;                        virtual;
       Procedure setDM(pObj : TObject);                 virtual;

  end;

implementation

{ controller }


function controller.Carregar(pObjt: TObject): string;
begin

end;

constructor controller.CrieObj;
begin

end;

destructor controller.Destrua_se;
begin

end;

function controller.Excluir(pObj: TObject): string;
begin

end;

function controller.getDS: TObject;
begin
    result := getDS;

end;


procedure controller.Pesquisar(pChave: string);
begin

end;

function controller.Salvar(pObj: TObject): string;
begin

end;

procedure controller.setDM(pObj: TObject);
begin

end;

end.

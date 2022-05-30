unit uInter;

interface
uses
   uPaises, uEstados, uCidades, uConsultaPaises, uConsultaEstados, uConsultaCidades, uCadastroPaises,
   uCadastroEstados, uCadastroCidades, uConsultaPai, uCadastroPai, uController;
type
   Inter = class

  protected
    oConsultaPaises  : TConsultaPaises;
    oConsultaEstados : TConsultaEstados;
    oConsultaCidades : TConsultaCidades;

    oCadastroPaises  : TCadastroPaises;
    oCadastroEstados : TCadastroEstados;
    oCadastroCidades : TCadastroCidades;




  public
     constructor CrieObj;
     destructor Destrua_se;
     procedure PDPaises (pObj: TObject; pCtrl : Controller);
     procedure PDCidades(pObj: TObject; pCtrl : Controller);
     procedure PDEstados(pObj: TObject; pCtrl : Controller);


  end;


implementation

{ Inter }

constructor Inter.CrieObj;
begin
    oConsultaPaises               := TConsultaPaises.Create(nil);
    oConsultaEstados              := TConsultaEstados.Create(nil);
    oConsultaCidades              := TConsultaCidades.Create(nil);

    oCadastroPaises               := TCadastroPaises.Create(nil);
    oCadastroEstados              := TCadastroEstados.Create(nil);
    oCadastroCidades              := TCadastroCidades.Create(nil);

    oConsultaPaises.setCad(oCadastroPaises);
    oConsultaEstados.setCad(oCadastroEstados);
    oConsultaCidades.setCad(oCadastroCidades);

    oCadastroEstados.setConsulta(oConsultaPaises);
    oCadastroCidades.setConsulta(oConsultaEstados);

end;

destructor Inter.Destrua_se;
begin
    oConsultaPaises.FreeInstance;
    oConsultaEstados.FreeInstance;
    oCadastroCidades.FreeInstance;

    oCadastroPaises.FreeInstance;
    oCadastroEstados.FreeInstance;
    oCadastroCidades.FreeInstance;

end;

procedure Inter.PDCidades(pObj: TObject; pCtrl : Controller);
begin
   oConsultaCidades.conhecaObj(pObj, pCtrl );
   oConsultaCidades.ShowModal;
end;

procedure Inter.PDEstados(pObj: TObject; pCtrl : Controller);
begin
    oConsultaEstados.conhecaObj(pObj, pCtrl );
    oConsultaEstados.ShowModal;
end;

procedure Inter.PDPaises(pObj: TObject; pCtrl : Controller);
begin
   oConsultaPaises.conhecaObj(pObj, pCtrl );
   oConsultaPaises.ShowModal;

end;

end.

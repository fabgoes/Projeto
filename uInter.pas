unit uInter;

interface
uses
   uPaises, uEstados, uCidades, uConsultaPaises, uConsultaEstados, uConsultaCidades, uCadastroPaises,
   uCadastroEstados, uCadastroCidades, uConsultaPai, uCadastroPai, uController,
   uConsultaClientes, uCadastrodeClientes, uConsultaFuncionarios,
   uCadastrodeFuncionarios, uConsultaFornecedores, uCadastrodeFornecedores,
   uConsultaGrupos, uCadastrodeGrupos, uConsultaProdutos, uCadastrodeProdutos,
   uConsultaCargos, uCadastrodeCargos;
type
   Inter = class

  protected
    oConsultaPaises         : TConsultaPaises;
    oConsultaEstados        : TConsultaEstados;
    oConsultaCidades        : TConsultaCidades;

    oConsultaClientes       : TConsultaClientes;
    oConsultaFuncionarios   : TConsultaFuncionarios;
    oConsultaFornecedores   : TConsultaFornecedores;
    oConsultaGrupos         : TConsultaGrupos;
    oConsultaProdutos       : TConsultaProdutos;
    oConsultaCargos         : TConsultaCargos;

    oCadastroPaises         : TCadastroPaises;
    oCadastroEstados        : TCadastroEstados;
    oCadastroCidades        : TCadastroCidades;

    oCadastroClientes       : TCadastrodeClientes;
    oCadastrodeFuncionarios : TCadastrodeFuncionarios;
    oCadastrodeFornecedores : TCadastrodeFornecedores;
    oCadastrodeGrupos       : TCadastrodeGrupos;
    oCadastrodeProdutos     : TCadastrodeProdutos;
    oCadastrodeCargos       : TCadastrodeCargos;




  public
     constructor CrieObj;
     destructor Destrua_se;
     procedure PDPaises (pObj: TObject; pCtrl : Controller);
     procedure PDCidades(pObj: TObject; pCtrl : Controller);
     procedure PDEstados(pObj: TObject; pCtrl : Controller);
     procedure PDClientes(pObj: TObject; pCtrl : Controller);
     procedure PDFuncionarios(pObj: TObject; pCtrl : Controller);
     procedure PDFornecedores(pObj: TObject; pCtrl : Controller);
     procedure PDGrupos(pObj: TObject; pCtrl : Controller);
     procedure PDProdutos(pObj: TObject; pCtrl : Controller);
     procedure PDCargos(pObj: TObject; pCtrl : Controller);



  end;


implementation

{ Inter }

constructor Inter.CrieObj;
begin
    oConsultaPaises               := TConsultaPaises.Create(nil);
    oConsultaEstados              := TConsultaEstados.Create(nil);
    oConsultaCidades              := TConsultaCidades.Create(nil);
    oConsultaClientes             := TConsultaClientes.Create(nil);
    oConsultaFuncionarios         := TConsultaFuncionarios.Create(nil);
    oConsultaFornecedores         := TConsultaFornecedores.Create(nil);
    oConsultaGrupos               := TConsultaGrupos.Create(nil);
    oConsultaProdutos             := TConsultaProdutos.Create(nil);
    oConsultaCargos               := TConsultaCargos.Create(nil);


    oCadastroPaises               := TCadastroPaises.Create(nil);
    oCadastroEstados              := TCadastroEstados.Create(nil);
    oCadastroCidades              := TCadastroCidades.Create(nil);
    oCadastroClientes             := TCadastrodeClientes.Create(nil);
    oCadastrodeFuncionarios       := TCadastrodeFuncionarios.Create(nil);
    oCadastrodeFornecedores       := TCadastrodeFornecedores.Create(nil);
    oCadastrodeGrupos             := TCadastrodeGrupos.Create(nil);
    oCadastrodeProdutos           := TCadastrodeProdutos.Create(nil);
    oCadastrodeCargos             := TCadastrodeCargos.Create(nil);

    oConsultaPaises.setCad(oCadastroPaises);
    oConsultaEstados.setCad(oCadastroEstados);
    oConsultaCidades.setCad(oCadastroCidades);
    oConsultaClientes.setCad(oCadastroClientes);
    oConsultaFuncionarios.setCad(oCadastrodeFuncionarios);
    oConsultaFornecedores.setCad(oCadastrodeFornecedores);
    oConsultaGrupos.setCad(oCadastrodeGrupos);
    oConsultaProdutos.setCad(oCadastrodeProdutos);
    oConsultaCargos.setCad(oCadastrodeCargos);

    oCadastroEstados.setConsulta(oConsultaPaises);
    oCadastroCidades.setConsulta(oConsultaEstados);
    oCadastroClientes.setConsulta(oConsultaCidades);
    oCadastrodeFuncionarios.setConsulta(oConsultaCidades);
    oCadastrodeFuncionarios.setConsulta(oConsultaCargos);
    oCadastrodeFornecedores.setConsulta(oConsultaCidades);
    oCadastrodeProdutos.setConsulta(oConsultaGrupos);
    oCadastrodeProdutos.setConsulta(oConsultaFornecedores);

end;

destructor Inter.Destrua_se;
begin
    oConsultaPaises.FreeInstance;
    oConsultaEstados.FreeInstance;
    oConsultaCidades.FreeInstance;
    oConsultaClientes.FreeInstance;
    oConsultaFuncionarios.FreeInstance;
    oConsultaFornecedores.FreeInstance;
    oConsultaGrupos.FreeInstance;
    oConsultaProdutos.FreeInstance;
    oConsultaCargos.FreeInstance;


    oCadastroPaises.FreeInstance;
    oCadastroEstados.FreeInstance;
    oCadastroCidades.FreeInstance;
    oCadastroClientes.FreeInstance;
    oCadastrodeFuncionarios.FreeInstance;
    oCadastrodeFornecedores.FreeInstance;
    oCadastrodeGrupos.FreeInstance;
    oCadastrodeProdutos.FreeInstance;
    oCadastrodeCargos.FreeInstance;

end;

procedure Inter.PDCargos(pObj: TObject; pCtrl: Controller);
begin
   oConsultaCargos.conhecaObj(pObj, pCtrl );
   oConsultaCargos.ShowModal;
end;

procedure Inter.PDCidades(pObj: TObject; pCtrl : Controller);
begin
   oConsultaCidades.conhecaObj(pObj, pCtrl );
   oConsultaCidades.ShowModal;
end;

procedure Inter.PDClientes(pObj: TObject; pCtrl: Controller);
begin
    oConsultaClientes.conhecaObj(pObj, pCtrl );
    oConsultaClientes.ShowModal;
end;

procedure Inter.PDEstados(pObj: TObject; pCtrl : Controller);
begin
    oConsultaEstados.conhecaObj(pObj, pCtrl );
    oConsultaEstados.ShowModal;
end;

procedure Inter.PDFornecedores(pObj: TObject; pCtrl: Controller);
begin
    oConsultaFornecedores.conhecaObj(pObj, pCtrl );
    oConsultaFornecedores.ShowModal;
end;

procedure Inter.PDFuncionarios(pObj: TObject; pCtrl: Controller);
begin
   oConsultaFuncionarios.conhecaObj(pObj, pCtrl );
   oConsultaFuncionarios.ShowModal;
end;

procedure Inter.PDGrupos(pObj: TObject; pCtrl: Controller);
begin
   oConsultaGrupos.conhecaObj(pObj, pCtrl );
   oConsultaGrupos.ShowModal;
end;

procedure Inter.PDPaises(pObj: TObject; pCtrl : Controller);
begin
   oConsultaPaises.conhecaObj(pObj, pCtrl );
   oConsultaPaises.ShowModal;

end;

procedure Inter.PDProdutos(pObj: TObject; pCtrl: Controller);
begin
   oConsultaProdutos.conhecaObj(pObj, pCtrl );
   oConsultaProdutos.ShowModal;
end;

end.

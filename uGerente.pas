unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uCidades, uEstados, uPaises,
  uController, uCtrlCidades, uCtrlEstados,  uCtrlPaises,
  uInter, uDM, uDao,
  uClientes, uCtrlClientes, uFuncionarios, uCtrlFuncionarios, uFornecedores,
  uCtrlFornecedores, uGrupos, uCtrlGrupos, uProdutos, uCtrlProdutos,
  uCargos, uCtrlCargos;

type
  TGerente = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Paises1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    N2: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionarios1: TMenuItem;
    Grupos1: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Sair4: TMenuItem;
    Cargos1: TMenuItem;
    Movimentos: TMenuItem;
    ContaAPagar: TMenuItem;
    ContaAReceber: TMenuItem;
    FormaPag: TMenuItem;
    Parcelas: TMenuItem;
    CondicaoPagamentos: TMenuItem;
    Compra: TMenuItem;
    Vendas: TMenuItem;
    N1: TMenuItem;
    Sair: TMenuItem;
    procedure Paises1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair4Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
   // procedure FornecedoresClick(Sender: TObject);

  private
    { Private declarations }
    aInter           : Inter;
    aDM              : TDM;
    oPais            : Paises;
    oEstado          : Estados;
    aCidade          : Cidades;
    oCliente         : Clientes;
    oFuncionario     : Funcionarios;
    oFornecedor      : Fornecedores;
    oGrupo           : Grupos;
    oProduto         : Produtos;
    oCargo           : Cargos;

    aCtrlPais        : CtrlPaises;
    aCtrlEstado      : CtrlEstados;
    aCtrlCidade      : CtrlCidades;
    aCtrlCliente     : CtrlClientes;
    aCtrlFuncionario : CtrlFuncionarios;
    aCtrlFornecedor  : CtrlFornecedores;
    aCtrlGrupo       : CtrlGrupos;
    aCtrlProduto     : CtrlProdutos;
    aCtrlCargo       : CtrlCargos;

  public
    { Public declarations }
  end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}

procedure TGerente.Cargos1Click(Sender: TObject);
begin
    aInter.PDCargos(oCargo, aCtrlCargo);
end;

procedure TGerente.Cidades1Click(Sender: TObject);
begin
   aInter.PDCidades(aCidade, aCtrlCidade);
end;

procedure TGerente.Clientes1Click(Sender: TObject);
begin
   aInter.PDClientes(oCliente, aCtrlCliente);
end;



procedure TGerente.Estados1Click(Sender: TObject);
begin
   aInter.PDEstados(oEstado, aCtrlEstado);
end;

procedure TGerente.FormCreate(Sender: TObject);
begin
   oPais            := Paises.CrieObj;
   oEstado          := Estados.CrieObj;
   aCidade          := Cidades.crieObj;
   oCliente         := Clientes.crieObj;
   oFuncionario     := Funcionarios.CrieObj;
   oFornecedor      := Fornecedores.CrieObj;
   oGrupo           := Grupos.CrieObj;
   oProduto         := Produtos.CrieObj;
   oCargo           :=Cargos.CrieObj;

   aInter           := Inter.CrieObj;
   aCtrlPais        := CtrlPaises.CrieObj;
   aCtrlEstado      := CtrlEstados.CrieObj;
   aCtrlCidade      := CtrlCidades.CrieObj;
   aCtrlCliente     := CtrlClientes.CrieObj;
   aCtrlFuncionario := CtrlFuncionarios.CrieObj;
   aCtrlFornecedor  := CtrlFornecedores.CrieObj;
   aCtrlGrupo       := CtrlGrupos.CrieObj;
   aCtrlProduto     := CtrlProdutos.CrieObj;
   aCtrlCargo       := CtrlCargos.CrieObj;
   aDM              := TDM.Create(nil);

   aCtrlCidade.setDM(aDM);
   aCtrlEstado.setDM (aDM);
   aCtrlPais.setDM(aDM);
   aCtrlCliente.setDM(aDM);
   aCtrlFuncionario.setDM(aDM);
   aCtrlFornecedor.setDM(aDM);
   aCtrlGrupo.setDM(aDM);
   aCtrlProduto.setDM(aDM);
   aCtrlCargo.setDM(aDM);

   aCtrlEstado.setaCtrlPais(aCtrlPais);
   aCtrlCidade.setaCtrlEstado(aCtrlEstado);
   aCtrlCliente.setaCtrlCidade(aCtrlCidade);
   aCtrlFuncionario.setaCtrlCidade(aCtrlCidade);
   aCtrlFuncionario.setaCtrlCargo(aCtrlCargo);
   aCtrlFornecedor.setaCtrlCidade(aCtrlCidade);
   aCtrlProduto.setaCtrlGrupo(aCtrlGrupo);
   aCtrlProduto.setaCtrlFornecedor(aCtrlFornecedor);


end;



procedure TGerente.Fornecedores1Click(Sender: TObject);
begin
   aInter.PDFornecedores(oFornecedor, aCtrlFornecedor);
end;

procedure TGerente.Funcionarios1Click(Sender: TObject);
begin
   aInter.PDFuncionarios(oFuncionario, aCtrlFuncionario);
end;

procedure TGerente.Grupos1Click(Sender: TObject);
begin
   aInter.PDGrupos(oGrupo, aCtrlGrupo);
end;

procedure TGerente.Paises1Click(Sender: TObject);
begin
   aInter.PDPaises(oPais, aCtrlPais);
end;

procedure TGerente.Produtos1Click(Sender: TObject);
begin
   aInter.PDProdutos(oProduto, aCtrlProduto);
end;

procedure TGerente.Sair4Click(Sender: TObject);
begin
   close;
end;

end.

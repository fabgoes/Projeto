unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uCidades, uEstados, uPaises,
  uController, uCtrlCidades, uCtrlEstados,  uCtrlPaises,
  uInter, uDM, uDao;

type
  TGerente = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Paises1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    N2: TMenuItem;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Funcionarios1: TMenuItem;
    Servios1: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    Parcelas1: TMenuItem;
    Parcelas2: TMenuItem;
    N4: TMenuItem;
    Sair2: TMenuItem;
    ContasaReceber1: TMenuItem;
    N5: TMenuItem;
    Sair3: TMenuItem;
    N6: TMenuItem;
    Sair4: TMenuItem;
    procedure Paises1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair4Click(Sender: TObject);
  private
    { Private declarations }
    aInter  : Inter;
    aDM     : TDM;
    oPais   : Paises;
    oEstado : Estados;
    aCidade : Cidades;

    aCtrlPais    : CtrlPaises;
    aCtrlEstado  : CtrlEstados;
    aCtrlCidade  : CtrlCidades;

  public
    { Public declarations }
  end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}

procedure TGerente.Cidades1Click(Sender: TObject);
begin
   aInter.PDCidades(aCidade, aCtrlCidade);
end;

procedure TGerente.Estados1Click(Sender: TObject);
begin
   aInter.PDEstados(oEstado, aCtrlEstado);
end;

procedure TGerente.FormCreate(Sender: TObject);
begin
   oPais        := Paises.CrieObj;
   oEstado      := Estados.CrieObj;
   aCidade      := Cidades.crieObj;
   aInter       := Inter.CrieObj;
   aCtrlPais    := CtrlPaises.CrieObj;
   aCtrlEstado  := CtrlEstados.CrieObj;
   aCtrlCidade  := CtrlCidades.CrieObj;
   aDM          := TDM.Create(nil);
   aCtrlCidade.setDM(aDM);
   aCtrlEstado.setDM (aDM);
   aCtrlPais.setDM(aDM);

   aCtrlEstado.setaCtrlPais(aCtrlPais);
   aCtrlCidade.setaCtrlEstado(aCtrlEstado);


end;

procedure TGerente.Paises1Click(Sender: TObject);
begin
   aInter.PDPaises(oPais, aCtrlPais);
end;

procedure TGerente.Sair4Click(Sender: TObject);
begin
   close;
end;

end.

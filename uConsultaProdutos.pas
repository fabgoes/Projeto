unit uConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uProdutos, uCtrlProdutos,uCadastrodeProdutos;

type
  TConsultaProdutos = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure edtChaveExit(Sender: TObject);
 private
    { Private declarations }
    oCadastroProdutos : TCadastrodeProdutos;
    oProduto          : Produtos;
    aCtrlProduto      : CtrlProdutos;

  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  );  override;
    procedure Pesquisar;                            override;
    procedure Incluir;                              override;
    procedure Alterar;                              override;
    procedure Excluir;                              override;
    procedure Sair;                                 override;
    procedure setcad (pObj : TObject);              override;
  end;

var
  ConsultaProdutos: TConsultaProdutos;

implementation

{$R *.dfm}

{ TConsultaProdutos }

procedure TConsultaProdutos.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlProduto.Carregar(oProduto);
  self.oCadastroProdutos.conhecaObj(oProduto, aCtrlProduto);
  oCadastroProdutos.limpaEdit;
  oCadastroProdutos.carregaEdit;
  oCadastroProdutos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlProduto.getDS);
  aCtrlProduto.Pesquisar(self.chave.Text);

end;


procedure TConsultaProdutos.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlProduto.Pesquisar(self.chave.Text);
end;

procedure TConsultaProdutos.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     actrlProduto.Carregar(oProduto);
end;

procedure TConsultaProdutos.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oProduto:= Produtos(pObj);
  aCtrlProduto := CtrlProdutos(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlProduto.getDS) ;
  aCtrlProduto.Pesquisar(self.chave.Text);

end;

procedure TConsultaProdutos.edtChaveExit(Sender: TObject);
begin
   inherited;
   btn_pesquisar.SetFocus;
end;

procedure TConsultaProdutos.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlProduto.Carregar(oProduto);
  oCadastroProdutos.conhecaObj(oProduto, aCtrlProduto);
  oCadastroProdutos.limpaEdit;
  oCadastroProdutos.carregaEdit;
  nAux:= oCadastroProdutos.btn_salvar.Caption;
  oCadastroProdutos.btn_salvar.Caption:='&Excluir';
  oCadastroProdutos.bloqueiaEdit;
  oCadastroProdutos.ShowModal;
  oCadastroProdutos.desbloqueiaEdit;
  oCadastroProdutos.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlProduto.getDS);
  aCtrlProduto.Pesquisar(self.chave.Text);

end;

procedure TConsultaProdutos.Incluir;
begin
  inherited;
  oProduto.setCodigo(0);
  self.oCadastroProdutos.conhecaObj(oProduto, aCtrlProduto);
  oCadastroProdutos.limpaEdit;
  oCadastroProdutos.carregaEdit;
  oCadastroProdutos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlProduto.getDS);
  aCtrlProduto.Pesquisar(self.chave.Text);
end;

procedure TConsultaProdutos.Pesquisar;
begin
  inherited;
  aCtrlProduto.Pesquisar(self.chave.Text);
end;

procedure TConsultaProdutos.Sair;
begin
  inherited;

end;

procedure TConsultaProdutos.setcad(pObj: TObject);
begin
  inherited;
  oCadastroProdutos := TCadastrodeProdutos(pObj);
end;

end.

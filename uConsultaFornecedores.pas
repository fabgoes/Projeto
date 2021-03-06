unit uConsultaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uController, uCadastrodeFornecedores, uFornecedores, uCtrlFornecedores, uDM,
  Datasnap.DBClient;

type
  TConsultaFornecedores = class(TConsultaPai)
    procedure btn_SairClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);


  private
    { Private declarations }
    oCadastrodeFornecedor : TCadastrodeFornecedores;
    oFornecedor           : Fornecedores;
    aCtrlFornecedor       : CtrlFornecedores;
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  ); override;
    procedure Pesquisar;                           override;
    procedure Incluir;                             override;
    procedure Alterar;                             override;
    procedure Excluir;                             override;
    procedure Sair;                                override;
    procedure setcad (pObj : TObject);             override;
  end;

var
  ConsultaFornecedores: TConsultaFornecedores;

implementation
{$R *.dfm}

{ TConsultaFornecedores }
procedure TConsultaFornecedores.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlFornecedor.Carregar(oFornecedor);
  self.oCadastrodeFornecedor.conhecaObj(oFornecedor, aCtrlFornecedor);
  oCadastrodeFornecedor.limpaEdit;
  oCadastrodeFornecedor.carregaEdit;
  oCadastrodeFornecedor.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFornecedor.getDS);
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     aCtrlFornecedor.Carregar(oFornecedor);
end;

procedure TConsultaFornecedores.conhecaObj(pObj, pCtrl: TObject  );
begin
  inherited;
  oFornecedor:= Fornecedores(pObj);
  aCtrlFornecedor:= CtrlFornecedores(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlFornecedor.getDS) ;
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlFornecedor.Carregar(oFornecedor);
  oCadastrodeFornecedor.conhecaObj(oFornecedor, aCtrlFornecedor);
  oCadastrodeFornecedor.limpaEdit;
  oCadastrodeFornecedor.carregaEdit;
  nAux:= oCadastrodeFornecedor.btn_salvar.Caption;
  oCadastrodeFornecedor.btn_salvar.Caption:='&Excluir';
  oCadastrodeFornecedor.bloqueiaEdit;
  oCadastrodeFornecedor.ShowModal;
  oCadastrodeFornecedor.desbloqueiaEdit;
  oCadastrodeFornecedor.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFornecedor.getDS);
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.Incluir;
begin
  inherited;
  oFornecedor.setCodigo(0);
  self.oCadastrodeFornecedor.conhecaObj(oFornecedor, aCtrlFornecedor);
  oCadastrodeFornecedor.limpaEdit;
  oCadastrodeFornecedor.carregaEdit;
  oCadastrodeFornecedor.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFornecedor.getDS);
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.Pesquisar;
begin
  inherited;
  aCtrlFornecedor.Pesquisar(self.chave.Text);

end;
procedure TConsultaFornecedores.Sair;
begin
  inherited;
end;
procedure TConsultaFornecedores.setcad(pObj: TObject);
begin
  inherited;
  oCadastrodeFornecedor := TCadastrodeFornecedores(pObj);
end;
end.



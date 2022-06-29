unit uConsultaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uController, uCadastrodeFornecedores, uFornecedores, uCtrlFornecedores, uDM,
  Datasnap.DBClient;

type
  TConsultaFornecedores = class(TConsultaPai)
    procedure btn_IncluirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);

  private
    { Private declarations }
    oCadastrodeFornecedor : TCadastrodeFornecedores;
    oFornecedor           : Fornecedores;
    aCtrlFornecedor       : CtrlFornecedores;

  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  );  override;
    procedure Pesquisar;                            override;
    procedure Incluir;                              override;
    procedure Excluir;                              override;
    procedure Sair;                                 override;
    procedure setcad (pObj : TObject);              override;
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
  mMsg := aCtrlFornecedor.Carregar(oEstado);
  self.oCadastrodeFornecedor.conhecaObj(oEstado, aCtrlEstado);
  oCadastrodeFornecedor.limpaEdit;
  oCadastrodeFornecedor.carregaEdit;
  oCadastrodeFornecedor.ShowModal;

end;

procedure TConsultaFornecedores.btn_ExcluirClick(Sender: TObject);
begin
  inherited;
  aCtrlEstado.Excluir(oEstado);
end;

procedure TConsultaFornecedores.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlEstado.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     aCtrlFornecedores.Carregar(oFornecedor);
end;

procedure TConsultaFornecedores.btn_AlterarClick(Sender: TObject);
begin
  inherited;

end;

procedure TConsultaFornecedores.btn_ExcluirClick(Sender: TObject);
begin
  inherited;

end;

procedure TConsultaFornecedores.btn_IncluirClick(Sender: TObject);
begin
  inherited;

end;

procedure TConsultaFornecedores.btn_SairClick(Sender: TObject);
begin
  inherited;

end;

procedure TConsultaFornecedores.conhecaObj(pObj, pCtrl: TObject  );
begin
  inherited;
  oFornecedor:= Fornecedores(pObj);
  aCtrlFornecedor:= CtrlFornecedores(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlEstado.getDS) ;
  aCtrlFornecedor.Pesquisar(self.chave.Text);
end;

procedure TConsultaFornecedores.edtChaveExit(Sender: TObject);
begin
  inherited;
  btn_pesquisar.SetFocus;
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

end;

procedure TConsultaFornecedores.Incluir;
begin
  inherited;
  oFornecedor.setCodigo(0);
  self.oCadastrodeFornecedor.conhecaObj(oFornecedor, aCtrlFornecedor);
  oCadastrodeFornecedor.limpaEdit;
  oCadastrodeFornecedor.carregaEdit;
  oCadastrodeFornecedor.ShowModal;
  self.Pesquisar;

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
  oCadastrodeFornecedor := TCadastroFornecedores(pObj);

end;

end.

end.
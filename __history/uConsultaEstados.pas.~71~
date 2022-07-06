unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uController, uCadastroEstados, uEstados, uCtrlEstados, uDM,
  Datasnap.DBClient;

type
  TConsultaEstados = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure edtChaveExit(Sender: TObject);


  private
    { Private declarations }
    oCadastroEstados : TCadastroEstados;
    oEstado          : Estados;
    aCtrlEstado      : CtrlEstados;

  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  );  override;
    procedure Pesquisar;                          override;
    procedure Incluir;                            override;
    procedure Alterar;                            override;
    procedure Excluir;                            override;
    procedure Sair;                               override;
    procedure setcad (pObj : TObject);            override;
  end;

var
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlEstado.Carregar(oEstado);
  self.oCadastroEstados.conhecaObj(oEstado, aCtrlEstado);
  oCadastroEstados.limpaEdit;
  oCadastroEstados.carregaEdit;
  oCadastroEstados.ShowModal;

end;

procedure TConsultaEstados.btn_ExcluirClick(Sender: TObject);
begin
  inherited;
  aCtrlEstado.Excluir(oEstado);
end;

procedure TConsultaEstados.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlEstado.Pesquisar(self.chave.Text);
end;

procedure TConsultaEstados.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     actrlEstado.Carregar(oEstado);
end;

procedure TConsultaEstados.conhecaObj(pObj, pCtrl: TObject  );
begin
  inherited;
  oEstado := Estados(pObj);
  aCtrlEstado := CtrlEstados(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlEstado.getDS) ;
  aCtrlEstado.Pesquisar(self.chave.Text);
end;

procedure TConsultaEstados.edtChaveExit(Sender: TObject);
begin
  inherited;
  btn_pesquisar.SetFocus;
end;

procedure TConsultaEstados.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlEstado.Carregar(oEstado);
  oCadastroEstados.conhecaObj(oEstado, aCtrlEstado);
  oCadastroEstados.limpaEdit;
  oCadastroEstados.carregaEdit;
  nAux:= oCadastroEstados.btn_salvar.Caption;
  oCadastroEstados.btn_salvar.Caption:='&Excluir';
  oCadastroEstados.bloqueiaEdit;
  oCadastroEstados.ShowModal;
  oCadastroEstados.desbloqueiaEdit;
  oCadastroEstados.btn_salvar.Caption :=nAux;

end;

procedure TConsultaEstados.Incluir;
begin
  inherited;
  oEstado.setCodigo(0);
  self.oCadastroEstados.conhecaObj(oEstado, aCtrlEstado);
  oCadastroEstados.limpaEdit;
  oCadastroEstados.carregaEdit;
  oCadastroEstados.ShowModal;
  self.Pesquisar;

end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;
  aCtrlEstado.Pesquisar(self.chave.Text);


end;

procedure TConsultaEstados.Sair;
begin
  inherited;

end;

procedure TConsultaEstados.setcad(pObj: TObject);
begin
  inherited;
  oCadastroEstados := TCadastroEstados(pObj);

end;

end.

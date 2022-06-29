unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uController, uCadastroCidades, uCidades, uCtrlCidades, uDM,
  Datasnap.DBClient;

type
    TConsultaCidades = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure edtChaveExit(Sender: TObject);
  private
    { Private declarations }
    oCadastroCidades  : TCadastroCidades;
    aCidade           : Cidades;
    aCtrlCidade       : CtrlCidades;
    //DSet             : TClientDataSet;
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
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TConsultaCidades }

procedure TConsultaCidades.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlCidade.Carregar(aCidade);
  self.oCadastroCidades.conhecaObj(aCidade, aCtrlCidade);
  oCadastroCidades.limpaEdit;
  oCadastroCidades.carregaEdit;
  oCadastroCidades.ShowModal;

end;

procedure TConsultaCidades.btn_ExcluirClick(Sender: TObject);
begin
  inherited;
  aCtrlCidade.Excluir(aCidade);
end;

procedure TConsultaCidades.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlCidade.Pesquisar(self.chave.Text);
end;

procedure TConsultaCidades.conhecaObj(pObj, pCtrl: TObject  );
begin
  inherited;
  aCidade    := Cidades(pObj);
  aCtrlCidade:= CtrlCidades(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlCidade.getDS) ;
  aCtrlCidade.Pesquisar(self.chave.Text)
end;

procedure TConsultaCidades.edtChaveExit(Sender: TObject);
begin
  inherited;
  btn_pesquisar.SetFocus;
end;

procedure TConsultaCidades.Excluir;
var
   nAux : string;
begin
  inherited;
  aCtrlCidade.Carregar(aCidade);
  self.oCadastroCidades.conhecaObj(aCidade, aCtrlCidade);
  oCadastroCidades.limpaEdit;
  oCadastroCidades.carregaEdit;
  nAux:= oCadastroCidades.btn_salvar.Caption;
  oCadastroCidades.btn_salvar.Caption:='&Excluir';
  oCadastroCidades.bloqueiaEdit;
  oCadastroCidades.ShowModal;
  oCadastroCidades.desbloqueiaEdit;
  oCadastroCidades.btn_salvar.Caption :=nAux;

end;


procedure TConsultaCidades.Incluir;
begin
  inherited;
  aCidade.setCodigo(0);
  self.oCadastroCidades.conhecaObj(aCidade, aCtrlCidade);
  self.oCadastroCidades.limpaEdit;
  self.oCadastroCidades.carregaEdit;
  self.oCadastroCidades.ShowModal;
  self.Pesquisar;

end;

procedure TConsultaCidades.Pesquisar;
begin
  inherited;
  aCtrlCidade.Pesquisar(self.chave.Text);

end;

procedure TConsultaCidades.Sair;
begin
  inherited;

end;

procedure TConsultaCidades.setcad(pObj: TObject);
begin
  inherited;
  oCadastroCidades := TCadastroCidades(pObj);

end;

end.

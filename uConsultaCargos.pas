unit uConsultaCargos;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uCargos, uCtrlCargos, uCadastrodeCargos;

type
  TConsultaCargos= class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);

 private
    { Private declarations }
    oCadastroCargos     : TCadastrodeCargos;
    oCargo              : Cargos;
    aCtrlCargo          : CtrlCargos;

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
  ConsultaCargos: TConsultaCargos;

implementation

{$R *.dfm}

{ TConsultaCargos }



procedure TConsultaCargos.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlCargo.Carregar(oCargo);
  self.oCadastroCargos.conhecaObj(oCargo, aCtrlCargo);
  oCadastroCargos.limpaEdit;
  oCadastroCargos.carregaEdit;
  oCadastroCargos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCargo.getDS);
  aCtrlCargo.Pesquisar(self.chave.Text);

end;

procedure TConsultaCargos.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlCargo.Pesquisar(self.chave.Text);
end;

procedure TConsultaCargos.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     actrlCargo.Carregar(oCargo);
end;

procedure TConsultaCargos.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oCargo:= Cargos(pObj);
  aCtrlCargo := CtrlCargos(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlCargo.getDS) ;
  aCtrlCargo.Pesquisar(self.chave.Text);
end;

procedure TConsultaCargos.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlCargo.Carregar(oCargo);
  oCadastroCargos.conhecaObj(oCargo, aCtrlCargo);
  oCadastroCargos.limpaEdit;
  oCadastroCargos.carregaEdit;
  nAux:= oCadastroCargos.btn_salvar.Caption;
  oCadastroCargos.btn_salvar.Caption:='&Excluir';
  oCadastroCargos.bloqueiaEdit;
  oCadastroCargos.ShowModal;
  oCadastroCargos.desbloqueiaEdit;
  oCadastroCargos.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCargo.getDS);
  aCtrlCargo.Pesquisar(self.chave.Text);

end;

procedure TConsultaCargos.Incluir;
begin
  inherited;
  oCargo.setCodigo(0);
  self.oCadastroCargos.conhecaObj(oCargo, aCtrlCargo);
  oCadastroCargos.limpaEdit;
  oCadastroCargos.carregaEdit;
  oCadastroCargos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCargo.getDS);
  aCtrlCargo.Pesquisar(self.chave.Text);
end;

procedure TConsultaCargos.Pesquisar;
begin
  inherited;
  aCtrlCargo.Pesquisar(self.chave.Text);
end;

procedure TConsultaCargos.Sair;
begin
  inherited;

end;

procedure TConsultaCargos.setcad(pObj: TObject);
begin
  inherited;
  oCadastroCargos := TCadastrodeCargos(pObj);
end;

end.

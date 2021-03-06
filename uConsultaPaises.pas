unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uController, uCadastroPaises, uPaises, uCtrlPaises, uDM,
  Datasnap.DBClient;

type
  TConsultaPaises = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure edtChaveExit(Sender: TObject);


  private
    { Private declarations }
    oCadastroPaises : TCadastroPaises;
    oPais           : Paises;
    aCtrlPais       : CtrlPaises;

  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  ); override;
    procedure Pesquisar;                          override;
    procedure Incluir;                            override;
    procedure Alterar;                            override;
    procedure Excluir;                            override;
    procedure Sair;                               override;
    procedure setcad (pObj : TObject);            override;
  end;

var
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TConsultaPaises }

procedure TConsultaPaises.Alterar;
var
  mMsg : string;
begin
  inherited;
  mMsg:= aCtrlPais.carregar( oPais);
  oCadastroPaises.conhecaObj(oPais, aCtrlPais);
  oCadastroPaises.limpaEdit;
  oCadastroPaises.carregaEdit;
  oCadastroPaises.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlPais.getDS);
  aCtrlPais.Pesquisar(self.chave.Text);

end;




procedure TConsultaPaises.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlPais.Pesquisar(self.chave.Text);
end;



procedure TConsultaPaises.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     actrlPais.Carregar(oPais);

end;

procedure TConsultaPaises.conhecaObj(pObj, pCtrl: TObject );
begin
  inherited;
  oPais := Paises(pObj);
  aCtrlPais := CtrlPaises(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlPais.getDS);
  aCtrlPais.Pesquisar(self.chave.Text);

end;

procedure TConsultaPaises.edtChaveExit(Sender: TObject);
begin
  inherited;
  btn_pesquisar.SetFocus;
end;

procedure TConsultaPaises.Excluir;
var
  nAux : string;
begin
  inherited;

  aCtrlPais.carregar( oPais);
  oCadastroPaises.conhecaObj(oPais, aCtrlPais);
  oCadastroPaises.limpaEdit;
  oCadastroPaises.carregaEdit;
  nAux:= oCadastroPaises.btn_salvar.Caption;
  oCadastroPaises.btn_salvar.Caption:='&Excluir';
  oCadastroPaises.bloqueiaEdit;
  oCadastroPaises.ShowModal;
  oCadastroPaises.desbloqueiaEdit;
  oCadastroPaises.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlPais.getDS);
  aCtrlPais.Pesquisar(self.chave.Text);



end;

procedure TConsultaPaises.Incluir;
begin
  inherited;
  oPais.setCodigo(0);
  oCadastroPaises.conhecaObj(oPais, aCtrlPais);
  oCadastroPaises.limpaEdit;
  oCadastroPaises.carregaEdit;
  oCadastroPaises.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlPais.getDS);
  aCtrlPais.Pesquisar(self.chave.Text);

end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;
  aCtrlPais.Pesquisar(self.chave.Text);
end;

procedure TConsultaPaises.Sair;
begin
  inherited;


end;

procedure TConsultaPaises.setcad(pObj: TObject);
begin
  inherited;
  oCadastroPaises := TCadastroPaises(pObj);

end;

end.

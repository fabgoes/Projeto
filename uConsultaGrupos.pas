unit uConsultaGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uGrupos, uCtrlGrupos, uCadastrodeGrupos;

type
  TConsultaGrupos = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure edtChaveExit(Sender: TObject);
  private
    { Private declarations }
    oCadastroGrupos : TCadastrodeGrupos;
    oGrupo          : Grupos;
    aCtrlGrupo      : CtrlGrupos;

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
  ConsultaGrupos: TConsultaGrupos;

implementation

{$R *.dfm}

{ TConsultaGrupos }

procedure TConsultaGrupos.Alterar;
var
 mMsg : string;
begin
  inherited;
  mMsg := aCtrlGrupo.Carregar(oGrupo);
  self.oCadastroGrupos.conhecaObj(oGrupo, aCtrlGrupo);
  oCadastroGrupos.limpaEdit;
  oCadastroGrupos.carregaEdit;
  oCadastroGrupos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlGrupo.getDS);
  aCtrlGrupo.Pesquisar(self.chave.Text);

end;

procedure TConsultaGrupos.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlGrupo.Pesquisar(self.chave.Text);
end;

procedure TConsultaGrupos.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     aCtrlGrupo.Carregar(oGrupo);
end;

procedure TConsultaGrupos.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oGrupo := Grupos(pObj);
  aCtrlGrupo := CtrlGrupos(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlGrupo.getDS) ;
  aCtrlGrupo.Pesquisar(self.chave.Text);
end;

procedure TConsultaGrupos.edtChaveExit(Sender: TObject);
begin
   inherited;
   btn_pesquisar.SetFocus;
end;

procedure TConsultaGrupos.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlGrupo.Carregar(oGrupo);
  oCadastroGrupos.conhecaObj(oGrupo, aCtrlGrupo);
  oCadastroGrupos.limpaEdit;
  oCadastroGrupos.carregaEdit;
  nAux:= oCadastroGrupos.btn_salvar.Caption;
  oCadastroGrupos.btn_salvar.Caption:='&Excluir';
  oCadastroGrupos.bloqueiaEdit;
  oCadastroGrupos.ShowModal;
  oCadastroGrupos.desbloqueiaEdit;
  oCadastroGrupos.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlGrupo.getDS);
  aCtrlGrupo.Pesquisar(self.chave.Text);

end;

procedure TConsultaGrupos.Incluir;
begin
  inherited;
  oGrupo.setCodigo(0);
  self.oCadastroGrupos.conhecaObj(oGrupo, aCtrlGrupo);
  oCadastroGrupos.limpaEdit;
  oCadastroGrupos.carregaEdit;
  oCadastroGrupos.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlGrupo.getDS);
  aCtrlGrupo.Pesquisar(self.chave.Text);
end;

procedure TConsultaGrupos.Pesquisar;
begin
  inherited;
  aCtrlGrupo.Pesquisar(self.chave.Text);


end;

procedure TConsultaGrupos.Sair;
begin
  inherited;

end;

procedure TConsultaGrupos.setcad(pObj: TObject);
begin
  inherited;
   oCadastroGrupos := TCadastrodeGrupos(pObj);
end;

end.

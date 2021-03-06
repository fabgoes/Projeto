unit uConsultaFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,
  uFuncionarios, uCtrlFuncionarios, uCadastrodeFuncionarios;

type
  TConsultaFuncionarios = class(TConsultaPai)
    procedure btn_SairClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);

  private
    { Private declarations }
    oCadastrodeFuncionario : TCadastrodeFuncionarios;
    oFuncionario           : Funcionarios;
    aCtrlFuncionario       : CtrlFuncionarios;

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
  ConsultaFuncionarios: TConsultaFuncionarios;

implementation

{$R *.dfm}

{ TConsultaFuncionarios }
procedure TConsultaFuncionarios.Alterar;
var
  mMsg : string;
begin
  inherited;
  mMsg:= aCtrlFuncionario.carregar( oFuncionario);
  oCadastrodeFuncionario.conhecaObj(oFuncionario, aCtrlFuncionario);
  oCadastrodeFuncionario.limpaEdit;
  oCadastrodeFuncionario.carregaEdit;
  oCadastrodeFuncionario.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFuncionario.getDS);
  aCtrlFuncionario.Pesquisar(self.chave.Text);

end;


procedure TConsultaFuncionarios.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlFuncionario.Pesquisar(self.chave.Text);
end;

procedure TConsultaFuncionarios.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     aCtrlFuncionario.Carregar(oFuncionario);
end;

procedure TConsultaFuncionarios.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oFuncionario := Funcionarios(pObj);
  aCtrlFuncionario := CtrlFuncionarios(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlFuncionario.getDS) ;
  aCtrlFuncionario.Pesquisar(self.chave.Text);
end;

procedure TConsultaFuncionarios.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlFuncionario.Carregar(oFuncionario);
  oCadastrodeFuncionario.conhecaObj(oFuncionario, aCtrlFuncionario);
  oCadastrodeFuncionario.limpaEdit;
  oCadastrodeFuncionario.carregaEdit;
  nAux:= oCadastrodeFuncionario.btn_salvar.Caption;
  oCadastrodeFuncionario.btn_salvar.Caption:='&Excluir';
  oCadastrodeFuncionario.bloqueiaEdit;
  oCadastrodeFuncionario.ShowModal;
  oCadastrodeFuncionario.desbloqueiaEdit;
  oCadastrodeFuncionario.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFuncionario.getDS);
  aCtrlFuncionario.Pesquisar(self.chave.Text);

end;

procedure TConsultaFuncionarios.Incluir;
begin
  inherited;
  oFuncionario.setCodigo(0);
  self.oCadastrodeFuncionario.conhecaObj(oFuncionario, aCtrlFuncionario);
  oCadastrodeFuncionario.limpaEdit;
  oCadastrodeFuncionario.carregaEdit;
  oCadastrodeFuncionario.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlFuncionario.getDS);
  aCtrlFuncionario.Pesquisar(self.chave.Text);

end;

procedure TConsultaFuncionarios.Pesquisar;
begin
  inherited;
  aCtrlFuncionario.Pesquisar(self.chave.Text);


end;

procedure TConsultaFuncionarios.Sair;
begin
  inherited;

end;

procedure TConsultaFuncionarios.setcad(pObj: TObject);
begin
  inherited;
  oCadastrodeFuncionario := TCadastrodeFuncionarios(pObj);

end;

end.

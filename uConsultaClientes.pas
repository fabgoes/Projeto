unit uConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uClientes, uCtrlClientes, uCadastrodeClientes;

type
  TConsultaClientes = class(TConsultaPai)
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroCliente   : TCadastrodeClientes;
    oCliente           : Clientes;
    aCtrlCliente       : CtrlClientes;
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
  ConsultaClientes: TConsultaClientes;

implementation

{$R *.dfm}

{ TConsultaClientes }

procedure TConsultaClientes.Alterar;
var
  mMsg : string;
begin
  inherited;
  mMsg:= aCtrlCliente.carregar( oCliente);
  oCadastroCliente.conhecaObj(oCliente, aCtrlCliente);
  oCadastroCliente.limpaEdit;
  oCadastroCliente.carregaEdit;
  oCadastroCliente.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCliente.getDS);
  aCtrlCliente.Pesquisar(self.chave.Text);

end;


procedure TConsultaClientes.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  aCtrlCliente.Pesquisar(self.chave.Text);
end;

procedure TConsultaClientes.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
     aCtrlCliente.Carregar(oCliente);

end;

procedure TConsultaClientes.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oCliente := Clientes(pObj);
  aCtrlCliente := CtrlClientes(pCtrl);
  self.DBGrid1.DataSource:= TDataSource(aCtrlCliente.getDS);
  aCtrlCliente.Pesquisar(self.chave.Text);
end;

procedure TConsultaClientes.Excluir;
var
  nAux : string;
begin
  inherited;
  aCtrlCliente.carregar( oCliente);
  oCadastroCliente.conhecaObj(oCliente, aCtrlCliente);
  oCadastroCliente.limpaEdit;
  oCadastroCliente.carregaEdit;
  nAux:= oCadastroCliente.btn_salvar.Caption;
  oCadastroCliente.btn_salvar.Caption:='&Excluir';
  oCadastroCliente.bloqueiaEdit;
  oCadastroCliente.ShowModal;
  oCadastroCliente.desbloqueiaEdit;
  oCadastroCliente.btn_salvar.Caption :=nAux;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCliente.getDS);
  aCtrlCliente.Pesquisar(self.chave.Text);


end;

procedure TConsultaClientes.Incluir;
begin
  inherited;
  oCliente.setCodigo(0);
  oCadastroCliente.conhecaObj(oCliente, aCtrlCliente);
  oCadastroCliente.limpaEdit;
  oCadastroCliente.carregaEdit;
  oCadastroCliente.ShowModal;
  self.DBGrid1.DataSource:= TDataSource(aCtrlCliente.getDS);
  aCtrlCliente.Pesquisar(self.chave.Text);

end;

procedure TConsultaClientes.Pesquisar;
begin
  inherited;
  aCtrlCliente.Pesquisar(self.chave.Text);
end;

procedure TConsultaClientes.Sair;
begin
  inherited;

end;

procedure TConsultaClientes.setcad(pObj: TObject);
begin
  inherited;
  oCadastroCliente := TCadastrodeClientes(pObj);
end;

end.

unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, uCidades, uEstados,
  uCtrlCidades, uConsultaEstados;

type
  TCadastroCidades = class(TCadastroPai)
    lbl_Cidade: TLabel;
    lbl_DDD: TLabel;
    edt_Cidade: TEdit;
    lbl_CodEstado: TLabel;
    edt_DDD: TEdit;
    edt_CodEstado: TEdit;
    lbl_Estado: TLabel;
    edt_Estado: TEdit;
    btn_Pesquisar: TButton;
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
    aCidade : Cidades;
    aCtrlCidade : CtrlCidades;
    oConsultaEstados : TConsultaEstados;
  public
    { Public declarations }
    procedure sair;                              override;
    procedure salvar;                            override;
    procedure limpaEdit;                         override;
    procedure carregaEdit;                       override;
    procedure bloqueiaEdit;                      override;
    procedure desbloqueiaEdit;                    override;
    procedure conhecaObj(pObj, pCtrl : TObject); override;
    procedure setConsulta(pObj : TObject);       override;
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

{ TCadastroCidades }

procedure TCadastroCidades.bloqueiaEdit;
begin
   inherited;
   edt_Cidade.Enabled   := false;
   edt_DDD.Enabled      := false;
   edt_codEstado.Enabled:= false;
   edt_Estado.Enabled   := false;

end;

procedure TCadastroCidades.btn_PesquisarClick(Sender: TObject);
var
 aux: string;
 oEstado : Estados;
begin
  inherited;
  oEstado:= Estados.crieObj;
  aux := oConsultaEstados.btn_Sair.Caption;
  oConsultaEstados.btn_Sair.Caption := 'Selecionar';
  oConsultaEstados.conhecaObj(oEstado,aCtrlCidade.getaCtrlEstado);
  oConsultaEstados.ShowModal;
  oConsultaEstados.btn_Sair.Caption:= aux;
  self.edt_CodEstado.Text := inttostr(oEstado.getCodigo);
  self.edt_Estado.Text := oEstado.getEstado;
  aCidade.setoEstado(oEstado);

end;

procedure TCadastroCidades.carregaEdit;
begin
   inherited;
   edt_codigo.Text     := inttoStr(aCidade.getCodigo);
   edt_Cidade.Text     := aCidade.getCidade ;
   edt_DDD.Text        := aCidade.getDDD ;
   edt_codEstado.Text  := inttoStr(aCidade.getoEstado.getCodigo);
   edt_Estado.Text     := aCidade.getoEstado.getEstado ;

end;

procedure TCadastroCidades.conhecaObj(pObj, pCtrl: TObject);
begin
   inherited;
   aCidade:= Cidades(pObj);
   aCtrlCidade := CtrlCidades(pCtrl);


end;

procedure TCadastroCidades.desbloqueiaEdit;
begin
   inherited;
   edt_Cidade.Enabled   := true;
   edt_DDD.Enabled      := true;
   edt_codEstado.Enabled:= true;
   edt_Estado.Enabled   := true;

end;

procedure TCadastroCidades.limpaEdit;
begin
   inherited;
   edt_Cidade.Clear;
   edt_DDD.Clear;
   edt_codEstado.Clear;
   edt_Estado.Clear;

end;

procedure TCadastroCidades.sair;
begin
   inherited;

end;

procedure TCadastroCidades.salvar;
begin
  if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
  begin
     inherited;
     if self.edt_Cidade.Text = '' then
     begin
        showmessage('Campo Cidade eh Obrigatorio!');
        self.edt_Cidade.SetFocus;
     end
     else  if edt_codEstado.Text = '' then
     begin
        showmessage('Campo codigo Estado eh Obrigatorio!');
        self.edt_codEstado.SetFocus;
     end
     else
     begin
        aCidade.setCodigo            (strtoint(edt_Codigo.Text));
        aCidade.setCidade            ( edt_Cidade.Text);
        aCidade.setDDD               ( edt_DDD.Text);
        aCidade.getoEstado.setCodigo (strtoint(edt_codEstado.Text));
        aCidade.getoEstado.setEstado (edt_Estado.Text);
        aCtrlCidade.Salvar(aCidade.clone);
     end;
        showmessage ('Cidade Salvo com sucesso') ;
  end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlCidade.Excluir(aCidade);
         showmessage ('Cidade Excluido com sucesso');
      end
      else
      begin
         showmessage ('Cidade n?o pode ser Excluido ');


      end;
      close;

end;

procedure TCadastroCidades.setConsulta(pObj: TObject);
begin
  inherited;
   oConsultaEstados := TConsultaEstados(pObj);
end;

end.

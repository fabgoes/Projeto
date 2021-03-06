unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, uEstados,uPaises,
  uCtrlEstados,
  uConsultaPaises;

type
  TCadastroEstados = class(TCadastroPai)
    lbl_Estado: TLabel;
    lbl_UF: TLabel;
    lbl_CodPais: TLabel;
    lbl_Pais: TLabel;
    btn_Pesquisar: TButton;
    edt_Estado: TEdit;
    edt_UF: TEdit;
    edt_CodPais: TEdit;
    edt_Pais: TEdit;
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oEstado        : Estados;
    aCtrlEstado    : CtrlEstados;
    oConsultaPaises: TConsultaPaises;

  public
    { Public declarations }
    procedure sair;                              override;
    procedure salvar;                            override;
    procedure limpaEdit;                         override;
    procedure carregaEdit;                       override;
    procedure bloqueiaEdit;                      override;
    procedure desbloqueiaEdit;                   override;
    procedure conhecaObj(pObj, pCtrl : TObject); override;
    procedure setConsulta(pObj : TObject);       override;
  end;

var
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.bloqueiaEdit;
begin
   inherited;
   edt_Estado.Enabled  := false;
   edt_UF.Enabled      := false;
   edt_codPais.Enabled := false;
   edt_Pais.Enabled    := false;
end;

procedure TCadastroEstados.btn_PesquisarClick(Sender: TObject);
var
 naux: string;
 oPais : Paises;
begin
  inherited;
  oPais:= Paises.crieObj;
  naux := oConsultaPaises.btn_Sair.Caption;
  oConsultaPaises.btn_Sair.Caption := 'Selecionar';
  oConsultaPaises.conhecaObj(oPais,aCtrlEstado.getaCtrlPais);
  oConsultaPaises.ShowModal;
  oConsultaPaises.btn_Sair.Caption:= naux;
  self.edt_CodPais.Text := inttostr(oPais.getCodigo);
  self.edt_Pais.Text := oPais.getPais;
  oEstado.setoPais(oPais);



end;

procedure TCadastroEstados.carregaEdit;
begin
   inherited;
   edt_codigo.Text  := inttoStr(oEstado.getCodigo);
   edt_Estado.Text  := oEstado.getEstado;
   edt_UF.Text      := oEstado.getUF;
   edt_codPais.Text := inttoStr(oEstado.getoPais.getCodigo);
   edt_Pais.Text    := oEstado.getoPais.getPais;


end;

procedure TCadastroEstados.conhecaObj(pObj, pCtrl: TObject);
begin
   inherited;
   oEstado     := Estados(pObj);
   aCtrlEstado := CtrlEstados(pCtrl);

end;

procedure TCadastroEstados.desbloqueiaEdit;
begin
   inherited;
   edt_Estado.Enabled  := true;
   edt_UF.Enabled      := true;
   edt_codPais.Enabled := true;
   edt_Pais.Enabled    := true;

end;

procedure TCadastroEstados.limpaEdit;
begin
   inherited;
   edt_Estado.Clear;
   edt_UF.Clear;
   edt_codPais.Clear;
   edt_Pais.Clear;

end;

procedure TCadastroEstados.sair;
begin
  inherited;

end;

procedure TCadastroEstados.salvar;
begin
  if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
  begin
     inherited;
     if self.edt_Estado.Text = '' then
     begin
       showmessage('Campo Estado eh Obrigatorio!');
       edt_Estado.SetFocus;
     end
     else if edt_UF.Text = '' then
     begin
        showmessage('Campo UF eh Obrigatorio!');
        self.edt_UF.SetFocus;
     end
     else if self.edt_codPais.Text = '' then
     begin
        showmessage('Campo codigo Pais eh Obrigatorio!');
        self.edt_CodPais.SetFocus;
     end
     else
     begin
       oEstado.setCodigo          (strtoint(edt_codigo.Text));
       oEstado.setEstado          ( edt_Estado.Text);
       oEstado.setUF              ( edt_UF.Text);
       oEstado.getoPais.setCodigo (strtoint(edt_codPais.Text));
       oEstado.getoPais.setPais   ( edt_Pais.Text);
       aCtrlEstado.Salvar(oEstado.clone);
     end;
      showmessage ('Estado Salvo com sucesso') ;
   end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlEstado.Excluir(oEstado);
         showmessage ('Estado Excluido com sucesso');
      end
      else
      begin

         showmessage ('Estado n?o pode ser Excluido ');


      end;
      close;

  end;

procedure TCadastroEstados.setConsulta(pObj: TObject);
begin
  inherited;
  oConsultaPaises := TConsultaPaises(pObj);
end;

end.

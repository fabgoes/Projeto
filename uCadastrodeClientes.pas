unit uCadastrodeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastrodePessoas, Vcl.StdCtrls,
  uClientes, uCtrlClientes, uConsultaCidades, uCidades, uCtrlCidades,
  Vcl.WinXPickers, Vcl.ComCtrls;

type
  TCadastrodeClientes = class(TCadastrodePessoas)
    lbl_FormaPag: TLabel;
    edt_FormaPag: TEdit;
    lbl_Celular: TLabel;
    edt_Celular: TEdit;
    lbl_RG: TLabel;
    lbl_CPF: TLabel;
    lbl_Sexo: TLabel;
    lbl_DataNasc: TLabel;
    edt_RG: TEdit;
    edt_CPF: TEdit;
    edt_Sexo: TEdit;
    edt_DataNasc: TEdit;
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCliente        : Clientes;
    aCtrlCliente    : CtrlClientes;
    oConsultaCidades : TConsultaCidades;


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
  CadastrodeClientes: TCadastrodeClientes;

implementation

{$R *.dfm}

{ TCadastrodeClientes }

procedure TCadastrodeClientes.bloqueiaEdit;
begin
   inherited;
   self.edt_Nome.Enabled        := false;
   self.edt_FormaPag.Enabled    := false;
   self.edt_RG.Enabled          := false;
   self.edt_CPF.Enabled         := false;
   self.edt_Sexo.Enabled        := false;
   self.edt_Telefone.Enabled    := false;
   self.edt_Celular.Enabled     := false;
   self.edt_Email.Enabled       := false;
   self.edt_CEP.Enabled         := false;
   self.edt_Bairro.Enabled      := false;
   self.edt_Logradouro.Enabled  := false;
   self.edt_Numero.Enabled      := false;
   self.edt_Complemento.Enabled := false;
   self.edt_codCidade.Enabled   := false;
   self.edt_DataNasc.Enabled    := false;

end;

procedure TCadastrodeClientes.btn_PesquisarClick(Sender: TObject);
var
 naux: string;
 aCidade : Cidades;
begin
  inherited;
  aCidade := Cidades.crieObj;
  naux := oConsultaCidades.btn_Sair.Caption;
  oConsultaCidades.btn_Sair.Caption := 'Selecionar';
  oConsultaCidades.conhecaObj(aCidade,aCtrlCliente.getaCtrlCidade);
  oConsultaCidades.ShowModal;
  oConsultaCidades.btn_Sair.Caption:= naux;
  self.edt_CodCidade.Text := inttostr(aCidade.getCodigo);
  self.edt_Cidade.Text := aCidade.getCidade;
  oCliente.setaCidade(aCidade);
end;

procedure TCadastrodeClientes.carregaEdit;
begin
   inherited;
   edt_Codigo.Text          := inttostr( oCliente.getCodigo);
   edt_Nome.text            :=oCliente.getNome;
   edt_FormaPag.text        :=oCliente.getFormaPag;
   edt_RG.text              :=oCliente.getRG;
   edt_Sexo.text            :=oCliente.getSexo;
   edt_Telefone.text        :=oCliente.getTelefone;
   edt_Celular.text         :=oCliente.getCelular;
   edt_Email.text           :=oCliente.getEmail;
   edt_CEP.text             :=oCliente.getCEP;
   edt_Bairro.text          :=oCliente.getBairro;
   edt_Logradouro.text      :=oCliente.getLogradouro;
   edt_Numero.text          :=oCliente.getNumero;
   edt_Complemento.text     :=oCliente.getComplemento;
   edt_DataNasc.text        :=oCliente.getDataNasc;
   edt_codCidade.Text       := inttoStr(oCliente.getaCidade.getCodigo);
   edt_Cidade.Text          := oCliente.getacidade.getCidade;
   edt_DataCad.Text    := oCliente.getDataCad;
   edt_DataUltAlt.Text := oCliente.getDataUltAlt;






end;

procedure TCadastrodeClientes.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oCliente := Clientes(pObj);
  aCtrlCliente := CtrlClientes(pCtrl);
  self.limpaEdit;
  self.carregaEdit;

end;

procedure TCadastrodeClientes.desbloqueiaEdit;
begin
   inherited;
   self.edt_Nome.Enabled        := true;
   self.edt_FormaPag.Enabled    := true;
   self.edt_RG.Enabled          := true;
   self.edt_CPF.Enabled         := true;
   self.edt_Sexo.Enabled        := true;
   self.edt_Telefone.Enabled    := true;
   self.edt_Celular.Enabled     := true;
   self.edt_Email.Enabled       := true;
   self.edt_CEP.Enabled         := true;
   self.edt_Bairro.Enabled      := true;
   self.edt_Logradouro.Enabled  := true;
   self.edt_Numero.Enabled      := true;
   self.edt_Complemento.Enabled := true;
   self.edt_codCidade.Enabled   := true;
   self.edt_DataNasc.Enabled    := false;

end;

procedure TCadastrodeClientes.limpaEdit;
begin
   inherited;
   self.edt_Nome.Clear;
   self.edt_RG.Clear;
   self.edt_CPF.Clear;
   self.edt_FormaPag.Clear;
   self.edt_Sexo.Clear;
   self.edt_Telefone.Clear;
   self.edt_Celular.Clear;
   self.edt_Email.Clear;
   self.edt_CEP.Clear;
   self.edt_Bairro.Clear;
   self.edt_Logradouro.Clear;
   self.edt_Numero.Clear;
   self.edt_Complemento.Clear;
   self.edt_codCidade.Clear;
   self.edt_DataNasc.Clear;

end;

procedure TCadastrodeClientes.sair;
begin
  inherited;

end;

procedure TCadastrodeClientes.salvar;
begin
  if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
  begin
     inherited;
     if self.edt_Nome.Text = '' then
     begin
        showmessage('Campo Nome eh Obrigatorio!');
        self.edt_Nome.SetFocus;
     end
     else
     begin
        oCliente.setCodigo      (strtoint(edt_Codigo.Text));
        oCliente.setNome        (edt_Nome.Text);
        oCliente.setFormaPag    (edt_FormaPag.Text);
        oCliente.setRG          (edt_RG.Text);
        oCliente.setCPF         (edt_CPF.Text);
        oCliente.setSexo        (edt_Sexo.Text);
        oCliente.setTelefone    (edt_Telefone.Text);
        oCliente.setCelular     (edt_Celular.Text);
        oCliente.setEmail       (edt_Email.Text);
        oCliente.setCEP         (edt_CEP.Text);
        oCliente.setBairro      (edt_Bairro.Text);
        oCliente.setLogradouro  (edt_Logradouro.Text);
        oCliente.setNumero      (edt_Numero.Text);
        oCliente.setComplemento (edt_Complemento.Text);
        oCliente.setDataNasc    (edt_DataNasc.Text);
        oCliente.getaCidade.setCodigo (strtoint(edt_codCidade.Text));
        oCliente.getaCidade.setCidade (edt_Cidade.Text);
        aCtrlCliente.Salvar(oCliente.clone);

     end;
        showmessage ('Cliente Salvo com sucesso') ;
  end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlCliente.Excluir(oCliente);
         showmessage ('Cliente Excluido com sucesso');
      end
      else
      begin
         showmessage ('Cliente não pode ser Excluido ');


      end;
      close;

end;




procedure TCadastrodeClientes.setConsulta(pObj: TObject);
begin
  inherited;
  oConsultaCidades := TConsultaCidades(pObj);
end;

end.

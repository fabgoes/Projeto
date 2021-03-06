unit uCadastrodeFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastrodePessoas, Vcl.StdCtrls,
  uCidades, uFornecedores, uCtrlFornecedores, uConsultaCidades, uCtrlCidades;

type
  TCadastrodeFornecedores = class(TCadastrodePessoas)
    lbl_Celular: TLabel;
    edt_Celular: TEdit;
    lbl_Site: TLabel;
    edt_Site: TEdit;
    lbl_Observacao: TLabel;
    edt_Observacao: TEdit;
    lbl_RazaoSocial: TLabel;
    edt_RazaoSocial: TEdit;
    lbl_CNPJ: TLabel;
    edt_CNPJ: TEdit;
    lbl_FormaPag: TLabel;
    edt_FormaPag: TEdit;
    lbl_InsEstadual: TLabel;
    edt_InsEstadual: TEdit;
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oFornecedor        : Fornecedores;
    aCtrlFornecedor    : CtrlFornecedores;
    oConsultaCidades   : TConsultaCidades;
    aCtrlCidade        : CtrlCidades;


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
  CadastrodeFornecedores: TCadastrodeFornecedores;

implementation

{$R *.dfm}

{ TCadastrodeFornecedores }

procedure TCadastrodeFornecedores.bloqueiaEdit;
begin
   inherited;
   edt_Nome.Enabled        := false;
   edt_FormaPag.Enabled    := false;
   edt_CNPJ.Enabled        := false;
   edt_Telefone.Enabled    := false;
   edt_Celular.Enabled     := false;
   edt_Email.Enabled       := false;
   edt_CEP.Enabled         := false;
   edt_Bairro.Enabled      := false;
   edt_Logradouro.Enabled  := false;
   edt_Numero.Enabled      := false;
   edt_Complemento.Enabled := false;
   edt_codCidade.Enabled   := false;
   edt_Observacao.Enabled  := false;
   edt_Site.Enabled        := false;
   edt_FormaPag.Enabled    := false;
   edt_RazaoSocial.Enabled := false;
   edt_InsEstadual.Enabled := false;

end;


procedure TCadastrodeFornecedores.btn_PesquisarClick(Sender: TObject);
var
 naux: string;
 aCidade : Cidades;
begin
  inherited;
  aCidade := Cidades.crieObj;
  naux := oConsultaCidades.btn_Sair.Caption;
  oConsultaCidades.btn_Sair.Caption := 'Selecionar';
  oConsultaCidades.conhecaObj(aCidade,aCtrlFornecedor.getaCtrlCidade);
  oConsultaCidades.ShowModal;
  oConsultaCidades.btn_Sair.Caption:= naux;
  self.edt_CodCidade.Text := inttostr(aCidade.getCodigo);
  self.edt_Cidade.Text := aCidade.getCidade;
  oFornecedor.setaCidade(aCidade);
end;

procedure TCadastrodeFornecedores.carregaEdit;
begin
   inherited;
   self.edt_Codigo.Text     := inttostr( oFornecedor.getCodigo);
   edt_Nome.text            :=oFornecedor.getNome;
   edt_FormaPag.text        :=oFornecedor.getFormaPag;
   edt_CNPJ.text            :=oFornecedor.getCNPJ;
   edt_Telefone.text        :=oFornecedor.getTelefone;
   edt_Celular.text         :=oFornecedor.getCelular;
   edt_Email.text           :=oFornecedor.getEmail;
   edt_CEP.text             :=oFornecedor.getCEP;
   edt_Bairro.text          :=oFornecedor.getBairro;
   edt_Logradouro.text      :=oFornecedor.getLogradouro;
   edt_Numero.text          := oFornecedor.getNumero;
   edt_Complemento.text     :=oFornecedor.getComplemento;
   edt_codCidade.Text       := inttoStr(oFornecedor.getaCidade.getCodigo);
   edt_Cidade.Text          := oFornecedor.getacidade.getCidade;
   edt_Observacao.Text      :=oFornecedor.getObservacao;
   edt_Site.Text            :=oFornecedor.getSite;
   edt_FormaPag.Text        :=oFornecedor.getFormaPag;
   edt_RazaoSocial.Text     :=oFornecedor.getRazaoSocial;
   edt_InsEstadual.Text     := oFornecedor.getInsEstadual;
   self.edt_DataCad.Text    := oFornecedor.getDataCad;
   self.edt_DataUltAlt.Text := oFornecedor.getDataUltAlt;





end;

procedure TCadastrodeFornecedores.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oFornecedor     := Fornecedores(pObj);
  aCtrlFornecedor := CtrlFornecedores(pCtrl);
  self.limpaEdit;
  self.carregaEdit;

end;

procedure TCadastrodeFornecedores.desbloqueiaEdit;
begin
   inherited;
   edt_Nome.Enabled        :=true;
   edt_FormaPag.Enabled    :=true;
   edt_CNPJ.Enabled        :=true;
   edt_Telefone.Enabled    :=true;
   edt_Celular.Enabled     :=true;
   edt_Email.Enabled       :=true;
   edt_CEP.Enabled         :=true;
   edt_Bairro.Enabled      :=true;
   edt_Logradouro.Enabled  :=true;
   edt_Numero.Enabled      :=true;
   edt_Complemento.Enabled :=true;
   edt_codCidade.Enabled   :=true;
   edt_Observacao.Enabled  :=true;
   edt_Site.Enabled        :=true;
   edt_FormaPag.Enabled    :=true;
   edt_RazaoSocial.Enabled :=true;
   edt_InsEstadual.Enabled :=true;

end;

procedure TCadastrodeFornecedores.limpaEdit;
begin
   inherited;
   self.edt_Nome.Clear;
   self.edt_CNPJ.Clear;
   self.edt_FormaPag.Clear;
   self.edt_Telefone.Clear;
   self.edt_Celular.Clear;
   self.edt_Email.Clear;
   self.edt_CEP.Clear;
   self.edt_Bairro.Clear;
   self.edt_Logradouro.Clear;
   self.edt_Numero.Clear;
   self.edt_Complemento.Clear;
   self.edt_codCidade.Clear;
   self.edt_Observacao.Clear;
   self.edt_Site.Clear;
   self.edt_FormaPag.Clear;
   self.edt_RazaoSocial.Clear;
   self.edt_InsEstadual.Clear;

end;

procedure TCadastrodeFornecedores.sair;
begin
  inherited;

end;

procedure TCadastrodeFornecedores.salvar;
begin
  if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
  begin

     if self.edt_Nome.Text = '' then
     begin
        showmessage('Campo Nome eh Obrigatorio!');
        self.edt_Nome.SetFocus;
     end
     else  if edt_CNPJ.Text = '' then
     begin
       showmessage('Campo CNPJ eh Obrigatorio!');
       edt_CNPJ.SetFocus;
     end
     else
     begin
        oFornecedor.setCodigo      (strtoint(edt_Codigo.Text));
        oFornecedor.setNome        (edt_Nome.Text);
        oFornecedor.setCNPJ        (edt_CNPJ.Text);
        oFornecedor.setTelefone    (edt_Telefone.Text);
        oFornecedor.setCelular     (edt_Celular.Text);
        oFornecedor.setEmail       (edt_Email.Text);
        oFornecedor.setCEP         (edt_CEP.Text);
        oFornecedor.setBairro      (edt_Bairro.Text);
        oFornecedor.setLogradouro  (edt_Logradouro.Text);
        oFornecedor.setNumero      (edt_Numero.Text);
        oFornecedor.setComplemento (edt_Complemento.Text);
        oFornecedor.setSite        (edt_Site.Text);
        oFornecedor.setObservacao  (edt_Observacao.Text);
        oFornecedor.setFormaPag    (edt_FormaPag.Text);
        oFornecedor.setRazaoSocial (edt_RazaoSocial.Text);
        oFornecedor.setInsEstadual(edt_InsEstadual.Text);
        oFornecedor.getaCidade.setCodigo (strtoint(edt_codCidade.Text));
        oFornecedor.getaCidade.setCidade (edt_Cidade.Text);
        aCtrlFornecedor.Salvar(oFornecedor.clone);
     end;
     inherited;
       showmessage ('Fornecedor Salvo com sucesso') ;
  end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlFornecedor.Excluir(oFornecedor);
         showmessage ('Fornecedor Excluido com sucesso');
      end
      else
      begin
         showmessage ('Fornecedor n?o pode ser Excluido ');


      end;
      close;

end;




procedure TCadastrodeFornecedores.setConsulta(pObj: TObject);
begin
  inherited;
  oConsultaCidades := TConsultaCidades(pObj);

end;

end.

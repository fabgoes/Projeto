unit uCadastrodeFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastrodePessoas, Vcl.StdCtrls,
  uFuncionarios, uCtrlFuncionarios, uConsultaCidades, uCidades;

type
  TCadastrodeFuncionarios = class(TCadastrodePessoas)
    lbl_DataAdmissao: TLabel;
    lbl_DataDemissao: TLabel;
    edt_DataAdmissao: TEdit;
    edt_DataDemissao: TEdit;
    lbl_VSalario: TLabel;
    edt_VSalario: TEdit;
    lbl_Celular: TLabel;
    edt_Celular: TEdit;
    lbl_Cargo: TLabel;
    edt_Cargo: TEdit;
    procedure btn_PesquisarClick(Sender: TObject);
 private
    { Private declarations }
    oFuncionario     : Funcionarios;
    aCtrlFuncionario : CtrlFuncionarios;
    oConsultaCidades : TConsultaCidades;

  public
    { Public declarations }
    procedure sair;                               override;
    procedure salvar;                             override;
    procedure limpaEdit;                          override;
    procedure carregaEdit;                        override;
    procedure bloqueiaEdit;                       override;
    procedure desbloqueiaEdit;                    override;
    procedure conhecaObj(pObj, pCtrl : TObject);  override;
    procedure setConsulta(pObj : TObject);        override;
  end;

var
  CadastrodeFuncionarios: TCadastrodeFuncionarios;

implementation

{$R *.dfm}

{ TCadastrodeFuncionarios }

procedure TCadastrodeFuncionarios.bloqueiaEdit;
begin
   inherited;
   self.edt_Nome.Enabled          := false;
   self.edt_RG.Enabled            := false;
   self.edt_CPF.Enabled           := false;
   self.edt_Sexo.Enabled          := false;
   self.edt_Telefone.Enabled      := false;
   self.edt_Celular.Enabled       := false;
   self.edt_Email.Enabled         := false;
   self.edt_CEP.Enabled           := false;
   self.edt_Bairro.Enabled        := false;
   self.edt_Logradouro.Enabled    := false;
   self.edt_Numero.Enabled        := false;
   self.edt_Complemento.Enabled   := false;
   self.edt_codCidade.Enabled     := false;
   edt_VSalario.Enabled           := false;
   edt_DataAdmissao.Enabled       := false;
   edt_DataDemissao.Enabled       := false;
   edt_Cargo.Enabled              := false;
   self.edt_DataNasc.Enabled      := false;

end;

procedure TCadastrodeFuncionarios.btn_PesquisarClick(Sender: TObject);
var
 naux: string;
 aCidade : Cidades;
begin
  inherited;
  aCidade := Cidades.crieObj;
  naux := oConsultaCidades.btn_Sair.Caption;
  oConsultaCidades.btn_Sair.Caption := 'Selecionar';
  oConsultaCidades.conhecaObj(aCidade,aCtrlFuncionario.getaCtrlCidade);
  oConsultaCidades.ShowModal;
  //aCtrlCliente.getaCtrlCidade.carregar(oCliente.getaCidade);
  oConsultaCidades.btn_Sair.Caption:= naux;
  self.edt_CodCidade.Text := inttostr(aCidade.getCodigo);
  self.edt_Cidade.Text := aCidade.getCidade;
  oFuncionario.setaCidade(aCidade);
end;

procedure TCadastrodeFuncionarios.carregaEdit;
begin
   inherited;
   self.edt_Codigo.Text          := inttostr( oFuncionario.getCodigo);
   self.edt_Nome.text            :=oFuncionario.getNome;
   self.edt_RG.text              :=oFuncionario.getRG;
   self.edt_CPF.text             :=oFuncionario.getCPF;
   self.edt_Sexo.text            :=oFuncionario.getSexo;
   self.edt_Telefone.text        :=oFuncionario.getTelefone;
   self.edt_Celular.text         :=oFuncionario.getCelular;
   self.edt_Email.text           :=oFuncionario.getEmail;
   self.edt_CEP.text             :=oFuncionario.getCEP;
   self.edt_Bairro.text          :=oFuncionario.getBairro;
   self.edt_Logradouro.text      :=oFuncionario.getLogradouro;
   self.edt_Numero.text          :=oFuncionario.getNumero;
   self.edt_Complemento.text     :=oFuncionario.getComplemento;
   edt_VSalario.text             := CurrtoStr(oFuncionario.getVSalario);
   edt_DataAdmissao.text         :=oFuncionario.getDataAdmissao;
   edt_DataDemissao.text         :=oFuncionario.getDataDemissao;
   edt_Cargo.text                :=oFuncionario.getCargo;
   self.edt_DataNasc.text        :=oFuncionario.getDataNasc;
   self.edt_codCidade.Text       := inttoStr(oFuncionario.getaCidade.getCodigo);
   self.edt_Cidade.Text          := oFuncionario.getacidade.getCidade;
   self.edt_DataCad.Text         := oFuncionario.getDataCad;
   self.edt_DataUltAlt.Text      := oFuncionario.getDataUltAlt;

end;

procedure TCadastrodeFuncionarios.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oFuncionario     := Funcionarios(pObj);
  aCtrlFuncionario := CtrlFuncionarios(pCtrl);
  self.limpaEdit;
  self.carregaEdit;

end;

procedure TCadastrodeFuncionarios.desbloqueiaEdit;
begin
   inherited;
   self.edt_Nome.Enabled         :=true;
   self.edt_RG.Enabled           :=true;
   self.edt_CPF.Enabled          :=true;
   self.edt_Sexo.Enabled         :=true;
   self.edt_Telefone.Enabled     :=true;
   self.edt_Celular.Enabled      :=true;
   self.edt_Email.Enabled        :=true;
   self.edt_CEP.Enabled          :=true;
   self.edt_Bairro.Enabled       :=true;
   self.edt_Logradouro.Enabled   :=true;
   self.edt_Numero.Enabled       :=true;
   self.edt_Complemento.Enabled  :=true;
   self.edt_codCidade.Enabled    :=true;
   edt_VSalario.Enabled          :=true;
   edt_DataAdmissao.Enabled      :=true;
   edt_DataDemissao.Enabled      :=true;
   edt_Cargo.Enabled             :=true;
   self.edt_DataNasc.Enabled     :=true;


end;



procedure TCadastrodeFuncionarios.limpaEdit;
begin
   inherited;
   self.edt_Nome.Clear;
   self.edt_RG.Clear;
   self.edt_CPF.Clear;
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
   edt_VSalario.Clear;
   edt_DataAdmissao.Clear;
   edt_DataDemissao.Clear;
   edt_Cargo.Clear;
   self.edt_DataNasc.Clear;

end;

procedure TCadastrodeFuncionarios.sair;
begin
  inherited;

end;

procedure TCadastrodeFuncionarios.Salvar;
var
   msg: string;
begin
  inherited;
  if self.edt_Nome.Text = '' then
  begin
    showmessage('Campo Nome eh Obrigatorio!');
    self.edt_Nome.SetFocus;
  end
  else
  begin
     oFuncionario.setCodigo       (strtoint(edt_Codigo.Text));
     oFuncionario.setNome         (edt_Nome.Text);
     oFuncionario.setRG           (edt_RG.Text);
     oFuncionario.setCPF          (edt_CPF.Text);
     oFuncionario.setSexo         (edt_Sexo.Text);
     oFuncionario.setTelefone     (edt_Telefone.Text);
     oFuncionario.setCelular      (edt_Celular.Text);
     oFuncionario.setEmail        (edt_Email.Text);
     oFuncionario.setCEP          (edt_CEP.Text);
     oFuncionario.setBairro       (edt_Bairro.Text);
     oFuncionario.setLogradouro   (edt_Logradouro.Text);
     oFuncionario.setNumero       (edt_Numero.Text);
     oFuncionario.setComplemento  (edt_Complemento.Text);
     oFuncionario.setVSalario      (StrToCurr(edt_VSalario.Text));
     oFuncionario.setDataAdmissao (edt_DataAdmissao.Text);
     oFuncionario.setDataDemissao (edt_DataDemissao.Text);
     oFuncionario.setCargo        (edt_Cargo.Text);
     oFuncionario.setDataNasc     (edt_DataNasc.Text);
     oFuncionario.getaCidade.setCodigo (strtoint(edt_codCidade.Text));
     oFuncionario.getaCidade.setCidade (edt_Cidade.Text);
     aCtrlFuncionario.Salvar(oFuncionario.clone);




  end;


end;
procedure TCadastrodeFuncionarios.setConsulta(pObj: TObject);
begin
  inherited;
  oConsultaCidades := TConsultaCidades(pObj);
end;

end.
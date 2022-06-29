unit uCadastrodePessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TCadastrodePessoas = class(TCadastroPai)
    lbl_Nome: TLabel;
    lbl_RG: TLabel;
    lbl_CPF: TLabel;
    edt_Nome: TEdit;
    edt_RG: TEdit;
    edt_CPF: TEdit;
    lbl_Sexo: TLabel;
    edt_Sexo: TEdit;
    lbl_Telefone: TLabel;
    lbl_Email: TLabel;
    lbl_CEP: TLabel;
    edt_Telefone: TEdit;
    edt_Email: TEdit;
    edt_CEP: TEdit;
    lbl_Bairro: TLabel;
    lbl_Logradouro: TLabel;
    lbl_Numero: TLabel;
    edt_Bairro: TEdit;
    edt_Logradouro: TEdit;
    edt_Numero: TEdit;
    lbl_Complemento: TLabel;
    edt_Complemento: TEdit;
    lbl_codCidade: TLabel;
    lbl_Cidade: TLabel;
    edt_codCidade: TEdit;
    edt_Cidade: TEdit;
    btn_Pesquisar: TButton;
    lbl_DataNasc: TLabel;
    edt_DataNasc: TEdit;
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure salvar;                            override;
    procedure sair;                              override;
    procedure limpaEdit;                         override;
    procedure carregaEdit;                       override;
    procedure bloqueiaEdit;                      override;
    procedure desbloqueiaEdit;                   override;
    procedure conhecaObj(pObj, pCtrl : TObject); override;
    procedure setConsulta(pObj : TObject);       override;

  end;

var
  CadastrodePessoas: TCadastrodePessoas;

implementation

{$R *.dfm}

{ TCadastrodePessoas }

procedure TCadastrodePessoas.bloqueiaEdit;
begin
   inherited;
   edt_Nome.Enabled        := false;
   edt_RG.Enabled          := false;
   edt_CPF.Enabled         := false;
   edt_Sexo.Enabled        := false;
   edt_Telefone.Enabled    := false;
   edt_Email.Enabled       := false;
   edt_CEP.Enabled         := false;
   edt_Bairro.Enabled      := false;
   edt_Logradouro.Enabled  := false;
   edt_Numero.Enabled      := false;
   edt_Complemento.Enabled := false;
   edt_codCidade.Enabled   := false;
   edt_DataNasc.Enabled    := false;
end;


procedure TCadastrodePessoas.btn_SairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TCadastrodePessoas.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  Salvar;
  Sair;
end;

procedure TCadastrodePessoas.carregaEdit;
begin

end;

procedure TCadastrodePessoas.conhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TCadastrodePessoas.desbloqueiaEdit;
begin
   edt_Nome.Enabled        := true;
   edt_RG.Enabled          := true;
   edt_CPF.Enabled         := true;
   edt_Sexo.Enabled        := true;
   edt_Telefone.Enabled    := true;
   edt_Email.Enabled       := true;
   edt_CEP.Enabled         := true;
   edt_Bairro.Enabled      := true;
   edt_Logradouro.Enabled  := true;
   edt_Numero.Enabled      := true;
   edt_Complemento.Enabled := true;
   edt_codCidade.Enabled   := true;
   edt_DataNasc.Enabled    := true;

end;

procedure TCadastrodePessoas.limpaEdit;
begin
   self.edt_Nome.Clear;
   self.edt_RG.Clear;
   self.edt_CPF.Clear;
   self.edt_Sexo.Clear;
   self.edt_Telefone.Clear;
   self.edt_Email.Clear;
   self.edt_CEP.Clear;
   self.edt_Bairro.Clear;
   self.edt_Logradouro.Clear;
   self.edt_Numero.Clear;
   self.edt_Complemento.Clear;
   self.edt_codCidade.Clear;



end;

procedure TCadastrodePessoas.sair;
begin
   close;

end;

procedure TCadastrodePessoas.salvar;
begin
   sair;

end;

procedure TCadastrodePessoas.setConsulta(pObj: TObject);
begin

end;

end.

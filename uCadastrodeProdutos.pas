unit uCadastrodeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls,
  uProdutos, uCtrlProdutos,uConsultaGrupos, uConsultaFornecedores,
  uGrupos, uFornecedores, uCtrlFornecedores;

type
  TCadastrodeProdutos = class(TCadastroPai)
    lbl_Produto: TLabel;
    lbl_Unidade: TLabel;
    lbl_Largura: TLabel;
    lbl_NCM: TLabel;
    lbl_QtdEstoque: TLabel;
    lbl_VlCusto: TLabel;
    lbl_VlUltCompra: TLabel;
    lbl_VlVenda: TLabel;
    lbl_CFOP: TLabel;
    lbl_Observacao: TLabel;
    lbl_oGrupo: TLabel;
    edt_Produto: TEdit;
    edt_Unidade: TEdit;
    edt_Largura: TEdit;
    edt_NCM: TEdit;
    edt_QtdEstoque: TEdit;
    edt_VlCusto: TEdit;
    edt_VlUltCompra: TEdit;
    edt_VlVenda: TEdit;
    edt_CFOP: TEdit;
    edt_Observacao: TEdit;
    edt_Grupo: TEdit;
    btn_Pesquisar1: TButton;
    btn_Pesquisar2: TButton;
    lbl_oFornecedor: TLabel;
    edt_Fornecedor: TEdit;
    lbl_Situacao: TLabel;
    edt_Situacao: TEdit;
    lbl_CodGrupo: TLabel;
    lbl_CodFornecedor: TLabel;
    edt_CodGrupo: TEdit;
    edt_CodFornecedor: TEdit;
    procedure btn_Pesquisar1Click(Sender: TObject);
    procedure btn_Pesquisar2Click(Sender: TObject);
  private
    { Private declarations }
    oProduto            : Produtos;
    aCtrlProduto        : CtrlProdutos;
    aCtrlForncedor      : CtrlFornecedores;
    oConsultaFornecedor : TConsultaFornecedores;
    oConsultaGrupo      : TConsultaGrupos;


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
  CadastrodeProdutos: TCadastrodeProdutos;

implementation

{$R *.dfm}

{ TCadastrodeProdutos }

procedure TCadastrodeProdutos.bloqueiaEdit;
begin
   inherited;
   edt_Produto.Enabled      := false;
   edt_Situacao.Enabled     := false;
   edt_Unidade.Enabled      := false;
   edt_Largura.Enabled      := false;
   edt_NCM.Enabled          := false;
   edt_QtdEstoque.Enabled   := false;
   edt_VlCusto.Enabled      := false;
   edt_VlUltcompra.Enabled  := false;
   edt_VlVenda.Enabled      := false;
   edt_Observacao.Enabled   := false;
   edt_CFOP.Enabled         := false;
   edt_Grupo.Enabled        := false;
   edt_Fornecedor.Enabled   := false;
end;

procedure TCadastrodeProdutos.btn_Pesquisar1Click(Sender: TObject);
var
 naux: string;
 oGrupo : Grupos;
begin
  inherited;
  oGrupo:= Grupos.crieObj;
  naux := oConsultaGrupo.btn_Sair.Caption;
  oConsultaGrupo.btn_Sair.Caption := 'Selecionar';
  oConsultaGrupo.conhecaObj(oGrupo,aCtrlProduto.getaCtrlGrupo);
  oConsultaGrupo.ShowModal;
  oConsultaGrupo.btn_Sair.Caption:= naux;
  self.edt_CodGrupo.Text := inttostr(oGrupo.getCodigo);
  self.edt_Grupo.Text := oGrupo.getGrupo;
  oProduto.setoGrupo(oGrupo);



end;

procedure TCadastrodeProdutos.btn_Pesquisar2Click(Sender: TObject);
var
 naux: string;
 oFornecedor : Fornecedores;
begin
  inherited;
  oFornecedor:= Fornecedores.crieObj;
  naux := oConsultaFornecedor.btn_Sair.Caption;
  oConsultaFornecedor.btn_Sair.Caption := 'Selecionar';
  oConsultaFornecedor.conhecaObj(oFornecedor, aCtrlProduto.getaCtrlFornecedor);
  oConsultaFornecedor.ShowModal;
  oConsultaFornecedor.btn_Sair.Caption:= naux;
  self.edt_CodFornecedor.Text := inttostr(oFornecedor.getCodigo);
  self.edt_Fornecedor.Text := oFornecedor.getNome;
  oProduto.setoFornecedor(oFornecedor);



end;

procedure TCadastrodeProdutos.carregaEdit;
begin
    inherited;
    edt_codigo.Text       := inttoStr(oProduto.getCodigo);
    edt_Produto.Text      := oProduto.getProduto;
    edt_Situacao.Text     := oProduto.getSituacao;
    edt_Unidade.Text      := oProduto.getUnidade;
    edt_Largura.Text      := CurrtoStr(oProduto.getLargura);
    edt_NCM.Text          := oProduto.getNCM;
    edt_QtdEstoque.Text   := CurrtoStr(oProduto.getQtdEstoque);
    edt_VlCusto.Text      := CurrtoStr(oProduto.getVlCusto);
    edt_VlUltcompra.Text  := CurrtoStr(oProduto.getVlUltcompra);
    edt_VlVenda.Text      := CurrtoStr(oProduto.getVlVenda);
    edt_Observacao.Text   := oProduto.getObservacao;
    edt_CFOP.Text         := oProduto.getCFOP;
    edt_codGrupo.Text     := inttoStr(oProduto.getoGrupo.getCodigo);
    edt_Grupo.Text       := oProduto.getoGrupo.getGrupo;
    edt_codFornecedor.Text:= inttoStr(oProduto.getoFornecedor.getCodigo);
    edt_Fornecedor.Text  := oProduto.getoFornecedor.getRazaoSocial;

end;

procedure TCadastrodeProdutos.conhecaObj(pObj, pCtrl: TObject);
begin
   inherited;
   oProduto     := Produtos(pObj);
   aCtrlProduto := CtrlProdutos(pCtrl);

end;

procedure TCadastrodeProdutos.desbloqueiaEdit;
begin
   inherited;
   edt_Produto.Enabled           := true;
   edt_Situacao.Enabled          := true;
   edt_Unidade.Enabled           := true;
   edt_Largura.Enabled           := true;
   edt_NCM.Enabled               := true;
   edt_QtdEstoque.Enabled        := true;
   edt_VlCusto.Enabled           := true;
   edt_VlUltcompra.Enabled       := true;
   edt_VlVenda.Enabled           := true;
   edt_Observacao.Enabled        := true;
   edt_CFOP.Enabled              := true;
   self.edt_Grupo.Enabled       := true;
   self.edt_Fornecedor.Enabled  := true;

end;

procedure TCadastrodeProdutos.limpaEdit;
begin
   inherited;
   edt_Produto.Clear;
   edt_Situacao.Clear;
   edt_Unidade.Clear;
   edt_Largura.Clear;
   edt_NCM.Clear;
   edt_QtdEstoque.Clear;
   edt_VlCusto.Clear;
   edt_VlUltcompra.Clear;
   edt_VlVenda.Clear;
   edt_Observacao.Clear;
   edt_CFOP.Clear;
   edt_CodGrupo.Clear;
   edt_Grupo.Clear;
   edt_CodFornecedor.Clear;
   edt_Fornecedor.Clear;

end;

procedure TCadastrodeProdutos.sair;
begin
  inherited;

end;

procedure TCadastrodeProdutos.salvar;
begin
   if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
   begin
      inherited;
      if self.edt_Produto.Text = '' then
      begin
        showmessage('Campo Produto eh Obrigatorio!');
        edt_Produto.SetFocus;
      end
      else
      begin
         oProduto.setCodigo           (strtoint(edt_codigo.Text));
         oProduto.setProduto          ( edt_Produto.Text);
         oProduto.setSituacao         ( edt_Situacao.Text);
         oProduto.setUnidade          ( edt_Unidade.Text);
         oProduto.setLargura          (strtoint(edt_Largura.Text));
         oProduto.setNCM              ( edt_NCM.Text);
         oProduto.setQtdEstoque       (StrToCurr(edt_QtdEstoque.Text));
         oProduto.setVlCusto          (StrToCurr(edt_VlCusto.Text));
         oProduto.setVlUltcompra      (StrToCurr(edt_VlUltcompra.Text));
         oProduto.setVlVenda          (StrToCurr(edt_VlVenda.Text));
         oProduto.setObservacao       (edt_Observacao.Text);
         oProduto.setCFOP             ( edt_CFOP.Text);
         oProduto.getoGrupo.setCodigo (strtoint(edt_codGrupo.Text));
         oProduto.getoGrupo.setGrupo   ( edt_Grupo.Text);
         oProduto.getoFornecedor.setCodigo (strtoint(edt_codFornecedor.Text));
         oProduto.getoFornecedor.setRazaoSocial   ( edt_Fornecedor.Text);
         aCtrlProduto.Salvar(oProduto.clone);


      end;
        showmessage ('Produto Salvo com sucesso') ;
   end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlProduto.Excluir(oProduto);
         showmessage ('Produto Excluido com sucesso') ;
      end;
      close;

  end;

procedure TCadastrodeProdutos.setConsulta(pObj: TObject);
begin
  inherited;
  oConsultaGrupo      := TConsultaGrupos(pObj);
  oConsultaFornecedor := TConsultaFornecedores(pObj);

end;

end.

unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Datasnap.DBClient, uCadastroPai, Vcl.StdCtrls,
  uPaises, uCtrlPaises;

type
  TCadastroPaises = class(TCadastroPai)
    lbl_Pais: TLabel;
    lbl_Sigla: TLabel;
    lbl_DDI: TLabel;
    edt_Pais: TEdit;
    edt_Sigla: TEdit;
    edt_DDI: TEdit;
    procedure edt_PaisExit(Sender: TObject);
  private
    { Private declarations }
    oPais     : Paises;
    aCtrlPais : CtrlPaises;

  public
    { Public declarations }
    procedure sair;                               override;
    procedure salvar;                             override;
    procedure limpaEdit;                          override;
    procedure carregaEdit;                        override;
    procedure bloqueiaEdit;                       override;
    procedure desbloqueiaEdit;                    override;
    procedure conhecaObj(pObj, pCtrl : TObject);  override;
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.bloqueiaEdit;
begin
  inherited;
  self.edt_Codigo.Enabled     := false;
  self.edt_Pais.Enabled       := false;
  self.edt_DDI.Enabled        := false;
  self.edt_Sigla.Enabled      := false;
  self.edt_DataCad.Enabled    := false;
  self.edt_DataUltAlt.Enabled := false;

end;

procedure TCadastroPaises.carregaEdit;
begin
  inherited;
  self.edt_Codigo.Text     := inttostr( oPais.getCodigo);
  self.edt_Pais.Text            := oPais.getPais;
  edt_DDI.Text             := oPais.getDDI;
  edt_Sigla.Text           := oPais.getSigla;
  self.edt_DataCad.Text    := oPais.getDataCad;
  self.edt_DataUltAlt.Text := oPais.getDataUltAlt;

end;

procedure TCadastroPaises.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais := Paises(pObj);
  aCtrlPais := CtrlPaises(pCtrl);
  self.limpaEdit;
  self.carregaEdit;

end;

procedure TCadastroPaises.desbloqueiaEdit;
begin
  inherited;
  self.edt_Pais.Enabled  := true;
  self.edt_DDI.Enabled   := true;
  self.edt_Sigla.Enabled := true;
  self.edt_DataCad.Enabled   := true;
  self.edt_DataUltAlt.Enabled := true;

end;

procedure TCadastroPaises.edt_PaisExit(Sender: TObject);
//var
//  mX : string;
begin
 // inherited;
 // aCtrlPais.Pesquisar(edt_Pais.Text);
//  if aCtrlPais.AcheiReg then
 // begin
 //  showmessage(self.edt_Pais.Text + ', Ja cadastrado !!');
 //  self.edt_Pais.SetFocus;
//end;
end;



procedure TCadastroPaises.limpaEdit;
begin
  inherited;
  self.edt_Pais.Clear;
  self.edt_DDI.Clear;
  self.edt_Sigla.Clear;
  self.edt_DataCad.Clear;
  self.edt_DataUltAlt.Clear;

end;

procedure TCadastroPaises.sair;
begin
  inherited;

end;

procedure TCadastroPaises.salvar;
var
 msg: string;
 mPais:Paises;
begin
   if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
   begin
       if edt_pais.Text = '' then
       begin
         showmessage('Campo Pais eh Obrigatorio!');
         edt_Pais.SetFocus;
       end
       else if edt_Sigla.Text = '' then
       begin
          showmessage('Campo Sigla eh Obrigatorio!');
          edt_sigla.SetFocus;
       end
       else
       begin
          oPais.setCodigo    ( strtoint(self.edt_Codigo.Text));
          oPais.setPais      ( edt_Pais.Text );
          oPais.setDDI       ( edt_DDI.Text) ;
          oPais.setSigla     ( edt_Sigla.Text );
          oPais.setDataCad   ( self.edt_DataCad.Text);
          oPais.setDataUltAlt( self.edt_DataCad.Text);
          self.aCtrlPais.Salvar(oPais.clone);
       end;
         showmessage ('Pais Salvo com sucesso') ;
   end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlPais.Excluir(oPais);
         showmessage ('Pais Excluido com sucesso') ;
      end
      else
      begin
         showmessage ('Pais n?o pode ser Excluido ');


      end;
      close;
  end;





end.

unit uCadastrodeGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls,
  uGrupos, uCtrlGrupos;

type
  TCadastrodeGrupos = class(TCadastroPai)
    lbl_Grupo: TLabel;
    lbl_Situacao: TLabel;
    lbl_Observacao: TLabel;
    edt_Grupo: TEdit;
    edt_Situacao: TEdit;
    edt_Observacao: TEdit;
  private
    { Private declarations }
    oGrupo         : Grupos;
    aCtrlGrupo     : CtrlGrupos;


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
  CadastrodeGrupos: TCadastrodeGrupos;

implementation

{$R *.dfm}

{ TCadastrodeGrupos }

procedure TCadastrodeGrupos.bloqueiaEdit;
begin
   inherited;
   edt_Grupo.Enabled      := false;
   edt_Situacao.Enabled   := false;
   edt_Observacao.Enabled := false;
end;

procedure TCadastrodeGrupos.carregaEdit;
begin
   inherited;
   edt_codigo.Text    := inttoStr(oGrupo.getCodigo);
   edt_Grupo.Text     := oGrupo.getGrupo;
   edt_Situacao.Text  := oGrupo.getSituacao;
   edt_Observacao.Text  := oGrupo.getObservacao;


end;

procedure TCadastrodeGrupos.conhecaObj(pObj, pCtrl: TObject);
begin
   inherited;
   oGrupo       := Grupos(pObj);
   aCtrlGrupo  := CtrlGrupos(pCtrl);
end;

procedure TCadastrodeGrupos.desbloqueiaEdit;
begin
   inherited;
   edt_Grupo.Enabled      := true;
   edt_Situacao.Enabled   := true;
   edt_Observacao.Enabled := true;
end;

procedure TCadastrodeGrupos.limpaEdit;
begin
   inherited;
   edt_Grupo.Clear;
   edt_Situacao.Clear;
   edt_Observacao.Clear;


end;

procedure TCadastrodeGrupos.sair;
begin
  inherited;

end;

procedure TCadastrodeGrupos.salvar;
begin
   if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
   begin
      inherited;
      if self.edt_Grupo.Text = '' then
      begin
         showmessage('Campo Grupo eh Obrigatorio!');
         edt_Grupo.SetFocus;
      end
      else
      begin
         oGrupo.setCodigo           (strtoint(edt_codigo.Text));
         oGrupo.setGrupo            ( edt_Grupo.Text);
         oGrupo.setSituacao         ( edt_Situacao.Text);
         oGrupo.setObservacao       ( edt_Observacao.Text);
         aCtrlGrupo.Salvar(oGrupo.clone);
      end;
         showmessage ('Grupo Salvo com sucesso') ;
   end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlGrupo.Excluir(oGrupo);
         showmessage ('Grupo Excluido com sucesso') ;
      end
      else
      begin
         showmessage ('Grupo não pode ser Excluido ');


      end;
      close;
  end;




procedure TCadastrodeGrupos.setConsulta(pObj: TObject);
begin
  inherited;

end;

end.

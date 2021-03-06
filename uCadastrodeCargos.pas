unit uCadastrodeCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, uCargos, uCtrlCargos;

type
  TCadastrodeCargos = class(TCadastroPai)
    lbl_Cargo: TLabel;
    edt_Cargo: TEdit;
  private
    { Private declarations }
    oCargo         : Cargos;
    aCtrlCargo     : CtrlCargos;


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
  CadastrodeCargos: TCadastrodeCargos;

implementation

{$R *.dfm}

{ TCadastrodeCargos }

procedure TCadastrodeCargos.bloqueiaEdit;
begin
   inherited;
   edt_Cargo.Enabled      := false;
   edt_DataCad.Enabled    := false;
   edt_DataUltAlt.Enabled := false;
end;

procedure TCadastrodeCargos.carregaEdit;
begin
   inherited;
   edt_codigo.Text     := inttoStr(oCargo.getCodigo);
   edt_Cargo.Text      := oCargo.getCargo;
   edt_DataCad.Text    := oCargo.getDataCad;
   edt_DataUltAlt.Text := oCargo.getDataUltAlt;
end;

procedure TCadastrodeCargos.conhecaObj(pObj, pCtrl: TObject);
begin
   inherited;
   oCargo      := Cargos(pObj);
   aCtrlCargo := CtrlCargos(pCtrl);

end;

procedure TCadastrodeCargos.desbloqueiaEdit;
begin
   inherited;
   edt_Cargo.Enabled      := true;
   edt_DataCad.Enabled    := true;
   edt_DataUltAlt.Enabled := true;

end;

procedure TCadastrodeCargos.limpaEdit;
begin
   inherited;
   edt_Cargo.Clear;
   edt_DataCad.Clear;
   edt_DataUltAlt.Clear;

end;

procedure TCadastrodeCargos.sair;
begin
  inherited;

end;

procedure TCadastrodeCargos.salvar;
begin
   if (btn_Salvar.Caption = '&Salvar') or (btn_Salvar.Caption = '&Alterar') then
   begin
      inherited;
      if self.edt_Cargo.Text = '' then
      begin
         showmessage('Campo Cargo eh Obrigatorio!');
         edt_Cargo.SetFocus;
      end
      else
      begin
         oCargo.setCodigo           (strtoint(edt_codigo.Text));
         oCargo.setCargo            ( edt_Cargo.Text);
         oCargo.setDataCad          ( edt_DataCad.Text);
         oCargo.setDataUltAlt       ( edt_DataUltAlt.Text);
         aCtrlCargo.Salvar(oCargo.clone);
      end;
         showmessage ('Cargo Salvo com sucesso') ;
   end
      else if (btn_Salvar.Caption = '&Excluir') then
      begin
         aCtrlCargo.Excluir(oCargo);
         showmessage ('Cargo Excluido com sucesso') ;
      end
      else
      begin
         showmessage ('Cargo n?o pode ser Excluido ');


      end;
      close;
  end;



procedure TCadastrodeCargos.setConsulta(pObj: TObject);
begin
  inherited;

end;

end.

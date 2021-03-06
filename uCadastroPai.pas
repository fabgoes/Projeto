unit uCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCadastroPai = class(TForm)
    lbl_Codigo: TLabel;
    edt_Codigo: TEdit;
    lbl_DataCad: TLabel;
    lbl_DataUltAtl: TLabel;
    edt_DataCad: TEdit;
    edt_DataUltAlt: TEdit;
    btn_Salvar: TButton;
    btn_Sair: TButton;
    edt_CodUsuario: TEdit;
    lbl_codUsuario: TLabel;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure salvar;                            virtual;
    procedure sair;                              virtual;
    procedure limpaEdit;                         virtual;
    procedure carregaEdit;                       virtual;
    procedure bloqueiaEdit;                      virtual;
    procedure desbloqueiaEdit;                   virtual;
    procedure conhecaObj(pObj, pCtrl : TObject); virtual;
    procedure setConsulta(pObj : TObject);       virtual;
  end;

var
  CadastroPai: TCadastroPai;

implementation

{$R *.dfm}

{ TCadastroPai }

procedure TCadastroPai.bloqueiaEdit;
begin
   self.edt_Codigo.Enabled := false;
   self.edt_DataCad.Enabled := false;
   self.edt_DataUltAlt.Enabled:= false;
end;

procedure TCadastroPai.btn_SairClick(Sender: TObject);
begin
   inherited;
   Sair;
end;

procedure TCadastroPai.btn_SalvarClick(Sender: TObject);
begin
   inherited;
   Salvar;
   Sair;
end;

procedure TCadastroPai.carregaEdit;
begin

end;

procedure TCadastroPai.conhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TCadastroPai.desbloqueiaEdit;
begin
   self.edt_Codigo.Enabled := true;
   self.edt_DataCad.Enabled := true;
   self.edt_DataUltAlt.Enabled:= true;

end;

procedure TCadastroPai.limpaEdit;
begin
   self.edt_codigo.Text := '0';
   self.edt_Codigo.Clear;
   self.edt_DataCad.Clear;
   self.edt_DataUltAlt.Clear;

end;

procedure TCadastroPai.sair;
begin
    close;
end;

procedure TCadastroPai.salvar;
begin
   Sair;
end;

procedure TCadastroPai.setConsulta(pObj: TObject);
begin

end;

end.

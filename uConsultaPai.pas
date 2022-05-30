unit uConsultaPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, uController;

type
  TConsultaPai = class(TForm)
    chave: TEdit;
    btn_Pesquisar: TButton;
    btn_Incluir: TButton;
    btn_Alterar: TButton;
    btn_Excluir: TButton;
    btn_Sair: TButton;
    DBGrid1: TDBGrid;
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btn_IncluirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  ); virtual;
    procedure Pesquisar;                          virtual;
    procedure Incluir;                            virtual;
    procedure Alterar;                            virtual;
    procedure Excluir;                            virtual;
    procedure Sair;                               virtual;
    procedure setcad (pObj : TObject);            virtual;
  end;

var
  ConsultaPai: TConsultaPai;

implementation

{$R *.dfm}

procedure TConsultaPai.Alterar;
begin

end;

procedure TConsultaPai.btn_AlterarClick(Sender: TObject);
begin
   Alterar;
end;

procedure TConsultaPai.btn_ExcluirClick(Sender: TObject);
begin
   Excluir;
end;

procedure TConsultaPai.btn_IncluirClick(Sender: TObject);
begin
   Incluir;
end;

procedure TConsultaPai.btn_PesquisarClick(Sender: TObject);
begin
   Pesquisar;
end;

procedure TConsultaPai.btn_SairClick(Sender: TObject);
begin
   Sair;
end;

procedure TConsultaPai.conhecaObj(pObj, pCtrl: TObject  );
begin

end;

procedure TConsultaPai.Excluir;
begin

end;

procedure TConsultaPai.Incluir;
begin

end;

procedure TConsultaPai.Pesquisar;
begin
   

end;

procedure TConsultaPai.Sair;
begin
   Close;
end;

procedure TConsultaPai.setcad(pObj: TObject);
begin

end;

end.

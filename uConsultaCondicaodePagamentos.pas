unit uConsultaCondicaodePagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsultaCondicaodePagamentos = class(TConsultaPai)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject  ); override;
    procedure Pesquisar;                          override;
    procedure Incluir;                            override;
    procedure Alterar;                            override;
    procedure Excluir;                            override;
    procedure Sair;                               override;
    procedure setcad (pObj : TObject);            override;
  end;

var
  ConsultaCondicaodePagamentos: TConsultaCondicaodePagamentos;

implementation

{$R *.dfm}

{ TConsultaCondicaodePagamentos }

procedure TConsultaCondicaodePagamentos.Alterar;
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.Excluir;
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.Incluir;
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.Sair;
begin
  inherited;

end;

procedure TConsultaCondicaodePagamentos.setcad(pObj: TObject);
begin
  inherited;

end;

end.

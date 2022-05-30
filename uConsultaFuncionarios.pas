unit uConsultaFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsultaFuncionarios = class(TConsultaPai)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFuncionarios: TConsultaFuncionarios;

implementation

{$R *.dfm}

end.

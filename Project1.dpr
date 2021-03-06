program Project1;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Gerente},
  uConsultaPai in 'uConsultaPai.pas' {ConsultaPai},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uController in 'uController.pas',
  uDao in 'uDao.pas',
  uCadastroPai in 'uCadastroPai.pas' {CadastroPai},
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uInter in 'uInter.pas',
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas',
  uCtrlPaises in 'uCtrlPaises.pas',
  uCtrlEstados in 'uCtrlEstados.pas',
  uCtrlCidades in 'uCtrlCidades.pas',
  uDaoPaises in 'uDaoPaises.pas',
  uDaoEstados in 'uDaoEstados.pas',
  uDaoCidades in 'uDaoCidades.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  uPessoas in 'uPessoas.pas',
  uClientes in 'uClientes.pas',
  uFornecedores in 'uFornecedores.pas',
  uFuncionarios in 'uFuncionarios.pas',
  uFormadePagamentos in 'uFormadePagamentos.pas',
  uCondicaodePagamentos in 'uCondicaodePagamentos.pas',
  uCtrlFormadePagamentos in 'uCtrlFormadePagamentos.pas',
  uDaoFormadePagamentos in 'uDaoFormadePagamentos.pas',
  uDaoCondicaodePagamentos in 'uDaoCondicaodePagamentos.pas',
  uCtrlCondicaodePagamentos in 'uCtrlCondicaodePagamentos.pas',
  uConsultaFormadePagamentos in 'uConsultaFormadePagamentos.pas' {ConsultaFormadePagamentos},
  uConsultaCondicaodePagamentos in 'uConsultaCondicaodePagamentos.pas' {ConsultaCondicaodePagamentos},
  uConsultaClientes in 'uConsultaClientes.pas' {ConsultaClientes},
  uConsultaFuncionarios in 'uConsultaFuncionarios.pas' {ConsultaFuncionarios},
  uConsultaFornecedores in 'uConsultaFornecedores.pas' {ConsultaFornecedores},
  uDaoClientes in 'uDaoClientes.pas',
  uDaoFuncionarios in 'uDaoFuncionarios.pas',
  uDaoFornecedores in 'uDaoFornecedores.pas',
  uCtrlClientes in 'uCtrlClientes.pas',
  uCtrlFuncionarios in 'uCtrlFuncionarios.pas',
  uCtrlFornecedores in 'uCtrlFornecedores.pas' {,
  uCadastrodePessoas in 'uCadastrodePessoas.pas' {CadastrodePessoas},
  uCadastrodePessoas in 'uCadastrodePessoas.pas' {CadastrodePessoas},
  uCadastrodeClientes in 'uCadastrodeClientes.pas' {CadastrodeClientes},
  uCadastrodeFuncionarios in 'uCadastrodeFuncionarios.pas' {CadastrodeFuncionarios},
  uCadastrodeFornecedores in 'uCadastrodeFornecedores.pas' {CadastrodeFornecedores},
  uProdutos in 'uProdutos.pas',
  uGrupos in 'uGrupos.pas',
  uDaoGrupos in 'uDaoGrupos.pas',
  uCtrlGrupos in 'uCtrlGrupos.pas',
  uConsultaGrupos in 'uConsultaGrupos.pas' {ConsultaGrupos},
  uCadastrodeGrupos in 'uCadastrodeGrupos.pas' {CadastrodeGrupos},
  uDaoProdutos in 'uDaoProdutos.pas',
  uCtrlProdutos in 'uCtrlProdutos.pas',
  uConsultaProdutos in 'uConsultaProdutos.pas' {ConsultaProdutos},
  uCadastrodeProdutos in 'uCadastrodeProdutos.pas' {CadastrodeProdutos},
  uCargos in 'uCargos.pas',
  uDaoCargos in 'uDaoCargos.pas',
  uCtrlCargos in 'uCtrlCargos.pas',
  uConsultaCargos in 'uConsultaCargos.pas' {ConsultaCargos},
  uCadastrodeCargos in 'uCadastrodeCargos.pas' {CadastrodeCargos};

{$R *.res}
var
   Gerente:TGerente;

begin
   Gerente:= TGerente.Create(nil);
   Gerente.ShowModal;
   Gerente.FreeInstance;

 // Application.Initialize;
 // Application.MainFormOnTaskbar := True;
 // Application.CreateForm(TGerente, Gerente);
 // Application.CreateForm(TConsultaPai, ConsultaPai);
 // Application.CreateForm(TConsultaPaises, ConsultaPaises);
 // Application.CreateForm(TConsultaEstados, ConsultaEstados);
 // Application.CreateForm(TConsultaCidades, ConsultaCidades);
 // Application.CreateForm(TCadastroPai, CadastroPai);
 // Application.CreateForm(TCadastroPaises, CadastroPaises);
 // Application.CreateForm(TCadastroEstados, CadastroEstados);
 // Application.CreateForm(TCadastroCidades, CadastroCidades);
 // Application.CreateForm(TDM, DM);
 // Application.Run;
end.

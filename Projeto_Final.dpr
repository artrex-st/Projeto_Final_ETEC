program Projeto_Final;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UfrmConexao in 'UfrmConexao.pas' {dmConexao: TDataModule},
  UfrmCadastroBase in 'UfrmCadastroBase.pas' {frmCadastroBase},
  UfrmCadastroClientes in 'UfrmCadastroClientes.pas' {frmCadastroClientes},
  UfrmCadastroCidades in 'UfrmCadastroCidades.pas' {frmCadastroCidades},
  UfrmPesquisaBase in 'UfrmPesquisaBase.pas' {frmPesquisaBase},
  UfrmPesquisaClientes in 'UfrmPesquisaClientes.pas' {frmPesquisaClientes},
  UfrmRelatorioClientes in 'UfrmRelatorioClientes.pas' {frmRelatorioClientes},
  UfrmRelatorioClientesCidades in 'UfrmRelatorioClientesCidades.pas' {frmRelatorioClientesCidades},
  UfrmPesquisaCidades in 'UfrmPesquisaCidades.pas' {frmPesquisaCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

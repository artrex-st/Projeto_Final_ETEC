unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Relatorio1: TMenuItem;
    Relatorios1: TMenuItem;
    ClientesporCidade1: TMenuItem;
    Cidades1: TMenuItem;
    Fechar1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Relatorio1Click(Sender: TObject);
    procedure ClientesporCidade1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCadastroClientes, UfrmCadastroCidades,
  UfrmRelatorioClientesCidades, UfrmRelatorioClientes;

procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
begin
  if not Assigned(frmCadastroCidades) then
    begin
      frmCadastroCidades := TfrmCadastroCidades.Create(Self);
    end;
    frmCadastroCidades.Show;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if not Assigned(frmCadastroClientes) then
    begin
      frmCadastroClientes := TfrmCadastroClientes.Create(Self);
    end;
    frmCadastroClientes.Show;

end;

procedure TfrmPrincipal.ClientesporCidade1Click(Sender: TObject);
begin
  if not Assigned(frmRelatorioClientesCidades) then
    begin
      frmRelatorioClientesCidades := TfrmRelatorioClientesCidades.Create(Self);
    end;
    frmRelatorioClientesCidades.RelatorioClientesCidades.ShowReport();
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  case application.MessageBox('Deseja realmente fechar o programa?', 'Confirmação', MB_yesno + MB_iconInformation) of
    mrNo, mrCancel: Application.MessageBox('Retomando os testes.','Continuando...');
    mrYes: Close;
  end;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then    //tem que verificar o keyPreviw DO FORM em properties
    begin
      case application.MessageBox('Deseja realmente fechar o programa?', 'Confirmação', MB_yesno + MB_iconInformation) of
        mrNo, mrCancel: Application.MessageBox('retomando os testes.','Continuando...');
        mrYes: Close;
      end;
    end;
    if (Key = #13) then begin
      //Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
    end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Application.MessageBox('use a os atalhos "ALT" + "letra sublinhada" para maior agilidade.','Informação.',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmPrincipal.Relatorio1Click(Sender: TObject);
begin
  if not Assigned(frmRelatorioClientes) then
    begin
      frmRelatorioClientes := TfrmRelatorioClientes.Create(Self);
    end;
    frmRelatorioClientes.RelatorioClientes.ShowReport();
end;

end.

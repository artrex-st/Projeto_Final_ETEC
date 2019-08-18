unit UfrmCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCadastroBase = class(TForm)
    pnTopo: TPanel;
    btnUltimo: TButton;
    btnAvançar: TButton;
    btnVoltar: TButton;
    btnPrimeiro: TButton;
    btnPesquisa: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnAdicionar: TButton;
    btnCancelar: TButton;
    gbCadastro: TGroupBox;
    fdqConexaoTabela: TFDQuery;
    dsTabela: TDataSource;
    btnFechar: TButton;
    procedure Ativo();
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnAvançarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBase: TfrmCadastroBase;

implementation

{$R *.dfm}

uses UfrmConexao;

{ TfrmCadastroBase }

procedure TfrmCadastroBase.Ativo;
begin
  if btnSalvar.Enabled=false then
    begin
      btnAdicionar.Enabled:=false;
      btnEditar.Enabled:=false;
      btnExcluir.Enabled:=false;
      btnAvançar.Enabled:=false;
      btnVoltar.Enabled:=false;
      btnPrimeiro.Enabled:=false;
      btnUltimo.Enabled:=false;
      btnSalvar.Enabled:=true;
      btnCancelar.Enabled:=true;
      gbCadastro.Enabled:=true;
    end
      else
        begin
          btnAdicionar.Enabled:=true;
          btnEditar.Enabled:=true;
          btnExcluir.Enabled:=true;
          btnAvançar.Enabled:=true;
          btnVoltar.Enabled:=true;
          btnPrimeiro.Enabled:=true;
          btnUltimo.Enabled:=true;
          btnSalvar.Enabled:=false;
          btnCancelar.Enabled:=false;
          gbCadastro.Enabled:=false;
        end
end;

procedure TfrmCadastroBase.btnAdicionarClick(Sender: TObject);
begin
  fdqConexaoTabela.Append;
  Ativo();
end;

procedure TfrmCadastroBase.btnAvançarClick(Sender: TObject);
begin
  fdqConexaoTabela.Next;
end;

procedure TfrmCadastroBase.btnCancelarClick(Sender: TObject);
begin
  fdqConexaoTabela.Cancel;
  Application.MessageBox('CANCELADO!','Ação cancelada.',MB_OK+MB_ICONEXCLAMATION);
  Ativo();
end;

procedure TfrmCadastroBase.btnEditarClick(Sender: TObject);
begin
  fdqConexaoTabela.Edit;
  Ativo();
end;

procedure TfrmCadastroBase.btnExcluirClick(Sender: TObject);
var
  user:Integer;
begin
  try
    user:=Application.MessageBox('Deseja realmente Excluir?','Exclusão de cadastro.',MB_YESNO+MB_ICONQUESTION);
    //6= sim / 7= nao
    if user=6 then
      begin
        fdqConexaoTabela.Delete;
        Application.MessageBox('Item Excluido!','Exclusão de cadastro.',MB_OK+MB_ICONEXCLAMATION);
      end
      else
        begin
          Application.MessageBox('CANCELADO!','Exclusão de cadastro cancelada.',MB_OK+MB_ICONEXCLAMATION);
        end;
  Except
    btnExcluir.Enabled:=false;
    Application.MessageBox('Impossivel excluir cadastro inexistente.','Atenção!',MB_OK+MB_ICONERROR)
  end;
end;

procedure TfrmCadastroBase.btnPrimeiroClick(Sender: TObject);
begin
  fdqConexaoTabela.First;
end;

procedure TfrmCadastroBase.btnSalvarClick(Sender: TObject);
begin
  fdqConexaoTabela.Post;
  Ativo();
  Application.MessageBox('Salvo!','Salvo com sucesso.',MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmCadastroBase.btnUltimoClick(Sender: TObject);
begin
  fdqConexaoTabela.Last;
end;

procedure TfrmCadastroBase.btnVoltarClick(Sender: TObject);
begin
  fdqConexaoTabela.Prior;
end;

procedure TfrmCadastroBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then    //tem que verificar o keyPreviw
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

procedure TfrmCadastroBase.btnFecharClick(Sender: TObject);
begin
  close;
end;

end.

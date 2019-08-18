unit UfrmPesquisaBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPesquisaBase = class(TForm)
    pnTop: TPanel;
    DBGrid: TDBGrid;
    dsTabela: TDataSource;
    lblOpcao: TLabel;
    lblPesquisa: TLabel;
    cbCampo: TComboBox;
    edtPesquisa: TEdit;
    btnPesquisa: TButton;
    Panel1: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    fdqTabela2: TFDQuery;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    blConfirma:Boolean;
  end;

var
  frmPesquisaBase: TfrmPesquisaBase;

implementation

{$R *.dfm}

uses UfrmConexao;

procedure TfrmPesquisaBase.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisaBase.btnConfirmarClick(Sender: TObject);
begin
  blConfirma:=true;
  Close;
end;

procedure TfrmPesquisaBase.btnPesquisaClick(Sender: TObject);
begin
  DBGrid.SetFocus;
end;

procedure TfrmPesquisaBase.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
   Begin
    blConfirma:=true;
    Close;
   end;
end;

procedure TfrmPesquisaBase.FormCreate(Sender: TObject);
begin
  blConfirma:=false;
end;

procedure TfrmPesquisaBase.FormKeyPress(Sender: TObject; var Key: Char);
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

end.

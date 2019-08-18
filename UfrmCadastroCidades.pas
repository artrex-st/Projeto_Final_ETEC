unit UfrmCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadastroBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TfrmCadastroCidades = class(TfrmCadastroBase)
    dbeCod: TDBEdit;
    dbeNome: TDBEdit;
    dbeUf: TDBEdit;
    lblCod: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    fdqConexaoTabelacod: TFDAutoIncField;
    fdqConexaoTabelanome: TStringField;
    fdqConexaoTabelauf: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidades: TfrmCadastroCidades;

implementation

{$R *.dfm}

uses UfrmPesquisaCidades;

procedure TfrmCadastroCidades.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
end;

procedure TfrmCadastroCidades.btnEditarClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
end;

procedure TfrmCadastroCidades.Button5Click(Sender: TObject);
var
  form : TfrmPesquisaCidades;
  iID:integer;
begin
  inherited;
  form := TfrmPesquisaCidades.Create(nil);
  try
    form.ShowModal;
    if form.blConfirma then
      begin
        iID:=form.fdqTabela2.FieldByName('cod').AsInteger;
        //fdqConexaoTabela.Locate('id',iID,[]);
        fdqConexaoTabela.FindKey([iID]);
      end;
  finally
    form.Free;
  end;
end;

procedure TfrmCadastroCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // fechar da base
end;

procedure TfrmCadastroCidades.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadastroCidades:=nil;
end;

procedure TfrmCadastroCidades.FormShow(Sender: TObject);
begin
  inherited;
  fdqConexaoTabela.Open();
end;

end.

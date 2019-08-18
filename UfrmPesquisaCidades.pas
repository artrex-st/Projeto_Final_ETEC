unit UfrmPesquisaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaCidades = class(TfrmPesquisaBase)
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfirmarPesquisa();
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCidades: TfrmPesquisaCidades;

implementation

{$R *.dfm}

uses UfrmConexao;

procedure TfrmPesquisaCidades.btnPesquisaClick(Sender: TObject);

begin
  ConfirmarPesquisa();
end;

procedure TfrmPesquisaCidades.ConfirmarPesquisa;  /////////////////////////////// confirma pesquisa
var
  campo:string;
begin
  inherited;
  campo := cbCampo.Text;
  fdqTabela2.Close;
  fdqTabela2.SQL.Clear;

  fdqTabela2.SQL.Add('select * from cidades where '+campo+' like :pesq');
  fdqTabela2.ParamByName('pesq').AsString:=edtPesquisa.Text+'%';
  fdqTabela2.Open();
end;

procedure TfrmPesquisaCidades.DBGridDblClick(Sender: TObject);   //////////////// click duplo
begin
  inherited;
  //
end;

procedure TfrmPesquisaCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // FORM CLOSE
end;

procedure TfrmPesquisaCidades.FormCreate(Sender: TObject);
var
i:Integer;
begin
  inherited;
  fdqTabela2.Close;
  fdqTabela2.SQL.Clear;
  fdqTabela2.SQL.Add('select * from cidades where 1=-1');
  fdqTabela2.Open();
  for i := 0 to fdqTabela2.FieldCount-1 do
    begin
      cbCampo.Items.Add(fdqTabela2.Fields.Fields[i].FieldName);
    end;
  cbCampo.ItemIndex:=0;
end;

procedure TfrmPesquisaCidades.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesquisaCidades:=nil;  // form destroy
end;

end.

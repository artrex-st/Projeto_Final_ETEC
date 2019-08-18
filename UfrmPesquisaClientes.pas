unit UfrmPesquisaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaClientes = class(TfrmPesquisaBase)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

{$R *.dfm}

procedure TfrmPesquisaClientes.btnPesquisaClick(Sender: TObject);
var
  campo:string;
begin
  inherited;
  campo := cbCampo.Text;
  fdqTabela2.Close;
  fdqTabela2.SQL.Clear;

  fdqTabela2.SQL.Add('select * from clientes where '+campo+' like :pesq');
  fdqTabela2.ParamByName('pesq').AsString:=edtPesquisa.Text+'%';
  fdqTabela2.Open();
end;

procedure TfrmPesquisaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // FORM CLOSE
end;

procedure TfrmPesquisaClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesquisaClientes:=nil;  // form destroy
end;

procedure TfrmPesquisaClientes.FormShow(Sender: TObject);
var
i:Integer;
begin
  inherited;
  fdqTabela2.Close;
  fdqTabela2.SQL.Clear;
  fdqTabela2.SQL.Add('select * from clientes where 1=-1');
  fdqTabela2.Open();
  for i := 0 to fdqTabela2.FieldCount-1 do
    begin
      cbCampo.Items.Add(fdqTabela2.Fields.Fields[i].FieldName);
    end;
  cbCampo.ItemIndex:=0;
end;

end.

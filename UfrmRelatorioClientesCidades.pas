unit UfrmRelatorioClientesCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF,
  frxExportBaseDialog, frxExportHTML;

type
  TfrmRelatorioClientesCidades = class(TForm)
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    fdqConexao: TFDQuery;
    dataSetClientes: TfrxDBDataset;
    RelatorioClientesCidades: TfrxReport;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioClientesCidades: TfrmRelatorioClientesCidades;

implementation

{$R *.dfm}

uses UfrmConexao;

procedure TfrmRelatorioClientesCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree; // fechar da base
end;

procedure TfrmRelatorioClientesCidades.FormDestroy(Sender: TObject);
begin
  frmRelatorioClientesCidades:=nil;  // destroy
end;

procedure TfrmRelatorioClientesCidades.FormShow(Sender: TObject);
begin
  fdqConexao.Open();      // show
end;

end.

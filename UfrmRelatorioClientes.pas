unit UfrmRelatorioClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, Vcl.StdCtrls,
  frxExportHTML, frxExportBaseDialog, frxExportPDF;

type
  TfrmRelatorioClientes = class(TForm)
    RelatorioClientes: TfrxReport;
    DataSetClientes: TfrxDBDataset;
    fdqConexao: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    procedure btnVerrelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioClientes: TfrmRelatorioClientes;

implementation

{$R *.dfm}

uses UfrmConexao;


procedure TfrmRelatorioClientes.btnVerrelatorioClick(Sender: TObject);
begin
  RelatorioClientes.ShowReport();
end;

procedure TfrmRelatorioClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree; // fechar da base
end;

procedure TfrmRelatorioClientes.FormDestroy(Sender: TObject);
begin
  frmRelatorioClientes:=nil;  // destroy
end;

procedure TfrmRelatorioClientes.FormShow(Sender: TObject);
begin
  fdqConexao.Open();      // show
end;

end.

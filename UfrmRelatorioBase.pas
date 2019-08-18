unit UfrmRelatorioBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF,
  frxExportBaseDialog, frxExportHTML;

type
  TfrmRelatorioBase = class(TForm)
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    fdqConexao: TFDQuery;
    dataSetClientes: TfrxDBDataset;
    RelatorioClientesCidades: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioBase: TfrmRelatorioBase;

implementation

{$R *.dfm}

uses UfrmConexao;

end.

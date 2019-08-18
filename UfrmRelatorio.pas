unit UfrmRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, Vcl.StdCtrls;

type
  TfrmRelatorio = class(TForm)
    RelatorioClientes: TfrxReport;
    DataSetClientes: TfrxDBDataset;
    fdqConexao: TFDQuery;
    btnVerrelatorio: TButton;
    procedure btnVerrelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses UfrmConexao;


procedure TfrmRelatorio.btnVerrelatorioClick(Sender: TObject);
begin
  RelatorioClientes.ShowReport();
end;

end.

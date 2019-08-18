unit UfrmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  TdmConexao = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConexao: TFDConnection;
    Icones: TImageList;
    procedure FDConexaoBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation
uses IniFiles;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.FDConexaoBeforeConnect(Sender: TObject);
var
  Arquivo: Ansistring;
  ArquivoIni: TIniFile;
begin
  Arquivo := Copy(ExtractFilePath(System.CmdLine), 2, Length(ExtractFilePath(System.CmdLine)) - 1) + 'bancoFD.ini';
  ArquivoIni := TIniFile.Create(Arquivo);
  try
    if FileExists(Arquivo) then
      begin
        if Trim(ArquivoIni.ReadString('BancoDados', 'StringConexao', '')) <> '' then
        begin
          TFDConnection(sender).ConnectionString := ArquivoIni.ReadString('BancoDados', 'StringConexao', '') ;
        end;
      end
    else
      begin
        ArquivoIni.WriteString('BancoDados', 'StringConexao', '');
      end;
  finally
    freeandNil(ArquivoIni);
  end;
end;

end.

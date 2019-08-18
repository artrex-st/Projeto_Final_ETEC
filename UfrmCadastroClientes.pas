unit UfrmCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadastroBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroClientes = class(TfrmCadastroBase)
    dbeCod: TDBEdit;
    lblCod: TLabel;
    dbeNome: TDBEdit;
    lblNome: TLabel;
    dbeSnome: TDBEdit;
    lblSnome: TLabel;
    dbeFone: TDBEdit;
    lblTelef: TLabel;
    dbeCredito: TDBEdit;
    lblCredito: TLabel;
    lblEndereco: TLabel;
    dbeEndereco: TDBEdit;
    dbeNumero: TDBEdit;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    dbeComplemento: TDBEdit;
    dbeData: TDBEdit;
    lblData: TLabel;
    lblCidade: TLabel;
    lblUf: TLabel;
    lblCodCIdade: TLabel;
    dbeCodCidade: TDBEdit;
    pnCidade: TPanel;
    edtCidade: TEdit;
    edtUf: TEdit;
    btnCidPesq: TButton;
    fdqConexaoTabelacod: TFDAutoIncField;
    fdqConexaoTabelanome: TStringField;
    fdqConexaoTabelasnome: TStringField;
    fdqConexaoTabelacod_cidade: TIntegerField;
    fdqConexaoTabelaendereco: TStringField;
    fdqConexaoTabelanumero: TStringField;
    fdqConexaoTabelacomplemento: TStringField;
    fdqConexaoTabelatelefone: TStringField;
    fdqConexaoTabeladatanacido: TDateField;
    fdqConexaoTabelacredito: TBCDField;
    lblReais: TLabel;
    pnCredito: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure dbeDataKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure Chamacidade();
    procedure AtualizaCidade();
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvançarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCidPesqClick(Sender: TObject);
    procedure fdqConexaoTabeladatanacidoSetText(Sender: TField;
      const Text: string);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses UfrmPesquisaClientes, UfrmPesquisaCidades, UfrmConexao;

procedure TfrmCadastroClientes.AtualizaCidade;   /////////////////////////////// atualiza cidade
var
  formCid : TfrmPesquisaCidades;
begin
  inherited;
  if (dbeCodCidade.Text<>'') and (dbeCodCidade.Text <> null) then
  begin
    formCid := TfrmPesquisaCidades.Create(nil);
      try
        formCid.fdqTabela2.Close;
        formCid.fdqTabela2.SQL.Clear;
        formCid.fdqTabela2.SQL.Add('SELECT nome, uf FROM cidades  where cod = :aCod;');
        formCid.fdqTabela2.ParamByName('aCod').AsInteger := StrToIntDef(dbeCodCidade.Text, 0);
        formCid.fdqTabela2.Open;

        edtCidade.Text := formCid.fdqTabela2.FieldByName('nome').AsString;
        edtUf.Text := formCid.fdqTabela2.FieldByName('uf').AsString; //formCid.fdqTabela.Fields[12].value;
        formCid.fdqTabela2.close;

      finally
        formCid.Free;
      end;
  end;

end;

procedure TfrmCadastroClientes.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  dbeNome.SetFocus;
  dbeCodCidade.Enabled:= false;
  dbeCodCidade.Clear;
  edtCidade.Clear;
  edtUf.Clear;
end;

procedure TfrmCadastroClientes.btnAvançarClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade();
end;

procedure TfrmCadastroClientes.btnCidPesqClick(Sender: TObject);   ////////////////////// btn pesquisa
begin
  inherited;
  Chamacidade();
end;

procedure TfrmCadastroClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  dbeCodCidade.Enabled:= false;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dbeCodCidade.Text = '' then
    begin
      edtCidade.Clear;
      edtUf.Clear;
    end;
end;

procedure TfrmCadastroClientes.btnPrimeiroClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade();
end;

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  if dbeNome.Text ='' then
    begin
      Application.MessageBox('Nome Obrigatório','Atenção!',MB_OK+MB_ICONEXCLAMATION);
      dbeNome.SetFocus;
    end
    else
    if StrToFloat(dbeCredito.Text) <= 0 then
      begin
        Application.MessageBox('Credito não pode ser menor que 1','Atenção!',MB_OK+MB_ICONEXCLAMATION);
        dbeCredito.SetFocus;
      end
      else
        inherited;
  AtualizaCidade();
end;

procedure TfrmCadastroClientes.btnUltimoClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade();
end;

procedure TfrmCadastroClientes.btnVoltarClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade();
end;

procedure TfrmCadastroClientes.Button5Click(Sender: TObject);   ///////////////// pesquisa clientes
var
  form : TfrmPesquisaClientes;
  iID:integer;
begin
  inherited;
  form := TfrmPesquisaClientes.Create(nil);
  try
    form.ShowModal;
    if form.blConfirma then
      begin
        iID:=form.fdqTabela2.FieldByName('cod').AsInteger;
        //fdqConexaoTabela.Locate('id',iID,[]);
        fdqConexaoTabela.FindKey([iID]);
        AtualizaCidade();
      end;
  finally
    form.Free;
  end;
end;

procedure TfrmCadastroClientes.Chamacidade;   //////////////////////////////////// pesquisa cidade
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
        //form.fdqTabela2.FindKey([iID]);
        dbeCodCidade.Text := IntToStr(form.fdqTabela2.FieldByName('cod').AsInteger);
        edtCidade.Text := form.fdqTabela2.FieldByName('nome').AsString;
        edtUf.Text := form.fdqTabela2.FieldByName('uf').AsString;
        //iID:=form.fdqTabela.FieldByName('cod').AsInteger;
        //fdqConexaoTabela.Locate('id',iID,[]);
      end;
  finally
    form.Free;
  end;
end;

procedure TfrmCadastroClientes.dbeDataKeyPress(Sender: TObject; var Key: Char);
var copia:string;
begin
  inherited;
end;

procedure TfrmCadastroClientes.fdqConexaoTabeladatanacidoSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  try
    Sender.Value := StrToDate(Text);
  except
    Application.MessageBox('Data Inválida!','Atenção',MB_OK+MB_ICONHAND);
  end;
end;

procedure TfrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree; // fechar da base
end;

procedure TfrmCadastroClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadastroClientes:=nil;
end;

procedure TfrmCadastroClientes.FormShow(Sender: TObject);
begin
  inherited;
  fdqConexaoTabela.Open();
  if dbeCodCidade.Text = '' then
    begin
      edtCidade.Clear;
      edtUf.Clear;
    end
    else
      AtualizaCidade();
  //dbeCredito.Field.EditMask:= '!R$ 99999,99;#';
end;

end.

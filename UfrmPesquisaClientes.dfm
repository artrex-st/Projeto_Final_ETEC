inherited frmPesquisaClientes: TfrmPesquisaClientes
  Caption = 'Pesquisa Clientes'
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dsTabela: TDataSource
    DataSet = fdqTabela2
  end
  inherited fdqTabela2: TFDQuery
    Indexes = <
      item
        Active = True
        Name = 'CodCliPesq'
        Fields = 'cod'
      end>
    IndexesActive = False
    SQL.Strings = (
      'select * from clientes')
    Left = 440
    Top = 248
  end
end

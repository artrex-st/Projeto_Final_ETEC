inherited frmPesquisaCidades: TfrmPesquisaCidades
  Caption = 'Pesquisa Cidades'
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTop: TPanel
    inherited btnPesquisa: TButton
      OnClick = btnPesquisaClick
    end
  end
  inherited dsTabela: TDataSource
    DataSet = fdqTabela2
  end
  inherited fdqTabela2: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'CodCidadePesq'
        Fields = 'cod'
      end>
    IndexesActive = False
    IndexName = 'CodCidadePesq'
    SQL.Strings = (
      'select * from cidades')
  end
end

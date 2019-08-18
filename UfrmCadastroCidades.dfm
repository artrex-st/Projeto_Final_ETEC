inherited frmCadastroCidades: TfrmCadastroCidades
  Caption = 'frmCadastroCidades'
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTopo: TPanel
    inherited btnPesquisa: TButton
      OnClick = Button5Click
    end
  end
  inherited gbCadastro: TGroupBox
    Caption = 'Cidades:'
    object lblCod: TLabel
      Left = 56
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Codigo:'
    end
    object Label1: TLabel
      Left = 56
      Top = 88
      Width = 80
      Height = 13
      Caption = 'Nome da cidade:'
    end
    object Label2: TLabel
      Left = 56
      Top = 134
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object dbeCod: TDBEdit
      Left = 56
      Top = 51
      Width = 121
      Height = 21
      DataField = 'cod'
      DataSource = dsTabela
      Enabled = False
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 56
      Top = 107
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome'
      DataSource = dsTabela
      TabOrder = 1
    end
    object dbeUf: TDBEdit
      Left = 56
      Top = 152
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'uf'
      DataSource = dsTabela
      TabOrder = 2
    end
  end
  inherited fdqConexaoTabela: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Pesquisa_codCidade'
        Fields = 'cod'
      end>
    IndexName = 'Pesquisa_codCidade'
    SQL.Strings = (
      'select * from cidades')
    Left = 472
    Top = 241
    object fdqConexaoTabelacod: TFDAutoIncField
      FieldName = 'cod'
      Origin = 'cod'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqConexaoTabelanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object fdqConexaoTabelauf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 3
    end
  end
  inherited dsTabela: TDataSource
    Left = 560
    Top = 241
  end
end

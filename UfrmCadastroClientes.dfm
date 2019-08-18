inherited frmCadastroClientes: TfrmCadastroClientes
  Caption = 'Cadastro Clientes'
  ClientHeight = 340
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTopo: TPanel
    inherited btnPesquisa: TButton
      Left = 530
      OnClick = Button5Click
      ExplicitLeft = 530
    end
    inherited btnFechar: TButton
      Left = 604
      Width = 61
      ExplicitLeft = 604
      ExplicitWidth = 61
    end
  end
  inherited gbCadastro: TGroupBox
    Height = 307
    Caption = 'Clientes:'
    ExplicitHeight = 307
    object lblCod: TLabel
      Left = 30
      Top = 29
      Width = 86
      Height = 13
      Caption = 'Codigo do cliente:'
    end
    object lblNome: TLabel
      Left = 30
      Top = 77
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lblSnome: TLabel
      Left = 30
      Top = 125
      Width = 62
      Height = 13
      Caption = 'Sobre Nome:'
    end
    object lblTelef: TLabel
      Left = 30
      Top = 173
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object lblEndereco: TLabel
      Left = 301
      Top = 127
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object lblNumero: TLabel
      Left = 509
      Top = 127
      Width = 41
      Height = 13
      Caption = 'Numero:'
    end
    object lblComplemento: TLabel
      Left = 301
      Top = 175
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object lblData: TLabel
      Left = 30
      Top = 229
      Width = 99
      Height = 13
      Caption = 'Data de nascimento:'
    end
    object dbeCod: TDBEdit
      Left = 30
      Top = 48
      Width = 121
      Height = 21
      DataField = 'cod'
      DataSource = dsTabela
      Enabled = False
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 30
      Top = 96
      Width = 196
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome'
      DataSource = dsTabela
      TabOrder = 1
    end
    object dbeSnome: TDBEdit
      Left = 30
      Top = 144
      Width = 196
      Height = 21
      CharCase = ecUpperCase
      DataField = 'snome'
      DataSource = dsTabela
      TabOrder = 2
    end
    object dbeFone: TDBEdit
      Left = 30
      Top = 192
      Width = 121
      Height = 21
      DataField = 'telefone'
      DataSource = dsTabela
      TabOrder = 3
    end
    object dbeEndereco: TDBEdit
      Left = 301
      Top = 146
      Width = 196
      Height = 21
      CharCase = ecUpperCase
      DataField = 'endereco'
      DataSource = dsTabela
      TabOrder = 6
    end
    object dbeNumero: TDBEdit
      Left = 509
      Top = 146
      Width = 63
      Height = 21
      DataField = 'numero'
      DataSource = dsTabela
      TabOrder = 7
    end
    object dbeComplemento: TDBEdit
      Left = 301
      Top = 194
      Width = 271
      Height = 21
      CharCase = ecUpperCase
      DataField = 'complemento'
      DataSource = dsTabela
      TabOrder = 8
    end
    object dbeData: TDBEdit
      Left = 30
      Top = 248
      Width = 121
      Height = 21
      DataField = 'datanacido'
      DataSource = dsTabela
      TabOrder = 4
      OnKeyPress = dbeDataKeyPress
    end
    object pnCidade: TPanel
      Left = 289
      Top = 16
      Width = 301
      Height = 105
      Caption = 'Cidade'
      Color = clSilver
      ParentBackground = False
      ShowCaption = False
      TabOrder = 5
      object lblCidade: TLabel
        Left = 12
        Top = 55
        Width = 37
        Height = 13
        Caption = 'Cidade:'
      end
      object lblCodCIdade: TLabel
        Left = 12
        Top = 9
        Width = 69
        Height = 13
        Caption = 'Codigo Cidade'
      end
      object lblUf: TLabel
        Left = 233
        Top = 55
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object dbeCodCidade: TDBEdit
        Left = 11
        Top = 28
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        DataField = 'cod_cidade'
        DataSource = dsTabela
        Enabled = False
        TabOrder = 0
      end
      object edtCidade: TEdit
        Left = 12
        Top = 74
        Width = 197
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = 'edtCidade'
      end
      object edtUf: TEdit
        Left = 232
        Top = 74
        Width = 57
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = 'edtUf'
      end
      object btnCidPesq: TButton
        Left = 87
        Top = 26
        Width = 25
        Height = 25
        ImageIndex = 15
        Images = dmConexao.Icones
        TabOrder = 3
        OnClick = btnCidPesqClick
      end
    end
    object pnCredito: TPanel
      Left = 289
      Top = 221
      Width = 301
      Height = 60
      Caption = 'Credito'
      Color = clSilver
      ParentBackground = False
      ShowCaption = False
      TabOrder = 9
      object lblCredito: TLabel
        Left = 11
        Top = 11
        Width = 49
        Height = 14
        Caption = 'Credito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblReais: TLabel
        Left = 12
        Top = 31
        Width = 22
        Height = 19
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeCredito: TDBEdit
        Left = 40
        Top = 31
        Width = 105
        Height = 22
        DataField = 'credito'
        DataSource = dsTabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited fdqConexaoTabela: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'codClientePesquisa'
        Fields = 'cod'
      end>
    IndexName = 'codClientePesquisa'
    SQL.Strings = (
      'select * from clientes')
    Left = 216
    Top = 209
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
    object fdqConexaoTabelasnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'snome'
      Origin = 'snome'
      Size = 50
    end
    object fdqConexaoTabelacod_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cidade'
      Origin = 'cod_cidade'
    end
    object fdqConexaoTabelaendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 75
    end
    object fdqConexaoTabelanumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 11
    end
    object fdqConexaoTabelacomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 75
    end
    object fdqConexaoTabelatelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 11
    end
    object fdqConexaoTabeladatanacido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanacido'
      Origin = 'datanacido'
      OnSetText = fdqConexaoTabeladatanacidoSetText
      EditMask = '!00/00/0000;1;_'
    end
    object fdqConexaoTabelacredito: TBCDField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'credito'
      Origin = 'credito'
      DisplayFormat = '########0.00'
      Precision = 10
      Size = 2
    end
  end
  inherited dsTabela: TDataSource
    Left = 216
    Top = 265
  end
end

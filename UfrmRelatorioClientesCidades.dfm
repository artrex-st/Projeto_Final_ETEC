object frmRelatorioClientesCidades: TfrmRelatorioClientesCidades
  Left = 0
  Top = 0
  Caption = 'Relatorio Clientes por Cidade'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 504
    Top = 176
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 504
    Top = 232
  end
  object fdqConexao: TFDQuery
    Active = True
    Connection = dmConexao.FDConexao
    SQL.Strings = (
      
        'SELECT B.nome as cidade, B.uf, A.* FROM clientes A INNER JOIN ci' +
        'dades B ON A.cod_cidade = B.cod')
    Left = 48
    Top = 136
  end
  object dataSetClientes: TfrxDBDataset
    UserName = 'DataSetClientes'
    CloseDataSource = False
    DataSet = fdqConexao
    BCDToCurrency = False
    Left = 56
    Top = 192
  end
  object RelatorioClientesCidades: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43680.390152187500000000
    ReportOptions.LastChange = 43694.447438715280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 240
    Datasets = <
      item
        DataSet = dataSetClientes
        DataSetName = 'DataSetClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE CLIENTES E CIDADES')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 36.354360000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = dataSetClientes
        DataSetName = 'DataSetClientes'
        RowCount = 0
        object DataSetClientesID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'cod'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."cod"]')
          ParentFont = False
        end
        object DataSetClientesNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 1.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."NOME"]')
          ParentFont = False
        end
        object DataSetClientesCPF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'numero'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."numero"]')
          ParentFont = False
        end
        object DataSetClientesendereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 1.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."endereco"]')
        end
        object DataSetClientescredito: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'credito'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."credito"]')
        end
        object DataSetClientestelefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."telefone"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Clientes: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Condition = 'DataSetClientes."cidade"'
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object DataSetClientesBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          DataSet = dataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."cidade"]([DataSetClientes."uf"])')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COD')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Numero')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 18.897650000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rua')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Credito')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'telefone')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 4.000000000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Clientes por cidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 20.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 2.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end

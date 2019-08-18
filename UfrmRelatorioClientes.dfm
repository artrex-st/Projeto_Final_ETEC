object frmRelatorioClientes: TfrmRelatorioClientes
  Left = 0
  Top = 0
  Caption = 'Relatorio Clientes'
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
  object RelatorioClientes: TfrxReport
    Version = '6.3.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43680.390152187500000000
    ReportOptions.LastChange = 43693.949056423610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 232
    Datasets = <
      item
        DataSet = DataSetClientes
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
        Height = 49.133890000000000000
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
            'RELATORIO DE CLIENTES')
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
        Top = 328.819110000000000000
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
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = DataSetClientes
        DataSetName = 'DataSetClientes'
        RowCount = 0
        object DataSetClientesID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.168309380000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'cod'
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 75.590600000000000000
          Top = 3.168309380000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 514.016080000000000000
          Top = 3.168309380000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."datanacido"]')
          ParentFont = False
        end
        object DataSetClientessnome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 3.168309380000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'snome'
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."snome"]')
          ParentFont = False
        end
        object DataSetClientestelefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.168309380000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."telefone"]')
          ParentFont = False
        end
        object DataSetClientescredito: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 640.630335000000000000
          Top = 3.168309380000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataSetClientes."credito"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889765000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobre Nome:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897637800000000000
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Nascimento:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          DataSet = DataSetClientes
          DataSetName = 'DataSetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cr'#233'dito:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 234.330860000000000000
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
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object DataSetClientes: TfrxDBDataset
    UserName = 'DataSetClientes'
    CloseDataSource = False
    DataSet = fdqConexao
    BCDToCurrency = False
    Left = 40
    Top = 176
  end
  object fdqConexao: TFDQuery
    Active = True
    Connection = dmConexao.FDConexao
    SQL.Strings = (
      'select * from clientes ORDER BY nome')
    Left = 40
    Top = 128
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
    Left = 488
    Top = 208
  end
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
    Left = 424
    Top = 208
  end
end

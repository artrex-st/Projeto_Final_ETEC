object frmPesquisaBase: TfrmPesquisaBase
  Left = 0
  Top = 0
  Caption = 'PesquisaBase'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 75
    Align = alTop
    Caption = 'Topo'
    ShowCaption = False
    TabOrder = 0
    object lblOpcao: TLabel
      Left = 16
      Top = 14
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object lblPesquisa: TLabel
      Left = 135
      Top = 14
      Width = 50
      Height = 13
      Caption = 'Pesquisar:'
    end
    object cbCampo: TComboBox
      Left = 16
      Top = 33
      Width = 113
      Height = 21
      TabOrder = 0
    end
    object edtPesquisa: TEdit
      Left = 135
      Top = 33
      Width = 372
      Height = 21
      TabOrder = 1
    end
    object btnPesquisa: TButton
      Left = 524
      Top = 31
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 2
      OnClick = btnPesquisaClick
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 75
    Width = 635
    Height = 181
    Align = alClient
    DataSource = dsTabela
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = btnConfirmarClick
    OnKeyPress = DBGridKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 635
    Height = 43
    Align = alBottom
    Caption = 'Baixo'
    ShowCaption = False
    TabOrder = 2
    object btnConfirmar: TButton
      Left = 40
      Top = 6
      Width = 75
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 136
      Top = 6
      Width = 75
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object dsTabela: TDataSource
    Left = 520
    Top = 240
  end
  object fdqTabela2: TFDQuery
    Connection = dmConexao.FDConexao
    Left = 344
    Top = 232
  end
end

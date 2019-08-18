object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Projeto Final'
  ClientHeight = 500
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
    end
    object Relatorios1: TMenuItem
      Caption = 'Relatorios'
      object Relatorio1: TMenuItem
        Caption = 'Clientes ordenados por nome'
        OnClick = Relatorio1Click
      end
      object ClientesporCidade1: TMenuItem
        Caption = 'Clientes por Cidade'
        OnClick = ClientesporCidade1Click
      end
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end

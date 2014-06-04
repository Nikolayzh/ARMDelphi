object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 453
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 601
    Height = 385
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 566
        Height = 193
        DataSource = Form1.DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Label1: TLabel
        Left = 160
        Top = 35
        Width = 63
        Height = 13
        Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      end
      object Label2: TLabel
        Left = 160
        Top = 75
        Width = 125
        Height = 13
        Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103' '#1079#1072#1082#1072#1079#1072
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 259
        Width = 400
        Height = 25
        DataSource = Form1.DataSource4
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        DataField = #1044#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072
        DataSource = Form1.DataSource4
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 121
        Height = 21
        DataField = #1044#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        DataSource = Form1.DataSource4
        TabOrder = 2
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource4
    Parameters = <>
    Left = 40
    Top = 336
  end
end

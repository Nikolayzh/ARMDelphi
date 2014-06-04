object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1076#1072#1078#1080
  ClientHeight = 441
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 601
    Height = 401
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 590
        Height = 193
        DataSource = Form1.DataSource6
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1083#1080#1077#1085#1090
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1086#1074#1072#1088
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1091#1084#1084#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 3
        Width = 37
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 43
        Width = 30
        Height = 13
        Caption = #1058#1086#1074#1072#1088
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 89
        Width = 60
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 135
        Width = 31
        Height = 13
        Caption = #1057#1091#1084#1084#1072
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 181
        Width = 63
        Height = 13
        Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1083
        FocusControl = DBEdit5
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 259
        Width = 400
        Height = 25
        DataSource = Form1.DataSource6
        Hints.Strings = (
          #1050' '#1085#1072#1095#1072#1083#1091
          #1053#1072#1079#1072#1076
          #1042#1087#1077#1088#1077#1076
          #1042' '#1082#1086#1085#1077#1094
          #1044#1086#1073#1072#1074#1080#1090#1100
          #1059#1076#1072#1083#1080#1090#1100
          #1048#1079#1084#1077#1085#1080#1090#1100
          #1057#1086#1093#1088#1072#1085#1080#1090#1100
          #1054#1090#1084#1077#1085#1072' '
          #1054#1073#1085#1086#1074#1080#1090#1100)
        TabOrder = 0
      end
      object DBNavigator2: TDBNavigator
        Left = 260
        Top = 200
        Width = 48
        Height = 25
        DataSource = Form1.DataSource7
        VisibleButtons = [nbPrior, nbNext]
        TabOrder = 1
      end
      object DBNavigator3: TDBNavigator
        Left = 260
        Top = 13
        Width = 48
        Height = 25
        DataSource = Form1.DataSource5
        VisibleButtons = [nbPrior, nbNext]
        TabOrder = 2
      end
      object DBNavigator4: TDBNavigator
        Left = 260
        Top = 59
        Width = 48
        Height = 25
        DataSource = Form1.DataSource3
        VisibleButtons = [nbPrior, nbNext]
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 16
        Width = 238
        Height = 21
        DataField = #1060#1048#1054
        DataSource = Form1.DataSource5
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 62
        Width = 238
        Height = 21
        DataField = #1048#1084#1103'_'#1090#1086#1074#1072#1088#1072
        DataSource = Form1.DataSource3
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 108
        Width = 134
        Height = 21
        DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        DataSource = Form1.DataSource6
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 154
        Width = 134
        Height = 21
        DataField = #1057#1091#1084#1084#1072
        DataSource = Form1.DataSource6
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 200
        Width = 238
        Height = 21
        DataField = #1060#1072#1084#1080#1083#1080#1103
        DataSource = Form1.DataSource7
        TabOrder = 8
      end
    end
    object Запросы: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089#1099
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 558
        Height = 158
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 124
        Top = 167
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 3
        Top = 167
        Width = 115
        Height = 25
        Caption = #1087#1088#1086#1076#1072#1085#1085#1099#1081' '#1090#1086#1074#1072#1088
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 347
        Top = 334
        Width = 158
        Height = 25
        Caption = #1086#1090#1095#1077#1090' '#1074' '#1074#1086#1088#1076
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 170
        Top = 272
        Width = 159
        Height = 25
        Caption = #1087#1086#1076#1082#1083#1102#1095#1072#1077#1084#1089#1103' '#1082' '#1077#1082#1089#1077#1083#1100
        TabOrder = 4
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 170
        Top = 303
        Width = 159
        Height = 25
        Caption = #1086#1090#1087#1088#1072#1074#1083#1103#1077#1084' '#1086#1090#1095#1077#1090
        TabOrder = 5
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 170
        Top = 334
        Width = 159
        Height = 25
        Caption = #1086#1090#1082#1083#1102#1095#1072#1077#1084#1089#1103' '#1086#1090' '#1077#1082#1089#1077#1083#1100
        TabOrder = 6
        OnClick = Button5Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource6
    Parameters = <>
    Left = 40
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 136
    Top = 328
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 400
    Top = 408
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 432
    Top = 408
  end
end

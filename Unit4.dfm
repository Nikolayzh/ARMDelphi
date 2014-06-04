object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1058#1086#1074#1072#1088#1099
  ClientHeight = 424
  ClientWidth = 690
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
    Height = 385
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 566
        Height = 193
        DataSource = Form1.DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1048#1084#1103'_'#1090#1086#1074#1072#1088#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1093'_'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1079#1072#1082#1091#1087#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1087#1088#1086#1076#1072#1078#1080
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 61
        Height = 13
        Caption = #1048#1084#1103'_'#1090#1086#1074#1072#1088#1072
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 51
        Width = 107
        Height = 13
        Caption = #1058#1077#1093'_'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 97
        Width = 49
        Height = 13
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 139
        Width = 101
        Height = 13
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1079#1072#1082#1091#1087#1082#1080
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 184
        Width = 60
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 230
        Width = 105
        Height = 13
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1087#1088#1086#1076#1072#1078#1080
        FocusControl = DBEdit6
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 283
        Width = 400
        Height = 25
        DataSource = Form1.DataSource3
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
      object DBEdit1: TDBEdit
        Left = 16
        Top = 24
        Width = 264
        Height = 21
        DataField = #1048#1084#1103'_'#1090#1086#1074#1072#1088#1072
        DataSource = Form1.DataSource3
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 70
        Width = 264
        Height = 21
        DataField = #1058#1077#1093'_'#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
        DataSource = Form1.DataSource3
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 112
        Width = 264
        Height = 21
        DataField = #1054#1087#1080#1089#1072#1085#1080#1077
        DataSource = Form1.DataSource3
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 157
        Width = 134
        Height = 21
        DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1079#1072#1082#1091#1087#1082#1080
        DataSource = Form1.DataSource3
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 203
        Width = 134
        Height = 21
        DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        DataSource = Form1.DataSource3
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 249
        Width = 134
        Height = 21
        DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1087#1088#1086#1076#1072#1078#1080
        DataSource = Form1.DataSource3
        TabOrder = 6
      end
    end
    object Запросы: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089#1099
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 587
        Height = 190
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 108
        Top = 199
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 3
        Top = 199
        Width = 99
        Height = 25
        Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 515
        Top = 328
        Width = 75
        Height = 25
        Caption = #1086#1090#1095#1077#1090' '#1074' '#1074#1086#1088#1076
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource3
    Parameters = <>
    Left = 40
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 312
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 368
    Top = 400
  end
end

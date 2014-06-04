object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1082#1080
  ClientHeight = 407
  ClientWidth = 685
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
        Left = 3
        Top = 0
        Width = 526
        Height = 241
        DataSource = Form1.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1086#1074#1072#1088
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 3
        Width = 57
        Height = 13
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      end
      object Label1: TLabel
        Left = 16
        Top = 49
        Width = 79
        Height = 13
        Caption = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 95
        Width = 30
        Height = 13
        Caption = #1058#1086#1074#1072#1088
        FocusControl = DBEdit2
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 240
        Width = 400
        Height = 25
        DataSource = Form1.DataSource2
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
        Top = 19
        Width = 64
        Height = 25
        DataSource = Form1.DataSource1
        VisibleButtons = [nbPrior, nbNext]
        TabOrder = 1
      end
      object DBNavigator3: TDBNavigator
        Left = 260
        Top = 111
        Width = 64
        Height = 25
        DataSource = Form1.DataSource3
        VisibleButtons = [nbPrior, nbNext]
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 22
        Width = 238
        Height = 21
        DataField = #1050#1086#1084#1087#1072#1085#1080#1103
        DataSource = Form1.DataSource1
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 68
        Width = 238
        Height = 21
        DataField = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
        DataSource = Form1.DataSource2
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 114
        Width = 238
        Height = 21
        DataField = #1048#1084#1103'_'#1090#1086#1074#1072#1088#1072
        DataSource = Form1.DataSource3
        TabOrder = 5
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 0
        Width = 558
        Height = 222
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
        Top = 230
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 3
        Top = 228
        Width = 99
        Height = 25
        Caption = #1076#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 515
        Top = 329
        Width = 75
        Height = 25
        Caption = #1086#1090#1095#1077#1090' '#1074' '#1074#1086#1088#1076
        TabOrder = 3
        OnClick = Button2Click
      end
      object Edit2: TEdit
        Left = 108
        Top = 257
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Button3: TButton
        Left = 3
        Top = 259
        Width = 99
        Height = 25
        Caption = #1087#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072
        TabOrder = 5
        OnClick = Button3Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource2
    Parameters = <>
    Left = 48
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 320
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 336
    Top = 376
  end
end

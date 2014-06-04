object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 438
  ClientWidth = 665
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
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 16
        Width = 566
        Height = 193
        DataSource = Form1.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1084#1087#1072#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1048#1054'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 13
        Width = 49
        Height = 13
        Caption = #1050#1086#1084#1087#1072#1085#1080#1103
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 91
        Height = 13
        Caption = #1060#1048#1054'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 107
        Width = 44
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 153
        Width = 31
        Height = 13
        Caption = #1040#1076#1088#1077#1089
        FocusControl = DBEdit4
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 240
        Width = 560
        Height = 25
        DataSource = Form1.DataSource1
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
        Top = 32
        Width = 264
        Height = 21
        DataField = #1050#1086#1084#1087#1072#1085#1080#1103
        DataSource = Form1.DataSource1
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 264
        Height = 21
        DataField = #1060#1048#1054'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
        DataSource = Form1.DataSource1
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 126
        Width = 264
        Height = 21
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = Form1.DataSource1
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 172
        Width = 264
        Height = 21
        DataField = #1040#1076#1088#1077#1089
        DataSource = Form1.DataSource1
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 510
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
        Left = 132
        Top = 216
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 3
        Top = 214
        Width = 123
        Height = 25
        Caption = #1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1084#1087#1072#1085#1080#1080
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object Button2: TButton
    Left = 484
    Top = 358
    Width = 121
    Height = 31
    Caption = #1086#1090#1095#1077#1090' '#1074' '#1074#1086#1088#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource1
    Parameters = <>
    Left = 24
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 64
    Top = 392
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 328
    Top = 400
  end
end

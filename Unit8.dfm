object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 454
  ClientWidth = 668
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
    Height = 438
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      ExplicitHeight = 357
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 590
        Height = 193
        DataSource = Form1.DataSource7
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1060#1072#1084#1080#1083#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1084#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1072#1084#1077#1090#1082#1080
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitHeight = 357
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 44
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 51
        Width = 19
        Height = 13
        Caption = #1048#1084#1103
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 97
        Width = 49
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 143
        Width = 57
        Height = 13
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 189
        Width = 31
        Height = 13
        Caption = #1040#1076#1088#1077#1089
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 237
        Width = 44
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 16
        Top = 283
        Width = 83
        Height = 13
        Caption = #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 16
        Top = 328
        Width = 42
        Height = 13
        Caption = #1047#1072#1084#1077#1090#1082#1080
        FocusControl = DBEdit8
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 369
        Width = 400
        Height = 25
        DataSource = Form1.DataSource7
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
        DataField = #1060#1072#1084#1080#1083#1080#1103
        DataSource = Form1.DataSource7
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 70
        Width = 264
        Height = 21
        DataField = #1048#1084#1103
        DataSource = Form1.DataSource7
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 116
        Width = 264
        Height = 21
        DataField = #1054#1090#1095#1077#1089#1090#1074#1086
        DataSource = Form1.DataSource7
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 162
        Width = 264
        Height = 21
        DataField = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataSource = Form1.DataSource7
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 208
        Width = 264
        Height = 21
        DataField = #1040#1076#1088#1077#1089
        DataSource = Form1.DataSource7
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 256
        Width = 134
        Height = 21
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = Form1.DataSource7
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 302
        Width = 264
        Height = 21
        DataField = #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
        DataSource = Form1.DataSource7
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 344
        Width = 264
        Height = 21
        DataField = #1047#1072#1084#1077#1090#1082#1080
        DataSource = Form1.DataSource7
        TabOrder = 8
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089
      ImageIndex = 2
      ExplicitHeight = 357
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 438
        Height = 174
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 3
        Top = 200
        Width = 123
        Height = 25
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 132
        Top = 202
        Width = 121
        Height = 21
        TabOrder = 2
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
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource7
    Parameters = <>
    Left = 40
    Top = 400
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 400
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 352
    Top = 424
  end
end

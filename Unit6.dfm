object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 428
  ClientWidth = 645
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
        Top = 3
        Width = 566
        Height = 193
        DataSource = Form1.DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1060#1048#1054
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
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      ExplicitLeft = 0
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 23
        Height = 13
        Caption = #1060#1048#1054
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 53
        Width = 31
        Height = 13
        Caption = #1040#1076#1088#1077#1089
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 99
        Width = 44
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        FocusControl = DBEdit3
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 259
        Width = 400
        Height = 25
        DataSource = Form1.DataSource5
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
        DataField = #1060#1048#1054
        DataSource = Form1.DataSource5
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 264
        Height = 21
        DataField = #1040#1076#1088#1077#1089
        DataSource = Form1.DataSource5
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 118
        Width = 134
        Height = 21
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = Form1.DataSource5
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089#1099
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 3
        Top = 0
        Width = 587
        Height = 185
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 84
        Top = 191
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 3
        Top = 191
        Width = 75
        Height = 25
        Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
        TabOrder = 2
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 84
        Top = 222
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Button2: TButton
        Left = 3
        Top = 222
        Width = 75
        Height = 25
        Caption = #1055#1086' '#1072#1076#1088#1077#1089#1091
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 515
        Top = 329
        Width = 75
        Height = 25
        Caption = #1086#1090#1095#1077#1090' '#1074' '#1074#1086#1088#1076
        TabOrder = 5
        OnClick = Button3Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    DataSource = Form1.DataSource5
    Parameters = <>
    Left = 40
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 312
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 352
    Top = 392
  end
end

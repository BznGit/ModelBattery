object Form1: TForm1
  Left = 195
  Top = 0
  Align = alClient
  Caption = 'Form1'
  ClientHeight = 689
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 368
    Width = 81
    Height = 13
    Caption = 'Sum Wb, '#1042#1090'*'#1095' ='
  end
  object Label6: TLabel
    Left = 95
    Top = 326
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label9: TLabel
    Left = 114
    Top = 368
    Width = 31
    Height = 13
    Caption = 'Label9'
  end
  object Chart1: TChart
    Left = 173
    Top = 8
    Width = 1170
    Height = 233
    Legend.Title.Text.Strings = (
      #1081#1081#1092#1081#1092#1092)
    Legend.Visible = False
    Title.Font.Height = -15
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1101#1083#1077#1082#1090#1088#1086#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1085#1080#1103)
    BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
    LeftAxis.Title.Caption = #1052#1086#1097#1085#1086#1089#1090#1100', '#1042#1090
    Shadow.Visible = False
    View3D = False
    Color = clWhite
    TabOrder = 0
    PrintMargins = (
      15
      22
      15
      22)
    object Series1: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Callout.Length = 0
      Marks.Visible = False
      SeriesColor = clGreen
      LinePen.Color = clGreen
      LinePen.Width = 2
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 8
    Top = 279
    Width = 137
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object Chart2: TChart
    Left = 173
    Top = 231
    Width = 1170
    Height = 234
    Legend.Visible = False
    Title.Font.Height = -15
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1101#1083#1077#1082#1090#1088#1086#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103)
    BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = 0.500000000000000200
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = 0.500000000000000200
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Title.Caption = #1052#1086#1097#1085#1086#1089#1090#1100', '#1042#1090
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    Shadow.Visible = False
    View3D = False
    Color = clWhite
    TabOrder = 2
    PrintMargins = (
      15
      22
      15
      22)
    object Series2: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      LinePen.Color = clRed
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 173
    Top = 464
    Width = 1170
    Height = 217
    Legend.Visible = False
    Title.Font.Height = -15
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1069#1085#1077#1088#1075#1086#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1040#1041)
    BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = 0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = 0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Title.Caption = #1069#1085#1077#1088#1075#1080#1103', '#1042#1090'* '#1095
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    Shadow.Visible = False
    View3D = False
    Color = clWhite
    TabOrder = 3
    PrintMargins = (
      15
      22
      15
      22)
    object Series3: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clBlue
      LinePen.Color = clBlue
      LinePen.Width = 2
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      LinePen.Color = clRed
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 137
    Height = 161
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1057#1069#1057':'
    TabOrder = 4
    object Label1: TLabel
      Left = 13
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Nu '#1072#1082#1073' ='
    end
    object Label2: TLabel
      Left = 15
      Top = 54
      Width = 41
      Height = 13
      Caption = 'Nu '#1079#1091'  ='
    end
    object Label3: TLabel
      Left = 15
      Top = 81
      Width = 38
      Height = 13
      Caption = 'Nu '#1089#1085' ='
    end
    object Label4: TLabel
      Left = 15
      Top = 108
      Width = 42
      Height = 13
      Caption = 'Nu '#1088#1091'  ='
    end
    object Label7: TLabel
      Left = 3
      Top = 132
      Width = 57
      Height = 13
      Caption = 'Wo '#1042#1090'*'#1095' = '
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 58
      Height = 21
      TabOrder = 0
      Text = '0,68'
    end
    object Edit2: TEdit
      Left = 64
      Top = 51
      Width = 58
      Height = 21
      TabOrder = 1
      Text = '0,85'
    end
    object Edit3: TEdit
      Left = 64
      Top = 78
      Width = 58
      Height = 21
      TabOrder = 2
      Text = '0,92'
    end
    object Edit4: TEdit
      Left = 64
      Top = 105
      Width = 58
      Height = 21
      TabOrder = 3
      Text = '0,92'
    end
    object Edit5: TEdit
      Left = 64
      Top = 132
      Width = 58
      Height = 21
      TabOrder = 4
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 198
    Width = 137
    Height = 75
    Caption = #1055#1072#1088#1072#1087#1084#1077#1090#1088#1099' '#1085#1072#1075#1088#1091#1079#1082#1080':'
    TabOrder = 5
    object Label8: TLabel
      Left = 3
      Top = 24
      Width = 55
      Height = 13
      Caption = 'P'#1085' 1, '#1042#1090'. ='
    end
    object Label10: TLabel
      Left = 3
      Top = 47
      Width = 55
      Height = 13
      Caption = 'P'#1085' 2, '#1042#1090'. ='
    end
    object Edit6: TEdit
      Left = 55
      Top = 20
      Width = 61
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '3000'
    end
    object Edit7: TEdit
      Left = 55
      Top = 47
      Width = 58
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '2700'
    end
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 175
    Width = 159
    Height = 17
    Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1088#1072#1073'. '#1074#1080#1090#1082#1086#1074':'
    TabOrder = 6
    OnClick = CheckBox1Click
  end
end

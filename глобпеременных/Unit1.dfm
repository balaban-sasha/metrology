object metrick: Tmetrick
  Left = 0
  Top = 0
  Caption = 'The metrick to global vars'
  ClientHeight = 375
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object butforopenfile: TButton
    Left = 64
    Top = 56
    Width = 137
    Height = 25
    Caption = #1086#1090#1082#1088#1099#1090#1100' '#1082#1086#1076' '#1085#1072' php'
    TabOrder = 0
    OnClick = butforopenfileClick
  end
  object start: TButton
    Left = 8
    Top = 87
    Width = 273
    Height = 33
    Caption = #1052#1077#1090#1088#1080#1082#1072' '#1086#1073#1088#1072#1097#1077#1085#1080#1103' '#1082' '#1075#1083#1086#1073#1072#1083#1100#1085#1099#1084' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1084
    TabOrder = 1
    OnClick = startClick
  end
  object winforcode: TMemo
    Left = 304
    Top = 40
    Width = 361
    Height = 305
    Lines.Strings = (
      'winforcode')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Changethecode: TButton
    Left = 48
    Top = 126
    Width = 193
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1086#1076
    TabOrder = 3
    OnClick = ChangethecodeClick
  end
  object DialogFoFileOpening: TOpenDialog
    Left = 208
    Top = 16
  end
end

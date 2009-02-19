object frmColorPickerTest: TfrmColorPickerTest
  Left = 266
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'TEST of ColorPicker.dll'
  ClientHeight = 174
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblColorPicker: TLabel
    Left = 21
    Top = 61
    Width = 104
    Height = 13
    Caption = 'Path to ColorPicker.dll'
  end
  object Label1: TLabel
    Left = 20
    Top = 4
    Width = 322
    Height = 39
    Alignment = taCenter
    Caption = 
      'Click PickColor button to choose colors from your screen. Use En' +
      'ter key to choose and Esc key to cancel. Arrow keys and Home/End' +
      '/PgUp/PgDn keys are also usable.'
    WordWrap = True
  end
  object edtColorPicker: TEdit
    Left = 21
    Top = 77
    Width = 237
    Height = 21
    TabOrder = 0
  end
  object btnColorPicker: TButton
    Left = 265
    Top = 75
    Width = 85
    Height = 25
    Caption = 'Change...'
    TabOrder = 1
    OnClick = btnColorPickerClick
  end
  object pnlPickColor: TPanel
    Left = 21
    Top = 111
    Width = 237
    Height = 21
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'R:0 G:0 B:0'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = btnPickColorClick
  end
  object btnPickColor: TButton
    Left = 265
    Top = 109
    Width = 85
    Height = 25
    Caption = 'Pick Color!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnPickColorClick
  end
  object odlColorPicker: TOpenDialog
    Filter = '"ColorPicker.dll" files only.|ColorPicker.dll'
    Left = 7
    Top = 56
  end
  object XPManifest1: TXPManifest
    Left = 35
    Top = 56
  end
end

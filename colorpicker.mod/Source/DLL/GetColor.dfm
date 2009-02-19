object frmPickColor: TfrmPickColor
  Left = 275
  Top = 252
  Cursor = crCross
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 158
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clRed
  Font.Height = -9
  Font.Name = 'Small Fonts'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 11
  object imgBackground: TImage
    Left = 0
    Top = 0
    Width = 289
    Height = 158
    Cursor = -1
    Align = alClient
    OnMouseMove = imgBackgroundMouseMove
    OnMouseUp = imgBackgroundMouseUp
  end
  object imgZoom: TImage
    Left = 2
    Top = 2
    Width = 64
    Height = 64
    Cursor = -1
    OnMouseMove = imgZoomMouseMove
    OnMouseUp = imgBackgroundMouseUp
  end
end

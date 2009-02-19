unit GetColor;

interface

uses
    Windows,
    Messages,
    Classes,
    Graphics,
    Controls,
    Forms,
    StdCtrls,
    ExtCtrls;

type
  TfrmPickColor = class(TForm)
    imgBackground: TImage;
    imgZoom: TImage;
    procedure FormCreate(Sender: TObject);
    procedure imgBackgroundMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgBackgroundMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgZoomMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
         procedure WMEraseBkng(var MSg : TWMEraseBkgnd); message WM_ERASEBKGND;
  public
        function Execute(var R, G, B : Byte) : Boolean;
  end;

implementation
{$R *.DFM}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.WMEraseBkng(var Msg : TWMEraseBkgnd);
begin
     Msg.Result:=1;
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.FormCreate(Sender: TObject);
var
   DC : HDC;
   Point : TPoint;
begin

     GetCursorPos(Point);
     DC:=GetDC(0);
     with imgBackground do
          begin
               Picture.Bitmap.PixelFormat := pf24bit;
               Picture.Bitmap.Width  := Screen.Width;
               Picture.Bitmap.Height := Screen.Height;
               BitBlt(Picture.Bitmap.Canvas.Handle,0,0, Screen.Width, Screen.Height, DC, 0, 0, SRCCOPY)
          end;
     ReleaseDC(DC,0);

     with imgZoom.Picture.Bitmap do
          begin
               PixelFormat := pf24bit;
               Width  := imgZoom.Width;
               Height := imgZoom.Height;
          end;
     with imgZoom,Point do
          begin
               Left := x;
               Top  := y;
               imgBackgroundMouseMove(Sender,[],X, Y);
          end;
     //Application.OnDeactivate := FormDeactivate;
     DoubleBuffered := True;
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.imgBackgroundMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   PenMode : TPenMode;
begin
     imgZoom.Picture.Bitmap.PixelFormat := imgBackground.Picture.Bitmap.PixelFormat;
     StretchBlt(
                imgZoom.Picture.Bitmap.Canvas.Handle,	// handle of destination device context
                0,	// x-coordinate of upper-left corner of dest. rect.
                0,	// y-coordinate of upper-left corner of dest. rect.
                imgZoom.Picture.Bitmap.Width,	// width of destination rectangle
                imgZoom.Picture.Bitmap.Height,	// height of destination rectangle
                imgBackground.Picture.Bitmap.Canvas.Handle,	// handle of source device context
                X-4,	// x-coordinate of upper-left corner of source rectangle
                Y-4,	// y-coordinate of upper-left corner of source rectangle
                9,	// width of source rectangle
                9,	// height of source rectangle
                SRCCOPY 	// raster operation code
               );

     with imgZoom.Picture.Bitmap.Canvas do
          begin
               Pen.Width := 1;
               Pen.Color := clBlack;
               PenMode := Pen.Mode;
               Pen.Mode := pmNOTXOR;
               MoveTo(0,0);
               LineTo(imgZoom.Picture.Bitmap.Width-1,0);
               LineTo(imgZoom.Picture.Bitmap.Width-1,imgZoom.Picture.Bitmap.Height-1);
               LineTo(0,imgZoom.Picture.Bitmap.Height-1);
               LineTo(0,0);
               MoveTo(27, 27);
               LineTo(36, 27);//  ~
               LineTo(36, 36);//   |
               LineTo(27, 36);//  _
               LineTo(27, 27);// |
               Pen.Mode := PenMode;
          end;

     with imgZoom do
          begin
               Left := X - 32;
               Top := Y - 32;
          end;

end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const
     ScanPixels = 12;
var
   dx,dy : Integer;
   CRS : TPoint;

   function IsVLine(N : Integer) : Boolean;
   var
      i, j : Integer;
   begin
        if N > 0 then
           j := 1
        else
            j := -1;
        i := 0;
        while (i <> N) and (imgBackground.Picture.Bitmap.Canvas.Pixels[CRS.x, CRS.y] = imgBackground.Picture.Bitmap.Canvas.Pixels[CRS.x, CRS.y + i + j]) do
              begin
                   Inc(i, j);
              end;
        Result := (i = N);
   end;

   function IsHLine(N : Integer) : Boolean;
   var
      i, j : Integer;
   begin
        if N > 0 then
           j := 1
        else
            j := -1;
        i := 0;
        while (i <> N) and (imgBackground.Picture.Bitmap.Canvas.Pixels[CRS.x, CRS.y] = imgBackground.Picture.Bitmap.Canvas.Pixels[CRS.x + i + j, CRS.y]) do
              begin
                   Inc(i, j);
              end;
        Result := (i = N);
   end;

begin
     GetCursorPos(CRS);
     dx := 0;
     dy := 0;

     case Key of
          VK_NEXT :
                    begin
                         dy := 8;
                    end;
          VK_PRIOR:
                    begin
                         dy := - 8;
                    end;
          VK_END :
                    begin
                         dx := 8;
                    end;
          VK_HOME:
                    begin
                         dx := - 8;
                    end;
          VK_UP:
                    begin
                         if IsVLine(-ScanPixels) then
                            begin
                                 dy := - 3;
                            end
                         else
                             begin
                                  dy := - 1;
                             end;
                    end;
          VK_DOWN:
                    begin
                         if IsVLine(+ScanPixels) then
                            begin
                                 dy := 3;
                            end
                         else
                             begin
                                  dy := 1;
                             end;
                    end;
          VK_LEFT:
                    begin
                         if IsHLine(-ScanPixels) then
                            begin
                                 dx := - 3;
                            end
                         else
                             begin
                                  dx := - 1;
                             end;
                    end;
          VK_RIGHT:
                    begin
                         if IsHLine(+ScanPixels) then
                            begin
                                 dx := 3;
                            end
                         else
                             begin
                                  dx := 1;
                             end;
                    end;
          VK_ESCAPE:
                    begin
                         ModalResult := mrCancel;
                    end;
          VK_RETURN:
                    begin
                         ModalResult := mrOk;
                    end;
     end;

     with CRS do
          begin
               if (ssCtrl in Shift) then
                  begin
                       dx := dx * 4;
                       dy := dy * 4;
                  end;
               x := x + dx;
               y := y + dy;
          end;

     SetCursorPos(CRS.x, CRS.y);
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.imgBackgroundMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if Button = mbLeft then
        begin
             ModalResult := mrOk;
        end
     else
         begin
              ModalResult := mrCancel;
         end

end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmPickColor.imgZoomMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
   Pt : TPoint;
begin
     Pt.x := X;
     Pt.y := Y;
     Pt:=imgZoom.ClientToScreen(Pt);
     imgBackgroundMouseMove(Sender, Shift, Pt.x, Pt.y);
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function TfrmPickColor.Execute(var R, G, B : Byte) : Boolean;
var
   W : TRect;
begin
     GetWindowRect( GetForegroundWindow, W );

     Show;
     try
       ModalResult := 0;
       repeat
             Application.HandleMessage;
             if not Focused or Application.Terminated then
                begin
                     ModalResult := mrCancel
                end;
       until ModalResult <> 0;

       Result := (ModalResult = mrOK);

       if Result then
          begin
               R := GetRValue(imgZoom.Picture.Bitmap.Canvas.Pixels[32, 32]);
               G := GetGValue(imgZoom.Picture.Bitmap.Canvas.Pixels[32, 32]);
               B := GetBValue(imgZoom.Picture.Bitmap.Canvas.Pixels[32, 32]);
          end;

     finally
            MoveWindow(Handle, imgZoom.Left, imgZoom.Top, imgZoom.Width, imgZoom.Height, False);
            Hide;
     end;
end;

end.

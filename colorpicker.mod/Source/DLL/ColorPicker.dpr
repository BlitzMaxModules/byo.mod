library ColorPicker;
uses
    Windows,
    SysUtils,
    GetColor in 'GetColor.pas' {frmPickColor};

{$R *.res}
function PickColor(var R, G, B : Byte) : Bool; stdcall;
var
   frmPickColor : TfrmPickColor;
begin
     try
        frmPickColor := TfrmPickColor.Create(nil);
        try
           Result := frmPickColor.Execute(R, G, B);
        finally
               frmPickColor.Free;
        end;
     except
           on E:Exception do Result := False;
     end;
end;

exports
       PickColor;

begin
end.

program Test;

uses
  Forms,
  PickColor in 'PickColor.pas' {frmColorPickerTest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmColorPickerTest, frmColorPickerTest);
  Application.Run;
end.

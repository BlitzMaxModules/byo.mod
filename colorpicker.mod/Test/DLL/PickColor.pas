unit PickColor;

interface

uses
    Windows,
    Messages,
    SysUtils,
    Variants,
    Classes,
    Graphics,
    Controls,
    Forms,
    Dialogs,
    ExtCtrls,
    StdCtrls,
    XPMan;
const
     cPickColor = 'PickColor';
type
  TfrmColorPickerTest = class(TForm)
    odlColorPicker: TOpenDialog;
    lblColorPicker: TLabel;
    edtColorPicker: TEdit;
    btnColorPicker: TButton;
    pnlPickColor: TPanel;
    btnPickColor: TButton;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnColorPickerClick(Sender: TObject);
    procedure btnPickColorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColorPickerTest: TfrmColorPickerTest;

implementation

{$R *.dfm}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure FileChoice(OpenDialog : TOpenDialog; Edit : TEdit);
begin
     OpenDialog.FileName := Edit.Text;
     OpenDialog.InitialDir := ExtractFilePath(OpenDialog.FileName);
     if OpenDialog.Execute then
        begin
             Edit.Text := OpenDialog.FileName;
        end;
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmColorPickerTest.FormCreate(Sender: TObject);
var
   S : String;
begin
     Screen.Cursors[crHandPoint]:=LoadCursor(0,IDC_HAND);

     // "..\.." directory path + 'Install\DLL\'
     S := ExtractFilePath(ExcludeTrailingPathDelimiter(ExtractFilePath(ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))))) + 'Install\DLL\';

     edtColorPicker.Text := S + 'ColorPicker.dll';
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmColorPickerTest.btnColorPickerClick(Sender: TObject);
begin
     FileChoice(odlColorPicker, edtColorPicker);
end;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
procedure TfrmColorPickerTest.btnPickColorClick(Sender: TObject);
type
    TPickColor = function (var R, G, B : Byte) : Bool; stdcall;
var
   H            : LongWord;
   PickColorPtr : Pointer;

   R,
   G,
   B            : Byte;

begin
     R := 0;
     G := 0;
     B := 0;

     H := LoadLibrary(PChar(edtColorPicker.Text));
     if H <> 0 then
        begin
             PickColorPtr := GetProcAddress( H, cPickColor );
             if (PickColorPtr <> nil) then
                begin
                     if TPickColor( PickColorPtr )( R, G, B ) then
                        begin
                             pnlPickColor.Color := RGB(R, G, B);
                             pnlPickColor.Font.Color := pnlPickColor.Color xor $FFFFFF;
                             pnlPickColor.Caption := 'R:'+ IntToStr(R) + ' G:'+ IntToStr(G) + ' B:'+ IntToStr(B);
                        end;
                end
             else
                 begin
                      ShowMessage('Cannot find ' + cPickColor + ' function.');
                 end;
             FreeLibrary(H);
        end
     else
         begin
              ShowMessage('Cannot find the library.')
         end;
end;

end.

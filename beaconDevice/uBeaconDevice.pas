unit uBeaconDevice;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Bluetooth, System.Beacon.Components, FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TForm1 = class(TForm)
    BeaconDevice1: TBeaconDevice;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Text := BeaconDevice1.UUID;
  Label3.Text := 'Major: ' + IntToStr(BeaconDevice1.Major);
  Label2.Text := 'Minor: ' + IntToStr(BeaconDevice1.Minor);
end;

end.

unit uBeaconProximo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Bluetooth, FMX.ScrollBox, FMX.Memo, System.Beacon.Components,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Beacon1: TBeacon;
    Memo1: TMemo;
    Button1: TButton;
    procedure Beacon1BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Beacon1BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  if ABeacon.GUID.ToString <> '' then
  begin
    Memo1.Lines.Add('Você está próximo do Beacon!');
    Memo1.Lines.Add('UUID: ' + ABeacon.GUID.ToString);
    Memo1.Lines.Add('Distância: ' + CurrToStr(ABeacon.Distance) + ' metros');
    Beacon1.Enabled := False;
  end
  else
    Memo1.Lines.Add('Beacon não encontrado!');
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  Beacon1.Enabled := True;
end;

end.

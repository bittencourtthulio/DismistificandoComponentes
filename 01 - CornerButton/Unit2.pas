unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    CornerButton1: TCornerButton;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CornerButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    I : Integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.CornerButton1Click(Sender: TObject);
begin
  Timer1.Enabled := true;
  I := 1;
  CornerButton1.XRadius := 0;
  CornerButton1.YRadius := 0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  I := 1;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  I := I + 1;
  if I = 100 then Timer1.Enabled := false;
  TThread.CreateAnonymousThread(
  procedure
  begin
    if I <= 50 then
    begin
      CornerButton1.XRadius := CornerButton1.XRadius + 1;
      CornerButton1.YRadius := CornerButton1.YRadius + 1;
    end
    else
    begin
      CornerButton1.XRadius := CornerButton1.XRadius - 1;
      CornerButton1.YRadius := CornerButton1.YRadius - 1;
    end;

  end).Start;
end;

end.

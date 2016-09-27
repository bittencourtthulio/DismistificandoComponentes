unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Lang1: TLang;
    ComboBox1: TComboBox;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  LoadLangFromStrings(Lang1.LangStr[ComboBox1.Items[ComboBox1.ItemIndex]]);
end;

end.

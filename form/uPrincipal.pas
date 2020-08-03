unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxSwitch,
  Vcl.Mask;

type
  TfrmPrincipal = class(TForm)
    pnPrincipal: TPanel;
    btnConectar: TButton;
    btnDesconectar: TButton;
    btnKillServer: TButton;
    edtIP1: TEdit;
    lblIP: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    lblCmd: TLabel;
    edtIP2: TEdit;
    edtIP3: TEdit;
    edtIP4: TEdit;
    procedure edtIP1Change(Sender: TObject);
    procedure edtIP2Change(Sender: TObject);
    procedure edtIP3Change(Sender: TObject);
    procedure edtIP4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.edtIP1Change(Sender: TObject);
begin
  if length(edtIP1.Text) = 3 then
    edtIP2.SetFocus;

end;

procedure TfrmPrincipal.edtIP2Change(Sender: TObject);
begin
  if length(edtIP2.Text) = 3 then
    edtIP3.SetFocus;
end;

procedure TfrmPrincipal.edtIP3Change(Sender: TObject);
begin
  if length(edtIP3.Text) = 3 then
    edtIP4.SetFocus;
end;

procedure TfrmPrincipal.edtIP4Change(Sender: TObject);
begin
  if length(edtIP4.Text) = 3 then
    btnConectar.SetFocus;
end;

end.

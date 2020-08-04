unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxSwitch,
  Vcl.Mask, adbToolsRN;

type
  TfrmPrincipal = class(TForm)
    pnPrincipal: TPanel;
    btnConectar: TButton;
    btnDesconectar: TButton;
    btnKillServer: TButton;
    edtIP1: TEdit;
    lblIP: TLabel;
    rbtnOn: TRadioButton;
    rbtnOff: TRadioButton;
    lblCmd: TLabel;
    edtIP2: TEdit;
    edtIP3: TEdit;
    edtIP4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure btnDesconectarClick(Sender: TObject);
    procedure btnKillServerClick(Sender: TObject);
    procedure edtIP1KeyPress(Sender: TObject; var Key: Char);
    procedure edtIP2KeyPress(Sender: TObject; var Key: Char);
    procedure edtIP3KeyPress(Sender: TObject; var Key: Char);
  private
    adbToolsRN : TadbToolsRN;

    function formarIP(ip1,ip2,ip3,ip4:string):string;

    procedure Conectar;
    procedure validarEdit(Key: Char);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnConectarClick(Sender: TObject);
begin
  Conectar;
end;

function TfrmPrincipal.formarIP(ip1, ip2, ip3, ip4: string): string;
begin
  result := (ip1 + '.' + ip2 + '.' + ip3 + '.' + ip4);
end;

procedure TfrmPrincipal.btnDesconectarClick(Sender: TObject);
begin
  if rbtnOn.Checked then
    adbToolsRN.adbDesconectar(1)
  else
    adbToolsRN.adbDesconectar(0);
end;

procedure TfrmPrincipal.btnKillServerClick(Sender: TObject);
begin
  if rbtnOn.Checked then
    adbToolsRN.adbKillServer(1)
  else
    adbToolsRN.adbKillServer(0);
end;

procedure TfrmPrincipal.Conectar;
var
  ip:string;
begin
  ip := formarIP(edtIP1.Text,edtIP2.Text,edtIP3.Text,edtIP4.Text);

  if rbtnOn.Checked then
    adbToolsRN.adbConectar(1,ip)
  else
    adbToolsRN.adbConectar(0,ip);

end;

procedure TfrmPrincipal.edtIP1KeyPress(Sender: TObject; var Key: Char);
begin
  validarEdit(Key);
end;

procedure TfrmPrincipal.edtIP2KeyPress(Sender: TObject; var Key: Char);
begin
  validarEdit(Key);
end;

procedure TfrmPrincipal.edtIP3KeyPress(Sender: TObject; var Key: Char);
begin
  validarEdit(Key);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  adbToolsRN := TadbToolsRN.create;
end;

procedure TfrmPrincipal.validarEdit(Key:Char);
begin
  if not(CharInSet(Key,['0'..'9',#8])) then
    begin
      if(CharInSet(Key,['.'])) then
      begin
        Perform(WM_NEXTDLGCTL,0,0);
      end;
      abort;
    end;
end;

end.

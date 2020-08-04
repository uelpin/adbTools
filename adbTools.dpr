program adbTools;

uses
  Vcl.Forms,
  uPrincipal in 'form\uPrincipal.pas' {frmPrincipal},
  adbToolsRN in 'rn\adbToolsRN.pas',
  adbToolsDAO in 'dao\adbToolsDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

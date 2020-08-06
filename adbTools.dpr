program adbTools;

uses
  Vcl.Forms,
  uPrincipal in 'form\uPrincipal.pas' {frmPrincipal},
  adbToolsRN in 'rn\adbToolsRN.pas',
  adbToolsDAO in 'dao\adbToolsDAO.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.Title := 'adbTools';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

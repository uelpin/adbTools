unit adbToolsDAO;
interface
uses ShellAPI,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
     System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
     Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, ZDataset, Data.DB;

 type
  TadbToolsDAO = class 
  
 
 private
   { private declarations }
 public
  procedure adbConectar(cmdShow:integer;adbIp:string);
  procedure adbDesconectar(cmdShow:integer);
  procedure adbKillServer(cmdShow:integer);
  
  function ShellExecAndWait(showMode: integer; comando: PWideChar) : Boolean;
 end;
implementation

{ TadbToolsDAO }

procedure TadbToolsDAO.adbConectar(cmdShow:integer;adbIp: string);
begin
  ShellExecAndWait(cmdShow,PChar('/c pushd C:\&                          '+
                           'cd %appdata%&                          '+
                           'cd..&                                  '+
                           'cd local\Android\Sdk\platform-tools&   '+
                           'adb tcpip 5555&                        '+
                           'adb connect '+adbIp+'& Pause           '));
end;

procedure TadbToolsDAO.adbDesconectar(cmdShow:integer);
begin
  ShellExecAndWait(cmdShow,PChar('/c pushd C:\&                          '+
                           'cd %appdata%&                          '+
                           'cd..&                                  '+
                           'cd local\Android\Sdk\platform-tools&   '+
                           'adb disconnect&                        '+
                           'Pause                                  '));
end;

procedure TadbToolsDAO.adbKillServer(cmdShow:integer);
begin
  ShellExecAndWait(cmdShow,PChar('/c pushd C:\&                          '+
                           'cd %appdata%&                          '+
                           'cd..&                                  '+
                           'cd local\Android\Sdk\platform-tools&   '+
                           'adb kill-server&                       '+
                           'Pause                                  '));
end;



function TadbToolsDAO.ShellExecAndWait(showMode: integer;
  comando: PWideChar): Boolean;
var
  shell: TShellExecuteInfo;
  codigoSaida: DWORD;
begin
  FillChar(shell, SizeOf(shell), 0) ;
  shell.cbSize := SizeOf(TShellExecuteInfo) ;

  with shell do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpVerb := nil;
    lpFile := 'cmd.exe';
    lpParameters := PChar(comando);
    nShow := showMode;
  end;

  if ShellExecuteEx(@shell) then
  begin
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(shell.hProcess, codigoSaida);
    until not(codigoSaida = STILL_ACTIVE);

    Result := True;
  end else
    Result := False;

end;

end.

unit adbToolsRN;
interface

uses adbToolsDAO;

type
  TadbToolsRN = class

  private
    adbToolsDAO : TadbToolsDAO;

  public
    procedure adbConectar(cmdShow:integer;adbIp:string);
    procedure adbDesconectar(cmdShow:integer);
    procedure adbKillServer(cmdShow:integer);
    constructor create;
  end;
implementation

{ TadbToolsRN }

procedure TadbToolsRN.adbConectar(cmdShow: integer; adbIp: string);
begin
  adbToolsDAO.adbConectar(cmdShow,adbIp);
end;

procedure TadbToolsRN.adbDesconectar(cmdShow: integer);
begin
  adbToolsDAO.adbDesconectar(cmdShow);
end;

procedure TadbToolsRN.adbKillServer(cmdShow: integer);
begin
  adbToolsDAO.adbKillServer(cmdShow);
end;

constructor TadbToolsRN.create;
begin
  adbToolsDAO := TadbToolsDAO.Create;
end;

end.

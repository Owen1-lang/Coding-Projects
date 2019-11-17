program KOSPOT_POS;

uses
  Forms,
  Login_u in 'Login_u.pas' {frmLogin},
  Interface_u in 'Interface_u.pas' {frmInterface};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmInterface, frmInterface);
  Application.Run;
end.

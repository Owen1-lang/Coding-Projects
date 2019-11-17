unit Login_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Interface_u;

type
  TfrmLogin = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TBitBtn;
    btnCancel: TBitBtn;
    lblUsername: TLabel;
    lblPassword: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var Name, Password : string ;
    Errors : Integer ;
begin

  Errors := 0 ;

  Name := edtUsername.Text ;
  Password := edtPassword.Text ;

  if Length(Name) > 8 then
    begin
      if Length(Password) > 8 then
        begin
         frmInterface.Show ;
         frmInterface.edtAdmin.Text := Name ;
         frmLogin.Hide ;
        end ;
    end ;



  end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
   edtPassword.PasswordChar := '*' ;
end;

end.


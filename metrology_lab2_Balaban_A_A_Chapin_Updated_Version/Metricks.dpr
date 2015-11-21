program Metricks;

uses
  Vcl.Forms,
  Chepin_Metricks in 'Chepin_Metricks.pas' {metrick},
  UnitOfConstantVariables in 'UnitOfConstantVariables.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmetrick, metrick);
  Application.Run;
end.

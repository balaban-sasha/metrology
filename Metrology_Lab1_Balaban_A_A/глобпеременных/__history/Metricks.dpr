program Metricks;

uses
  Vcl.Forms,
  Metrickofglobalvariables in '..\Metrickofglobalvariables.pas' {metrick};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmetrick, metrick);
  Application.Run;
end.

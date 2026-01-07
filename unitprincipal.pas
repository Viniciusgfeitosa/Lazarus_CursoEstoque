unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons, unitclientes;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormClientes,FormClientes);
    FormClientes.ShowModal;
  finally
    FormClientes.Close;
  end;
end;

procedure TFormPrincipal.Panel1Click(Sender: TObject);
begin

end;

end.


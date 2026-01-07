unit unitclientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  Buttons, Types;

type

  { TFormClientes }

  TFormClientes = class(TForm)
    btSair: TBitBtn;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabArquivo: TTabSheet;
    TabDadosCliente: TTabSheet;
    procedure btSairClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure TabDadosClienteContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.lfm}

{ TFormClientes }

procedure TFormClientes.btSairClick(Sender: TObject);
begin
  FormClientes.Close;
end;

procedure TFormClientes.Panel1Click(Sender: TObject);
begin

end;

procedure TFormClientes.TabDadosClienteContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

end.


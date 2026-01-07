unit unitDM;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    DataSourceCliente: TDataSource;
    ZConnection1: TZConnection;
    ZQueryCliente: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataSourceClienteDataChange(Sender: TObject; Field: TField);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.ZConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin

end;

procedure TDataModule1.DataSourceClienteDataChange(Sender: TObject; Field: TField);
begin

end;

end.

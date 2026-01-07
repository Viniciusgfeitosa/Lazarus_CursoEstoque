unit minhas_funcoes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, sqldb, ZDataset;

Procedure exibir_clientes(Query:TZQuery);
Procedure Incluir_Cliente(Query:TZQuery;Nome:String;Endereco:String;Cidade:String;Estado:String;Celular:String;CEP:String);


implementation
Procedure exibir_clientes(Query:TZQuery);
Begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.ADD('SELECT * FROM CLIENTE');
  Query.ExecSQL;
  Query.Open;
end;

Procedure Incluir_Cliente(Query:TZQuery;Nome:String;Endereco:String;Cidade:String;Estado:String;Celular:String;CEP:String);
begin
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('INSERT INTO CLIENTE(NOME,ENDERECO,CIDADE,ESTADO,CELULAR,CEP)');
  Query.SQL.Add('VALUES:(:NOME,:ENDERECO,:CIDADE,:ESTADO,:CELULAR,:CEP)');

  Query.Params[0].AsString := Nome;
  Query.Params[1].AsString := Endereco;
  Query.Params[2].AsString := Cidade;
  Query.Params[3].AsString := Estado;
  Query.Params[4].AsString := Celular;
  Query.Params[5].AsString := CEP;

  Query.ExecSQL;
end;

end.


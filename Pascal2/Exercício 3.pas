Program Ex3 ;
var
VET : array[1..10] of integer;
i : integer;
Begin
  
  for i := 1 to 10 do
  begin
  	Writeln('Informe o ',i,'º valor:');
  		read(VET[i]);
  end;
  
  for i := 1 to 10 do
  begin
  
  	Writeln(VET[11-i]);
  
  end;
End.
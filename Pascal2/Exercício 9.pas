Program Ex9 ;
var
A : array[1..5,1..5] of integer;
i,j,aux : integer;
Begin
aux:=0;  
		For i:= 1 to 5 do
			For j:=1 to 5 do
			Begin
				Writeln('Informe a linha ',i,'- coluna',j,' da matriz A:');
					readln(A[i,j]);  
			End;  
			
	Writeln;Writeln;
	Writeln('----Matriz A----');
	Writeln;
		For i:=1 to 5 do
		Begin
			For j:=1 to 5 do
			Begin
				Write(A[i,j]:4);
			End;
		Writeln;Writeln;
		End;
		
		For i:=1 to 5 do
		Begin
			For j:=1 to 5 do
				If( i >= j )then
				Begin
					aux:=aux+A[i,j];
				End;
		End;
		
		Writeln(aux);
End.
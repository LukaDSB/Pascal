1Program Ex10;
var
A :array[1..3,1..5] of integer;
B :array[1..5,1..3] of integer;
C :array[1..3,1..5] of integer;
i,j : integer;
Begin
//Receber valores

		For i:=1 to 3 do
		Begin
			For j :=1 to 5 do
			Begin
				Writeln('Matriz A - Informe o valor da linha ',i,' - coluna ',j,':');
					readln(A[i,j]);
			End;
		End;
		
		For i:=1 to 5 do
		Begin
			For j :=1 to 3 do
			Begin
				Writeln('Matriz B - Informe o valor da linha ',i,' - coluna ',j,':');
					readln(B[i,j]);
			End;
		End;
		
//Mostrar matrizes	
	
Writeln;writeln;
Writeln('----Matriz A----');
Writeln;

		For i:=1 to 3 do
		Begin
			For j :=1 to 5 do
			write(A[i,j]:4);
			Writeln;writeln;
		End;
		
Writeln;writeln;
Writeln('----Matriz B----');
Writeln;

		For i:=1 to 5 do
		Begin
			For j :=1 to 3 do
			write(B[i,j]:4);
			Writeln;writeln;
		End;
			
End.
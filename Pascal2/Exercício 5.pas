Program Ex5 ;
var
A : array[1..10] of real;
B : array[1..10] of real;
i,j : integer;
Begin

		For i:= 1 to 10 do
		Begin
			writeln(' Informe o ',i,'º valor:');
				readln(A[i]);
		End;
				
		For i:= 1 to 10 do
		begin
			If i mod 2 = 0 then
				B[i] := A[i] / 2
			else
		  	B[i] := A[i] * 3;	
		end;
		
		Writeln;
		writeln('---Matriz B---');
		Writeln;writeln;
		
			For i:= 1 to 10 do
				begin
					write(B[i]:4);
					writeln;writeln;
				end;			  
End.
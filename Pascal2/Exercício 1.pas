Program Pzim ;
const
n = 20;
var
A : array[1..20] of integer;
B : array[1..20] of integer;
C : array[1..20] of integer;
soma, i : integer;
Begin

		for i := 1 to n do
		begin
				Writeln('Informe o valor ',i,' do primeiro vetor:');
					readln(A[i]);
		end;			
					
		
    for i := 1 to n do
		begin
				Writeln('Informe o valor ',i,' do segundo vetor:');
					readln(B[i]);
		end;
		
		for i := 1 to n do
		begin
 		 C[i] := A[i] + B[i];
 		 Writeln('C[',i,'] = ',C[i]); 
		end;
		
		
End.
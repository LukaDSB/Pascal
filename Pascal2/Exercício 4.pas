Program Ex4 ;
var
V : array[1..10] of integer;
i,j,troca : integer;
Begin

			For i := 1 to 10 do
			Begin
				Writeln('Informe o ',i,'º valor do vetor');
					Readln(V[i]);
			End;


			For i := 1 to 10 do
				For j := i+1 to 10 do
					If V[j] < V[i] then
					Begin
						troca := V[i];
						V[i] := V[j];
						V[j] := troca
					end;
			
			Write('*Resultado*');		
			For i := 1 to 10 do
			Begin
				Writeln('Vetor',i,' : ', V[i]);
			End;

End.
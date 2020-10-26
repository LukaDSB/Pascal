Program Ex8 ;
var
MAT1,MAT2,SOMA : array[1..3,1..5] of integer;
i,j : integer;
Begin
 // i = Número de linhas
 // j = Número de colunas
 
		For i := 1 to 3 do
			For j := 1 to 5 do
			Begin
				Write('Informe o valor da linha ',i,' - Coluna ',j,' da matriz A: ');
					readln(MAT1[i,j]);
					
				Write('Informe o valor da linha ',i,' - Coluna ',j,' da matriz B: ');
					readln(MAT2[i,j]);
					
				SOMA[i,j] := MAT1[i,j] + MAT2[i,j];
			End;
			
	Writeln;Writeln;                                        
	Writeln('----- Matriz A -----');                         
  Writeln;
  
	 	For i := 1 to 3 do
 			begin
			 	For j := 1 to 5 do
					Begin
						write(MAT1[i,j]:4);	
					End;
					writeln;writeln;
			end;
			
	Writeln;
	Writeln('----- Matriz B -----');
  Writeln;
 		For i := 1 to 3 do
			Begin
	 			For j := 1 to 5 do
					Begin
						write(MAT2[i,j]:4);	
					End;
					writeln;writeln;
			End;
			
	Writeln;		
	Writeln('-----Matriz "Soma"-----');
	Writeln;
		For i := 1 to 3 do
		Begin
			For j:= 1 to 5 do
				Begin
					Write(SOMA[i,j]:4);
				End;
				Writeln;Writeln;
		End;
End.
Program Pzim ;
Var
A :Array[1..5] of Integer;
i,Bus :Integer;
Begin

		For i:=1 to 5 do
		Begin
			Writeln('Vetor A - Posição ',i,' :');
				Read(A[i]);
		End;
		
//Busca sequencial no vetor A
Writeln;
Writeln('----Realizar busca ----');
Writeln('Buscar valor:');
	Read(Bus);
	For i:=1 to 5 do
	Begin
		While (i<5) and (A[i]<>Bus) do
		Begin                         
			i:=i+1;	                    
		End;                          
		If (A[i]=Bus) then  
			Writeln('Número encontrado na posição: ',i)
		Else
			Writeln('Número não encontrado.'); 
	End;		                                        
  
End.
Program ExVetor1 ;
Var
vet : array[1..5] of integer; 
numPar,numImpar,Tot,cont : integer;
Begin
numPar := 0;
numImpar := 0;
Tot:= 0;
		
		For cont := 1 to 5 do
			begin
				Write('Informe o ',cont,'� valor:');
					readln(Vet[cont]);
			end;
		
		For cont := 1 to 5 do
			begin
				if ( Vet[cont] mod 2 = 0 ) then
        	numPar := numPar + Vet[cont]
    		else
        	numImpar := numImpar + Vet[cont];   
			end;
		Tot := numImpar + numPar;
		
			Writeln('A soma dos n�meros pares �:',numPar);
			Writeln('A soma dos n�meros impares �:',numImpar);
			Writeln('A soma total dos n�meros �:',Tot);	
End.                
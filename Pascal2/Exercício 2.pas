Program Ex2 ;
var
VET : array[1..30] of string;
i,j: integer; 
k : string;
                            
Begin
j := 0;
		for i := 1 to 30 do
    	Begin
    		writeln('Informe o ',i,'º valor:') ;
					readln(VET[i]) ;        
			end;
			
			
		For i := 1 to 30 do
		begin
			if (VET[i] = 'k'  ) then
				begin
      			Writeln('A letra K está no índice:',i);
      			j := 1;
 				end; 
		end;
		
			If (j = 0) then
				begin
						Writeln('Não consegui encontrar "k" no vetor.');	
				end;
					
End.          
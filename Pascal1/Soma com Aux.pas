Program Pzim ;
Var
Aux,N:real;
Begin
Aux:=0;
		writeln('Insira "1" para iniciar o programa'); 
			read(N);
			
 		
			while (N <> 0) do
				begin
						Writeln('Informe valor a ser somado, informar "0" para exibir o resultado;');
							read(N); 
				Aux:=(N+Aux);	
      	end;                                        
       
        
       		Writeln('A soma dos valores informados é: ',Aux);
    
       	
End.
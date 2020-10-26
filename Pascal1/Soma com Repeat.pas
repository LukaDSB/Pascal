Program Pzim ;
var
A,Aux :real;
Begin
  Aux:=0;
    repeat
   
   		Writeln('Informe os valores a serem somados, informe "0" para obter o resultado;');
   			read(A);
   			
   	 Aux:=(Aux+A);
   	 
   	until (A=0);
   	
  
  		Writeln('A soma dos valores informados é:',Aux);
End.
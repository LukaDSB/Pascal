Program Pzim ;                  //Lucas de S. Benevenute
Type
T_Cad = record
				Matricula :Integer;
				Nome :String;
				Salario :Real;
			End;
			Vet=Array[1..10] of T_Cad;

Procedure CADASTRO (var i:Integer;var A:Vet);
		Begin
			Writeln('----Cadastro ',i,'----');
			Writeln;
			Writeln('Matricula: ');
				Read(A[i].Matricula);		
				
			Writeln('Nome: ');
				Read(A[i].Nome);
			Writeln('Salário: ');
				Read(A[i].Salario);
			i:=i+1;
			clrscr;
		End;
		
Procedure EXIBIR (var i:Integer;var A:Vet);
var
aux :T_Cad;
cont,j :Integer;  
		Begin
		cont:=i;
			for i:= 1 to cont do
	    	for j:= i+1 to cont-1 do
	 			if (A[i].Matricula > A[j].Matricula) and (A[i].Salario > A[j].Matricula) then  	 		  
   			begin
	   			aux:= A[i];
	  			A[i]:= A[j];
	   			A[j]:= aux;
	    	end;
 
      Writeln('Empregados que recebem abaixo de R$1000,00 :');
			For i:=1 to cont-1 do
			If (A[i].Salario <  1000) then
			Begin
				Writeln('-----Cadastro ',i,'-----');
				Writeln;
				Writeln('Matricula: ',A[i].Matricula);
				Writeln('Nome: ',A[i].Nome);
				Writeln('Salário: R$',A[i].Salario:0:2);
				Writeln;Writeln;
			End;
 
	    Writeln('Empregados que recebem R$1000,00 :');
			For i:=1 to cont-1 do
			If (A[i].Salario = 1000) then
			Begin
				Writeln('-----Cadastro ',i,'-----');
				Writeln;
				Writeln('Matricula: ',A[i].Matricula);
				Writeln('Nome: ',A[i].Nome);
				Writeln('Salário: R$',A[i].Salario:0:2);
				Writeln;Writeln;
			End;
			
			Writeln('Empregados que recebem acima de R$1000,00 :');
			For i:=1 to cont-1 do
			If (A[i].Salario >  1000) then
			Begin
				Writeln('-----Cadastro ',i,'-----');
				Writeln;
				Writeln('Matricula: ',A[i].Matricula);
				Writeln('Nome: ',A[i].Nome);
				Writeln('Salário: R$',A[i].Salario:0:2);
				Writeln;Writeln;
			End;
		End;
	
Procedure BUSCA (var i:integer;var A:Vet);
var
Bus :Integer;
cont :Integer;
		Begin
		cont:=i;
			Writeln('Buscar número de matrícula matrícula: ');
				Read(Bus);
			clrscr;
			For i:= 1 to cont do
			If(Bus = A[i].Matricula)then               
			Begin
			Writeln('-----Cadastro ',i,'-----');
				Writeln;
				Writeln('Matricula: ',A[i].Matricula);
				Writeln('Nome: ',A[i].Nome);
				Writeln('Salário: ',A[i].Salario);
				Writeln;Writeln;
			End;
		End;

Procedure GRAVAR(var i:Integer;var A:Vet);
var
F:text;
cont:Integer;
Begin
Assign(F,'Exercicio 4.txt');
Rewrite(F);
cont:=i;
		For i:=1 to cont do
			Begin
				Writeln(F);
				Writeln(F,'-----Cadastro ',i,'-----');
				Writeln(F);
				Writeln(F,'Matricula: ',A[i].Matricula);
				Writeln(F,'Nome: ',A[i].Nome);
				Writeln(F,'Salário: R$',A[i].Salario:0:2);
				Writeln;Writeln;
			End;
Close(F);
End;		     
Var
A :Vet;
i,n:Integer;		
Begin//Programa principal 
n:=1;
i:=1;
		While (n<>0) do
		Begin
			Writeln('[0] - Sair do programa -');
			Writeln('[1] - Realizar cadastro -');
			Writeln('[2] - Imprimir cadastros -');
			Writeln('[3] - Buscar cadastros: -');
			Writeln('[4] - Gravar cadastros: -');
				Read(n);
			clrscr;
				
			If (n=1) then
			CADASTRO(i,A);
			
			If (n=2) then
			EXIBIR(i,A);
			
			If (n=3) then
			BUSCA(i,A);
			
			If(n=4)then
			GRAVAR(i,A);
		End;  
End.         
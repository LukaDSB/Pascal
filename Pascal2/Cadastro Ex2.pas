Program Pzim ;
Type
T_Alunos = record
						nome :String;
						nota1 :Real;
						nota2 :Real;					
					End;
Var
media :Array[1..20] of Real;
A :Array[1..20] of T_Alunos;
n,i,j,cont,flag : integer;
bus :String;
aux :T_Alunos;

Procedure CADASTRO (Var i :Integer);
			Begin
				Writeln('-----Cadastro ',i,'-----');
				Writeln;
					Writeln('Nome: ');
						Read(A[i].nome);    
					Writeln;
					Writeln('Nota 1:');
						Read(A[i].nota1);
						
					Writeln;
					Writeln('Nota 2:');
						Read(A[i].nota2);		
					media[i]:=(A[i].nota1+A[i].nota2) / 2; 
				i:=i+1;
				cont:=cont+1;
				Clrscr;         
			End;

Begin
//Menu principal
cont:=0;
n:=1;
i:=1;
flag:=0;
			While(n<>0) do
			Begin
				Writeln('[0] - Fechar programa:');
				Writeln('[1] - Cadastrar novo aluno:');
				Writeln('[2] - Imprimir cadastros:');
				Writeln('[3] - Buscar cadastros:');
					Read(n);
				Clrscr;
				
				
//Obter dados dos cadastros
				If(n=1)then	
				CADASTRO(i);
				
//Imprimir cadastros
					If(n=2) then
					Begin
					for i:= 1 to cont do
	    				for j:= i+1 to cont do
	    				begin
	    				if (A[i].nome > A[j].nome) then  			
	    				begin
	    					aux:= A[i];
	    					A[i]:= A[j];
	    					A[j]:= aux;
	    				end;
	    				end;
					For i:=1 to cont do
					Begin
						Writeln('-----Cadastro ',i,'-----');
						Writeln;
						Write('Nome: ',A[i].nome);
						Writeln;
						Write('Nota 1: ',A[i].nota1:0:2);
						Writeln;
						Write('Nota 2: ',A[i].nota2:0:2);
						Writeln;
						Write('Média: ',media[i]:0:2);
						Writeln;
							If(media[i]>=5) then
								Write('Aluno aprovado!');
								flag:=1;
							If (flag=0) then
								Write('Aluno reprovado!');
						Writeln;Writeln 
					End;
					End;
					
//Buscar cadastros
					If(n=3)then
					Begin
						Writeln('Buscar nome:');
							Read(Bus);
						Clrscr;
						For i:=1 to cont do
						Begin
							If(A[i].nome = Bus)then
							begin
								Writeln('----Cadastro ',i,'----');
								Writeln('Nome: ',A[i].nome);
								Writeln('Nota1: ',A[i].nota1);
								Writeln('Nota2: ',A[i].nota2);
								Writeln('Média: ',media[i]);
								Writeln;Writeln;
							end;
						End;
					End;
			End;//While
End.
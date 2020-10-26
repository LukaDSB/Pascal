Program Pzim ;          //Lucas de S. Benevenute
Type
T_Alunos = record
						nome :String;
						nota1 :Real;
						nota2 :Real;
						nota3 :Real;
						nota4 :Real;
						media :real;					
					End;
					Vet = array[1..10] of T_Alunos;

Procedure CADASTRO (Var i :Integer;var A:Vet);
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
					Writeln;
					Writeln('Nota 3:');
						Read(A[i].nota3);
					Writeln;
					Writeln('Nota 4:');
						Read(A[i].nota4);		
				A[i].media:=(A[i].nota1+A[i].nota2+A[i].nota3+A[i].nota4) / 4; 
				i:=i+1;
				Clrscr;         
			End;
											 
Procedure EXIBIR (var i:Integer;var A:Vet);
var
flag,cont,j:integer;
aux :T_Alunos;
					Begin
					cont:=i;
					for i:= 1 to cont do
	    				for j:= i+1 to cont-1 do
	    				begin
	    				if (A[i].nome > A[j].nome) then  			
	    				begin
	    					aux:= A[i];
	    					A[i]:= A[j];
	    					A[j]:= aux;
	    				end;
	    				end;
					For i:=1 to cont-1 do
					Begin
					flag:=0;
						Writeln('-----Cadastro ',i,'-----');
						Writeln;
						Write('Nome: ',A[i].nome);
						Writeln;
						Write('Nota 1: ',A[i].nota1:0:2);
						Writeln;
						Write('Nota 2: ',A[i].nota2:0:2);
						Writeln;
						Write('Nota 3: ',A[i].nota3:0:2);
						Writeln;
						Write('Nota 4: ',A[i].nota4:0:2);
						Writeln;
						Write('Média: ',A[i].media:0:2);
						Writeln;
							If(A[i].media>=5) then
							Begin
								Write('Aluno aprovado!');
								flag:=1;
							End;
							If (flag=0) then
								Write('Aluno reprovado!');
						Writeln;Writeln 
					End;
					End;
					              
Procedure BUSCAR (var i :Integer;var A:Vet);
var
bus :String;
cont :Integer;
flag :Integer;					
					Begin
					flag:=0;
					cont:=i;
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
								Writeln('Nota3: ',A[i].nota3);
								Writeln('Nota4: ',A[i].nota4);
								Writeln('Média: ',A[i].media);
								If(A[i].media>=5) then
							Begin
								Write('Aluno aprovado!');
								flag:=1;
							End;
							If (flag=0) then
								Write('Aluno reprovado!');
								Writeln;Writeln;
							end;
						End;
					End;

Procedure GRAVAR(var i:Integer;var A:Vet);
var
F:text;
flag,j,cont :Integer;
aux :T_Alunos;
Begin
cont:=i;
	assign(F,'Exercicio 2.txt');
	rewrite(F);
	for i:= 1 to cont do
	    				for j:= i+1 to cont-1 do
	    				begin
	    				if (A[i].nome > A[j].nome) then  			
	    				begin
	    					aux:= A[i];
	    					A[i]:= A[j];
	    					A[j]:= aux;
	    				end;
	    				end;
					For i:=1 to cont-1 do
					Begin
					flag:=0;
						Writeln(F,'-----Cadastro ',i,'-----');
						Writeln(F);
						Writeln(F,'Nome: ',A[i].nome);
						Writeln(F,'Nota 1: ',A[i].nota1:0:2);
						Writeln(F,'Nota 2: ',A[i].nota2:0:2);
						Writeln(F,'Nota 3: ',A[i].nota3:0:2);
						Writeln(F,'Nota 4: ',A[i].nota4:0:2);
						Writeln(F,'Média: ',A[i].media:0:2);
							If(A[i].media>=5) then
							Begin
								Writeln(F,'Aluno aprovado!');
								flag:=1;
							End;
							If (flag=0) then
								Writeln(F,'Aluno reprovado!');
						Writeln(F); 
					End;
				Close(F);
End;
					
Var
A :Vet;
n,i: integer;					
Begin
n:=1;
i:=1;
                  
			While(n<>0) do
			Begin
				Writeln('[0] - Fechar programa:');
				Writeln('[1] - Cadastrar novo aluno:');
				Writeln('[2] - Imprimir cadastros:');
				Writeln('[3] - Buscar cadastros:');
				Writeln('[4] - Gravar registros:');
					Read(n);
				Clrscr;
				
				If(n=1)then	
				CADASTRO(i,A);
				
				If(n=2) then
				EXIBIR(i,A);
					
				If(n=3)then
				BUSCAR(i,A);
				
				If(n=4)then
				GRAVAR(i,A);	
			End;//While
End.
Program Pzim ;         //Lucas de S. Benevenute
Type
T_Endereco = record
						UF :String[2];
						cidade :String;
						bairro :String;
						rua :String;
						numcasa :String;
					End;
T_Cadastro = record
						nome :String;
						ender :T_Endereco;
						telefone :String;
					End;
					Vet = Array[1..10] of T_Cadastro;//Criar um vetor do tipo da estrutura
					
Procedure CADASTRO(var i:Integer; Var A :Vet); //Receber cadastros
var
cont :Integer; 
					Begin     // a variavel 'i' é iniciada como 1 no programa principal          
					Writeln('-----Cadastro ',i,'-----');
						Writeln('Nome: ');
							Read(A[i].nome);                             
						Writeln;
						Writeln('UF: ');
							Read(A[i].ender.UF);
						Writeln;
						Writeln('Cidade: ');
							Read(A[i].ender.cidade);
						Writeln;
						Writeln('Bairro: ');
							Read(A[i].ender.bairro);
						Writeln;
						Writeln('Rua: ');
							Read(A[i].ender.rua);
						Writeln;
						Writeln('Número: ');
							Read(A[i].ender.numcasa);
						Writeln;
						Writeln('Telefone: ');
							Read(A[i].telefone);
					i:=i+1;  //    
						clrscr;
					End;
		
Procedure EXIBIR (var i :Integer;var A:Vet);  //Exibir cadastros
var
j,cont :Integer;
aux :T_Cadastro;
						Begin
						cont:=i; //Variavel para contar o número de cadastros realizados
						for i:= 1 to cont do
	    				for j:= i+1 to cont-1 do
	    				if (A[i].nome > A[j].nome) then  			
	    				begin
	    					aux:= A[i];
	    					A[i]:= A[j];
	    					A[j]:= aux;
	    				end;	
						For i:=1 to cont-1 do
						Begin
						Writeln;
						Writeln('-----Cadastro ',i,' -----');
						Writeln;
							Write('Nome: ',A[i].nome);
							Writeln;
							Write('UF: ',A[i].ender.UF);
							Writeln;
							Write('Cidade: ',A[i].ender.cidade);
							Writeln;
							Write('Bairro: ',A[i].ender.bairro);
							Writeln;
							Write('Rua: ',A[i].ender.rua);
							Writeln;
							Write('Número; ',A[i].ender.numcasa);    
							Writeln;
							Write('Telefone: ',A[i].telefone);
							Writeln;
							Writeln; 
						End;
						End;
						
Procedure BUSCA (var i:Integer;var A :Vet); //Buscar cadastros 
var
cont :Integer;
Bus :String;						
					Begin
					cont:=i;
					Writeln;
					Writeln('----Realizar busca ----');
					Writeln('Buscar nome:');
						Read(Bus);
					Clrscr;
						For i:=1 to cont do
					  Begin                        
						If (A[i].nome=Bus) then 
							Writeln('Nome encontrado no cadastro: ',i);
							Writeln;Writeln; 
						End;
		 			End;
		 			
Procedure GRAVAR(i:integer;var A:Vet);
var
F:text;
cont,j:integer;
aux :T_Cadastro;
Begin
cont:=i;
	Assign(F,'Exercicio1.txt');
	Rewrite(F);
	for i:= 1 to cont do
	    				for j:= i+1 to cont-1 do
	    				if (A[i].nome > A[j].nome) then  			
	    				begin
	    					aux:= A[i];
	    					A[i]:= A[j];
	    					A[j]:= aux;
	    				end;
	For i:=1 to cont-1 do
						Begin
						Writeln(F);
						Writeln(F,'-----Cadastro ',i,' -----');
						Writeln(F);
							Writeln(F,'Nome: ',A[i].nome);
							Writeln(F,'UF: ',A[i].ender.UF);
							Writeln(F,'Cidade: ',A[i].ender.cidade);
							Writeln(F,'Bairro: ',A[i].ender.bairro);
							Writeln(F,'Rua: ',A[i].ender.rua);
							Writeln(F,'Número; ',A[i].ender.numcasa);
							Writeln(F,'Telefone: ',A[i].telefone); 
						End;
	Close(F);
End;
		 			
var  
A :Vet; //Criar uma variavel do tipo do vetor de T_Cadastro
i,n:Integer;	 			
Begin//Programa principal
i:=1;
n :=1;
	while (n<>0) do
	Begin
				Writeln('[0] - Sair do programa: ');
				Writeln('[1] - Realizar cadastro: ');
				Writeln('[2] - Exibir cadastros: ');
				Writeln('[3] - Buscar cadastros: ');
				Writeln('[4] - Gravar registros: ');   
					read(n);  
				Clrscr;
								     	
					If(n=1) then
					CADASTRO(i,A);
						
	    		If(n=2)then
	    		EXIBIR(i,A);					

					If(n=3)then
					BUSCA(i,A);	
					
					If(n=4)then
					GRAVAR(i,A);		
	End; //while
End.                                 
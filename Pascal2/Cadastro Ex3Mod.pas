Program Ex3 ;
Type
T_Cad = Record
				Nome :String;
				Altura :Real;
			End;
			Vet=Array[1..15] of T_Cad;
											  		
Procedure CADASTRAR (var i :Integer;Var A:Vet);       
			Begin      
				Writeln('----Cadastro ',i,'----');
				Writeln;
				Writeln('Nome: ');
					Read(A[i].Nome);               
				Writeln('Altura: ');
					Read(A[i].Altura);
				i:=i+1;
				Clrscr;
			End;

Procedure EXIBIR (var i :Integer;Var A:Vet);
var
cont,j :Integer;
aux :T_Cad;
media,Som:real;
			Begin
			cont:=i;
				For i:=1 to cont do
					For j:=i+1 to cont-1 do
					If(A[i].Nome>A[j].Nome)then
					Begin
						aux:=A[i];
						A[i]:=A[j];
						A[j]:=aux;
					End;
				
					For i:=1 to cont-1 do
					Begin
					Som:=Som+A[i].Altura;
					media:=som/cont;
					End;
				For i:=1 to cont-1 do
				Begin
				Writeln('----Cadastro ',i,'----');
				Writeln;
				Writeln('Nome: ',A[i].Nome);    
				Writeln('Altura: ',A[i].Altura:0:2,'m');      
				Writeln;Writeln;
				End;
				Writeln('Média das alturas: ',media);	
			End;	
		
Procedure EXIBIRALT (var i:Integer;Var A:Vet);
var
cont,j :Integer;
aux :T_Cad;
			Begin
			cont:=i;
				For i:=1 to cont do
					For j:=i+1 to cont-1 do
					If (A[i].Altura>A[j].Altura) then
					Begin
						aux:=A[i];
						A[i]:=A[j];
						A[j]:=aux;	
					End;
		
					Writeln('Pessoas com 1.5m ou menos: ');
					For i:=1 to cont do	
					If (A[i].Altura <= 1.5) then
					Begin
						Writeln('----Cadastro ',i,'----'); 
						Writeln;
						Writeln('Nome: ',A[i].Nome);    
						Writeln('Altura: ',A[i].Altura:0:2,'m');      
						Writeln;Writeln;
					End;
					
					Writeln('Pessoas com mais de 1.5m: ');
					For i:=1 to cont do	
					If (A[i].Altura > 1.5) then
					Begin
						Writeln('----Cadastro ',i,'----'); 
						Writeln;
						Writeln('Nome: ',A[i].Nome);    
						Writeln('Altura: ',A[i].Altura:0:2,'m');      
						Writeln;Writeln;
					End;
					
					Writeln('Pessoas com 1,5m à 2m: ');
					For i:=1 to cont do	
					If (A[i].Altura > 1.5) and (A[i].Altura <= 2) then
					Begin
						Writeln('----Cadastro ',i,'----'); 
						Writeln;
						Writeln('Nome: ',A[i].Nome);    
						Writeln('Altura: ',A[i].Altura:0:2,'m');      
						Writeln;Writeln;
					End;
				End;

Procedure GRAVAR(var i:Integer;var A:Vet);
Var
F:text;
cont:Integer;
Begin
cont:=i;
Assign(F,'Exercicio 3.txt');
Rewrite(F);
	For i:=1 to cont-1 do
	Begin
		Writeln(F);
		Writeln(F,'----Cadastro ',i,'----');
		Writeln(F);
		Writeln(F,'Nome :',A[i].Nome);
		Writeln(F,'Altura :',A[i].Altura:0:2);
	End;
Close(F);
End;				
			
Var
A :Vet;
i,n:Integer;			
Begin	//Programa principal
n:=1;
i:=1;		                     
		While (n<>0) do
		Begin
			Writeln('[0] - Sair do programa:');
			Writeln('[1] - Cadastrar novo usuário:');
			Writeln('[2] - Imprimir cadastros:');
			Writeln('[3] - Imprimir cadastros por ordem de altura:');
			Writeln('[4] - Gravar os registros:');
				Read(n);
			Clrscr;

			If(n=1)then
			CADASTRAR(i,A);
			
			If(n=2)then 
			EXIBIR(i,A);
			
			If(n=3)then
			EXIBIRALT(i,A);
			
			If(n=4)then
			GRAVAR(i,A);		
		End;//while  
End.
Program Ex3 ;
Type
T_Cad = Record
				Nome :String;
				Altura :Real;
			End;
Var
A :Array[1..15] of T_Cad;
i,j,n,cont :Integer;											  
aux :T_Cad;
med,som :Real;

Procedure CADASTRAR (var i :Integer);       
			Begin      
				Writeln('----Cadastro ',i,'----');
				Writeln;
				Writeln('Nome: ');
					Read(A[i].Nome);
				Writeln('Altura: ');
					Read(A[i].Altura);
				i:=i+1;
				cont:=cont+1;
				Clrscr;
			End;
				
Begin	//Programa principal
cont:=0;               
i:=1;
n:=1;
som:=0;	
	                     
//Menu principal
		While (n<>0) do
		Begin
			Writeln('[0] - Sair do programa:');
			Writeln('[1] - Cadastrar novo usuário:');
			Writeln('[2] - Imprimir cadastros por ordem alfabetica:');
			Writeln('[3] - Imprimir cadastros por ordem crescente de altura:');
			Writeln('[4] - Imprimir média das alturas: ');
				Read(n);
			Clrscr;
			

      If(n=1)then
      CADASTRAR(i);

			If(n=2)then
			Begin
//Organizar cadastro por ordem crescente de nome
			For i:=1 to cont do
				For j:=i+1 to cont do
				If (A[i].nome > A[j].nome) then
				Begin;
					aux:=A[i];         
					A[i]:=A[j];
					A[j]:=aux
				End;
			
//Imprimir cadastros 
				For i:=1 to cont do
				Begin
					Writeln('----Cadastro ',i,'----');
					Writeln;
					Writeln('Nome: ',A[i].Nome);    
					Writeln('Altura: ',A[i].Altura:0:2);      
					Writeln;Writeln;
				End;
			End;
			
			If(n=3)then
			Begin
			For i:=1 to cont do
				For j:=i+1 to cont do
				If (A[i].altura > A[j].altura) then
				Begin;
					aux:=A[i];         
					A[i]:=A[j];
					A[j]:=aux
				End;
				
				
			  Writeln('Alunos com 1,5m ou menos: ');
				For i:=1 to cont do
				If (A[i].Altura <= 1.5) then
				Begin	
					Begin
					Writeln('----Cadastro ',i,'----');
					Writeln;
					Writeln('Nome: ',A[i].Nome);    
					Writeln('Altura: ',A[i].Altura:0:2);      
					Writeln;Writeln;
					End;
				End;
							
				Writeln('Alunos maiores que 1.5m :');
				For i:=1 to cont do
				If (A[i].Altura > 1.5) then
				Begin
					Begin
					Writeln('----Cadastro ',i,'----');
					Writeln;
					Writeln('Nome: ',A[i].Nome);    
					Writeln('Altura: ',A[i].Altura:0:2);      
					Writeln;Writeln;
					End;
				End;
				
			Writeln('Alunos maiores que 1.5m e menores que 2.0m :');
			For i:=1 to cont do
			If (A[i].Altura > 1.5) and (A[i].Altura < 2) then
			Begin		
				Begin				
					Writeln('----Cadastro ',i,'----');
					Writeln;
					Writeln('Nome: ',A[i].Nome);    
					Writeln('Altura: ',A[i].Altura:0:2);      
					Writeln;Writeln;				
				End;
			End;
			End;//if(n=3)		
		End;//while  
End.
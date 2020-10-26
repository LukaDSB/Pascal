Program Pzim ;
Type
T_Cad = Record
				Nome :String;
				Idade :String;
			End;           
Var
A :Array[1..10] of T_Cad;
i,n,cont :Integer;
Begin
n:=0;
i:=1;
cont:=0;
//Menu principal	
			Writeln('[0] - Sair do programa');
			Writeln('[1] - Cadastrar novo usuário: ');
				Read(n);
			Writeln;Writeln;
				
//Realizar cadastro		
		If(n=1)then
		Repeat
		cont:=cont+1;
				Write('Nome: ');
					Read(A[i].Nome);
				Write('Idade: ');
					Read(A[i].Idade);
				Writeln;
				Writeln('[1] - Cadastrar novo usuário: ');
				Writeln('[2] - Imprimir cadastros: ');
					Read(n);
				Writeln;
		i:=i+1;
		Until(n<>1);
		
//Imprimir cadastros	
		If(n=2)then
		Repeat
			For i:=1 to cont do
			Begin
				Writeln('-----Cadastro ',i,'-----');
				Writeln;
				Writeln('Nome: ',A[i].Nome);
				Writeln('Idade: ',A[i].Idade);
				Writeln;Writeln;
			End;	
			Writeln('Pressione "0" para fechar o programa:');
				Read(n);
		Until(n<>2)
End.
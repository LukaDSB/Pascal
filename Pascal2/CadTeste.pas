Program Pzim ;
Type
T_Cadastro = record
						nome :Array[1..10] of String;
						idade: Array[1..10] of integer;
						sexo :Array[1..10] of String;
						media :Array[1..10] of Real;
					End;
Var
A :T_Cadastro;
B :T_Cadastro;
i,z :Integer;
Begin

//Menu
z:=1;
		While (z<>0) do
		Begin
			Writeln('[0] - Sair do programa: ');
			Writeln('[1] - Cadastrar novo usuário: ');
			Writeln('[2] - Mostrar cadastros: ');
				Read(z);
				
//Cadastrar novo usuário
			If (z=1) then
			Begin
				For i:=1 to 10 do
				Begin
				Writeln;
				Writeln('-----Cadastro ',i,'-----');
				Writeln;Writeln;
				Write('Nome: ');
					Read(A.nome[i]);
				Writeln;
				Write('Sexo: ');
					Read(A.sexo[i]);
				Writeln;
				Write('Idade: ');
					Read(B.idade[i]);
				Writeln;
				Writeln('[0] - Sair do programa: ');
				Writeln('[1] - Cadastrar novo usuário: ');
				Writeln('[2] - Mostrar cadastros: ');
					Read(z);
	
//Calcular média das idades
				B.media[i]:=(B.media[i]+B.idade[i]) / 2;
					
//Imprimir cadastros
					If (z=2) then
						For i:=1 to 10 do
						Begin
							Writeln;
							Write('-----Cadastro ',i,'-----');
							Writeln;
							Write('Nome: ',A.nome[i]);
							Writeln;
							Write('Sexo: ',A.sexo[i]);
							Writeln;
							Write('Idade: ',B.idade[i]);
							Writeln;
						End;
				End;		
			End;
		End; 
End.
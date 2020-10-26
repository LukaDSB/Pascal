Program Pzim ;
Type
T_Cad = Record
				nome :String;
				altura :Real;
			End;
Var
A :Array[1..15] of T_Cad;
i,n,i,cont :Integer;
bus :String;
Begin
n:=1;
cont:=0;
i:=1;
//Procedimento de ordenação
Procedure ordenacao (var j,aux :T_Cad);	
					If (n=2) then
					Begin
						For i:=1 to cont do
							For j:=i+1 to cont do
							Begin
								If (A[i].nome>A[j].nome) then
								Begin
								aux:=A[i];
								A[i]:=A[j];
								A[j]:=aux;
								End;
							End;
							
//Menu principal
			While (n<>0) do
			Begin
				Writeln('[o] - Sair do programa:');
				Writeln('[1] - Cadastrar novo usuário:');
				Writeln('[2] - Imprimir cadastros:');
				Writeln('[3] - Imprimir cadastros por ordem de altura:');
					Read(n);
				clrscr;
					
//Realizar novo cadastro					
				If (n=1) then
				Begin
					Writeln('Nome: ');
						Read(A[i].nome);
					Writeln('Altura: ');
						Read(A[i].altura);
				cont:=cont+1;
				i:=i+1;
				clrscr;
				End;
				
//Imprimir cadastros
				If (n=2) then
				Begin
        	For i:=1 to cont do
        	Begin 
        		Writeln('-----Cadastro ',i,'-----');
        		Writeln;
        		Writeln('Nome: ',A[i].nome);
        		Writeln('Altura: ',A[i].altura:0:2); 
        		Writeln;Writeln;
        	End;
				End;
			End;
  
End.
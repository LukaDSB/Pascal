Program Pzim ;
Type
T_Endereco = record
						UF :String;
						cidade :String;
						bairro :String;
						rua :String;
					End;
T_Cadastro = record
						nome :String;
						ender :T_Endereco;
						telefone :String;
					End;
var
Cad :Array[1..10] of T_Cadastro;
i,n,cont:Integer;
Bus:String;
aux :T_Cadastro;
arq :file of T_Cadastro;

Procedure CADASTRO(var i:Integer);
					Begin               
					Writeln('-----Cadastro ',i,'-----');
						Writeln('Nome: ');
							Read(Cad[i].nome);                             
						Writeln;
						Writeln('UF: ');
							Read(Cad[i].ender.UF);
						Writeln;
						Writeln('Cidade: ');
							Read(Cad[i].ender.cidade);
						Writeln                 ;
						Writeln('Bairro: ');
							Read(Cad[i].ender.bairro);
						Writeln;
						Writeln('Rua: ');
							Read(Cad[i].ender.rua);
						Writeln;
						Writeln('Telefone: ');
							Read(Cad[i].telefone);
					i:=i+1;
					cont:=cont+1;
						clrscr;
					End;

Procedure EXIBIR (var i:integer);
var
j :Integer;
		Begin
						for i:= 1 to cont do
	    				for j:= i+1 to cont do
	    				if (Cad[i].nome > Cad[j].nome) then  			
	    				begin
	    					aux:= Cad[i];
	    					Cad[i]:= Cad[j];
	    					Cad[j]:= aux;
	    				end;	
						For i:=1 to cont do
						Begin
						Writeln;
						Writeln('-----Cadastro ',i,' -----');
						Writeln;
							Write('Nome: ',Cad[i].nome);
							Writeln;
							Write('UF: ',Cad[i].ender.UF);
							Writeln;
							Write('Cidade: ',Cad[i].ender.cidade);
							Writeln;
							Write('Bairro: ',Cad[i].ender.bairro);
							Writeln;
							Write('Rua: ',Cad[i].ender.rua);    
							Writeln;
							Write('Telefone: ',Cad[i].telefone);
							Writeln;
							Writeln; 
						End;
		End;
		
Procedure BUSCAR (var i:Integer);
		Begin
				Writeln;
				Writeln('----Realizar busca ----');
				Writeln('Buscar nome:');
					Read(Bus);
				Clrscr;
					For i:=1 to cont do
				  Begin                        
						If (Cad[i].nome=Bus) then 
						Writeln('Nome encontrado no cadastro: ',i);
						Writeln;Writeln; 
					End;
		End;
	
Begin
i:=1;
n :=1;
cont:=0;
//Menu principal
	while (n<>0) do
		Begin
				Writeln('[0] - Sair do programa: ');
				Writeln('[1] - Realizar cadastro: ');
				Writeln('[2] - Exibir cadastros: ');
				Writeln('[3] - Buscar cadastros: ');   
					read(n);  
				Clrscr;							     	
					If(n=1) then
					CADASTRO(i);	 			
	    		If(n=2)then
	    		EXIBIR(i);				
					If(n=3)then
					BUSCAR(i);			
	End; //while
End.                                 
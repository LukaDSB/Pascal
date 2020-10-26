
Program Pzim ;
uses crt;
   type
   	pessoa=record
   	 nome: string;
   	 n1,n2,n3, media: real;
   	end;
   	
  VET = array[1..10] of pessoa;
                    
  procedure CADASTRAR(var Z:VET; var i: integer);
  begin
  i:=1;
  writeln('Digite o nome');
  readln(Z[i].nome);
  writeln('Digite a n1');
  readln(Z[i].n1);
  writeln('Digite a n2');
  readln(Z[i].n2);
  writeln('Digite a n3');
  readln(Z[i].n3);
  i:=i+1;
  end;
  
  procedure PESQ(var Z:VET; var i: integer);
  var
  	nome: string;
  begin
  writeln('Digite o nome que deseja pesquisar:');
  readln(nome);
  clrscr;
   
  	for i:= 1 to 10 do
  	if (nome = Z[i].nome) then
  		begin
  	 	Z[i].media:= (Z[i].n1+Z[i].n2+Z[i].n3) / 3;
  		 writeln('Nome: ',Z[i].nome);
  		 writeln('Media: ',Z[i].media);
  		 if (Z[i].media >= 5) then
  		  writeln('Aprovado!')
  		  else
  		  writeln('Reprovado');
  		  readln;
  		end; 
  end;
  
  procedure EXIBIR(var Z:VET; i: integer);
  var
  	j: integer;
 	begin
			clrscr;
			j:=i;
			i:=1;
			Z[i].media:= (Z[i].n1+Z[i].n2+Z[i].n3) / 3;
				for i:= i to j-1 do
					if Z[i].media >= 5 then
						writeln('Nome: ',Z[i].nome,' Media: ',Z[i].media:0:2, ' APROVADO!')
						else
						writeln('Nome: ',Z[i].nome,' Media: ',Z[i].media:0:2, ' REPROVADO!');
						readln;
					
			end;
			
			procedure GRAVAR(var Z:VET; j:integer);
			var
				arq: text;
				i: integer;
			begin
			i:=1;

			 assign(arq, 'Contatos.txt');
			 rewrite(arq);
			  Z[i].media:= (Z[i].n1+Z[i].n2+Z[i].n3) / 3;
			 	for i:= 1 to j-1 do
			 		begin
			 		writeln(arq, 'Nome: ',Z[i].nome);
			 		writeln(arq, 'Media: ',Z[i].media:0:2);
			 		writeln(arq,'-----------------------------');
			 		end;
			 	close(arq);
			end;                       
		 

var
	op,i: integer;
	Z:VET;
Begin
i:=1;
	repeat
	clrscr;
	writeln('[1] -- CADASTRAR ALUNO --');
	writeln('[2] -- PESQUISAR ALUNO --');
	writeln('[3] -- EXIBIR TODOS REGISTROS --');
	writeln('[4] -- GRAVAR REGISTROS --');
	writeln('[0] -- SAIR --');
	readln(op);
	
	if op=1 then
	CADASTRAR(Z,i);
	clrscr;
	
	if op=2 then
	PESQ(Z,i);
	
	if op=3 then
	EXIBIR(Z,i);
	
	if op=4 then
	GRAVAR(Z,i);
	
  until op=0;
End.
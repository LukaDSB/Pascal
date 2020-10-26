Program Pzim ;
Type
t_endereco = record
					rua :string;
					numero :String;
				end;
pessoa = record
					nome :String;
					endereco :t_endereco;
				end;
var
agenda :Array[1..10] of pessoa;
i:integer;

	Procedure CADASTRAR(var i:integer);
	Begin
		Writeln('Nome: ');
			Read(agenda[i].nome);
		Writeln('rua: ');
			Read(agenda[i].endereco.rua);
		Writeln('Numero da casa: ');
			Read(agenda[i].endereco.numero);
		i:=i+1;
	End;
	
	Procedure EXIBIR(var i :integer);
	var
	j :Integer;
	Begin
	j:=1;
	i:=1;
		For i:= i to j-1 do
		Begin
			Writeln('nome: ',agenda[i].nome);
			Writeln('Rua: ',agenda[i].endereco.rua);
			Writeln('Numero: ',agenda[i].endereco.numero);
		End;
	End;
	
	Procedure BUSCA(var i :Integer);
	var
		nome :String;          
		j :Integer;
	Begin
		Writeln('Digite o nome que deseja buscar: ');
			Read(nome);
		for i:=i to j-1 do
		if (nome = agenda[i].nome) then
		Writeln('Nome: ',agenda[i].nome);
		Writeln('Rua: ',agenda[i].endereco.rua);
		Writeln('Numero: ',agenda[i].endereco.numero);
	End;
	
Var
op :Integer;
Begin
i:=1;
	
	Repeat
		Writeln('[0] - Sair do programa -');
		Writeln('[1] - Cadastrar contato -');
		Writeln('[2] - Exibir contatos -');
		Writeln('[3] - Buscar contato -');
			Read(op);
			
		If op=1 then
		CADASTRAR(i);
		
		If op=2 then
		EXIBIR(i);
		
		If op=3 then
		BUSCA(i);
	Until(op=0)
End.
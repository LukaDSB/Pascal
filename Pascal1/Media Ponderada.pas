Program MediaPonderada;
Var
A,B,C,P1,P2,P3,M:real;

Begin
P1:= 2;
p2:= 3;
p3:= 5;
		Writeln('Receber valor A:');
			read(A);
		Writeln('Receber valor B:');
			read(B);
		Writeln('Receber valor C:');
			read(C);
		
M:= (A*P1+B*P2+C*P3)/(P1+P2+P3);

	Writeln('A média ponderada das notas é:',M);
End.
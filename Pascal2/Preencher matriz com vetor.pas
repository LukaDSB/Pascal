Program Pzim ;
var
A,B,C :Array[1..3] of integer;
Mat :Array[1..3,1..3] of integer;
i,j :Integer;
Begin
	For j:=1 to 3 do
	Begin
		Writeln('Vetor A - coluna ',j);
			Read(A[j]);	
	End;
	
	For j:=1 to 3 do
	Begin
		Writeln('Vetor B - coluna ',j);
			Read(B[j]);	
	End;
	
	For j:=1 to 3 do
	Begin
		Writeln('Vetor C - coluna ',j);
			Read(C[j]);	
	End;
	
	For i:=1 to 3 do
	Begin
		For j:=1 to 3 do
		Begin
			If (i=1)then
			Begin
			Mat[i,j]:=A[j];
			Write(Mat[i,j]:4);
			End;

			If(i=2)then
			Begin
			Mat[i,j]:=B[j];
			Write(Mat[i,j]:4); 
			End;
			
			If(i=3)then       
			Begin
			Mat[i,j]:=C[j];
			Write(Mat[i,j]:4); 
			End;
		End;
	Writeln;Writeln;
	End;
End.
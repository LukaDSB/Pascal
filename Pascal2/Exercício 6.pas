Program Ex6 ;
var
DD,MM,AAAA : integer;
jan,fev,mar,abr,mai,jun,jul,ago,setem,out,nov,dez : string; 
Begin
   writeln('Informe a data no formato DD/MM/AAAA:');
   	read(DD,MM,AAAA);
		   	
	If MM = 01 then
   	writeln('A data informada foi: ',DD,' de Janeiro de ',AAAA);
	If MM = 02 then
   	writeln('A data informada foi: ',DD,' de Fevereiro de ',AAAA);
	If MM = 03 then
   	writeln('A data informada foi: ',DD,' de Março de ',AAAA);
	If MM = 04 then
   	writeln('A data informada foi: ',DD,' de Abril de ',AAAA);
	If MM = 05 then
   	writeln('A data informada foi: ',DD,' de Mail de ',AAAA); 	
	If MM = 06 then
   	writeln('A data informada foi: ',DD,' de Junho de ',AAAA);
	If MM = 07 then
   	writeln('A data informada foi: ',DD,' de Julho de ',AAAA);   	
	If MM = 08 then
   	writeln('A data informada foi: ',DD,' de Agosto de ',AAAA);   	
	If MM = 09 then
   	writeln('A data informada foi: ',DD,' de Setembro de ',AAAA);   	
	If MM = 10 then
   	writeln('A data informada foi: ',DD,' de Outubro de ',AAAA);   	
	If MM = 11 then
   	writeln('A data informada foi: ',DD,' de Novembro de ',AAAA);   	
	If MM = 12 then
   	writeln('A data informada foi: ',DD,' de Dezembro de ',AAAA);
End.
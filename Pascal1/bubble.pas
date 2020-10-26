program Bubble;
uses crt;
 
var
   v: array [1..10] of integer;
   I: integer;
 
// Procedimento para ordenação utilizando o método bolha
procedure bubble_sort();
var
   I, J, troca: integer;
begin
     for I := 1 to 10 do                                                 
     begin                                                           
          for J := I+1 to 10 do                                      
          begin                                                        
               if v[J] < v[I] then                                  
               begin
                    troca := v[I];
                    v[I] := v[J];
                    v[J] := troca;
               end;
          end;
     end;
end;
 
begin
     // Lê 10 valores
     for I := 1 to 10 do
     begin
          write('Digite um valor: ');
          read(v[I]);                                               
     end;
 
     // Ordenação
     bubble_sort();
 
     // Impressão dos valores.
     writeln('');
     writeln('* Resultado *');
     for I := 1 to 10 do
     begin
          writeln('Valor ', I, ': ', v[I]);
     end;
     readkey;
end.
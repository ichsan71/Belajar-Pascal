program Belajar_loop;
uses crt;

var
   N,i,j:integer;

begin
     write('N : ');readln(N);

     for i:=1 to N do
         begin
              for j:=2 to i do
                  begin
                       write('*');
                  end;
              writeln('*');
         end;
     readln;
end.

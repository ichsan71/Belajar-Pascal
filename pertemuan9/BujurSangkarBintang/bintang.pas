program Bujur_Sangkar_bintang;
uses crt;

var
   N,i,j:integer;

begin
     write('N : ');readln(N);
     for i:=1 to N do
         begin
              for j:=2 to N do
                  begin
                       write('*');
                  end;
              writeln('*');
         end;
     readln;
end.

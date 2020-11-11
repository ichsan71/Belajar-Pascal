program Faktorial;
uses crt;

var
   N,i,total:integer;

begin
     write('Masukan N : ');readln(N);
     total:=1;

     for i:=1 to N do
         begin
              total:=total*i;
         end;
     writeln('-----------------------------------');
     writeln(N,'! :',total);

     readln;
end.

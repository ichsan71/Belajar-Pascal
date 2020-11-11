program For_To_Do;

var
   i,total,N:integer;

begin
     write('Masukan N :');readln(N);
     total:=0;
     for i:=1 to N do
         total:=total+i;
     writeln('1+....+',N,' = ',total);
     readln;
end.
Rumus deret N(N+1)/2

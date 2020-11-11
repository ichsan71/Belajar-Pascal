program Segitiga_Bintang;
uses crt;

var
   y,i,N,j,k: integer;


begin
     //write('N : ');readln(N);

     for i:=1 to 5 do
         begin
              j:=i*2;
              k:=1;

              for y:=1 to 5-i do
                  begin
                       write(' ');
                  end;
              while(k < j) do
                      begin
                           write('*');
                           k:=k+1;
                      end;
              writeln();
         end;
     i:=4;
     while i>=1 do
         begin
              j:=i*2;
              k:=1;

              for y:=1 to 5-i do
                  begin
                       write(' ');
                  end;
              while(k < j) do
                      begin
                           write('*');
                           k:=k+1;
                      end;
              writeln();
              i:=i-1;
         end;

     readln;
end.
----*
---***
--*****
-*******
*********
-*******
--*****
---***
----*





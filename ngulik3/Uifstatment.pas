program If_statemento;
uses crt;

var
   num1: integer;
   num2: integer;
   jumlah1,jumlah2:integer;

begin

     if 5>3 then
     begin
          writeln('5 Greater then 3');
     end;
     writeln;
     writeln;

     write('Enter the first integer:  '); readln(num1);
     write('Enter the second integer: '); readln(num2);
     jumlah1:=num1+num2;

     write('Enter the first  integer : '); readln(num1);
     write('Enter the second integer : '); readln(num2);
     jumlah2:=num1+num2;

     if jumlah1 > jumlah2 then
        begin
          writeln('The first sum integer is Greater');
        end
     else if jumlah1 < jumlah2 then
          begin
          writeln('The second sum integer is Greater');
          end
     else
         begin
         writeln('The sum integer are the same');
         end;


     readln;
end.


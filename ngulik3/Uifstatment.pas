program If_statemento;
uses crt;

var
   num1: integer;
   num2: integer;

begin

     if 5>3 then
     begin
          writeln('5 Greater then 3');
     end;
     writeln;
     writeln;

     write('Enter the first integer:  '); readln(num1);
     write('Enter the second integer: '); readln(num2);

     if num1 > num2 then
        begin
          writeln('The first integer is Greater');
        end
     else if num1 < num2 then
          begin
          writeln('The second integer is Greater');
          end
     else
         begin
         writeln('The integer are the same');
         end;
     readln;
end.


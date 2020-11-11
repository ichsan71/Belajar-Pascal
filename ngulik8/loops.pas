program Belajar_loop;
uses crt;

var
   x,y:integer;

begin
     x:=1;

     while x <= 10 do
     begin
           y := 0;
           while y < x do
                 begin
                 write('*');
                 y := y+1;
                 end;
           writeln();
           x := x+1;
     end;



     readln;
end.

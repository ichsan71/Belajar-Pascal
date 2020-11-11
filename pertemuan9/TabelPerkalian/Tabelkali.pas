program Perkalian;
uses crt;

var
   i,j,k,hasil,x,y:integer;

begin

     for i:=1 to 10 do
         begin

              for j:=1 to 10 do
                  begin
                       hasil:=i*j;

                       if i<=5 then
                          begin
                               x:=i*14-13;
                               y:=j;
                          end
                       else
                           begin
                                x:=(i-5)*14-13;
                                y:=j+12;
                           end;
                       gotoxy(x,y);
                       write(i:2,' x ',j:2,' = ',hasil:3);
                       delay(100);
                  end;
         end;


     readln;
end.




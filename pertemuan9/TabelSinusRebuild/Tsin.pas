program Untitled;
uses crt;

var
   nilaiSinus,nilaiSinus2:real;
   i,a,y,b,c,j,x:integer;
   tombol:char;

begin
     i:=0;
     x:=11;
     y:=3;
     b:=12;
     for a:=0 to 9 do
         begin
              gotoXY(b,2);
              writeln('.',a);
              b:=b+8;
              for c:=1 to 90 do
                  begin
                       gotoXY(c,3);
                       writeln('-'); //delay(1);
                       gotoXY(c,24);
                       writeln('-');
                  end;
         end;
     repeat
           gotoXY(40,1);
           writeln('Tabel Sinus');
           gotoXY(1,2);
           writeln('Derajat');

           nilaiSinus:=sin(i*PI/180);
           y:=y+1;
           gotoXY(1,y);
           writeln(i:5);

           gotoXY(x,y);
           writeln(nilaiSinus:3:3); //delay(1000);
           for j:=1 to 9 do
               begin
                    nilaiSinus2:=sin(((j*0.1)+i)*PI/180);
                    x:=x+8;
                    gotoXY(x,y);
                    writeln(nilaiSinus2:3:3); //delay(100);
                    if j=9 then
                       begin
                            gotoXY(x,y);
                            writeln(nilaiSinus2:3:3); //delay(100);
                            x:=11;
                       end;
               end;

           if i mod 20=19 then
              begin
                   gotoXY(1,25);
                   writeln('Tekan ENTER untuk melanjutkan,tekan Escape untuk Keluar');
                   tombol:=readkey;
                   y:=3;

              end;
           i:=i+1;

     until (tombol=#27) or (i>359);


end.


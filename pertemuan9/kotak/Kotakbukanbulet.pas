program Kotak;
uses crt;

var
   x1,x2,y1,y2,i:integer;


begin
     writeln('Pengisian Koordinat Kotak');
     writeln('---------------------------');
     write('Posisi Kiri  (X1) 1-80 : ');readln(x1);
     write('Posisi Atas  (Y1) 1-25 : ');readln(y1);
     write('Posisi Kanan (X2) 1-80 : ');readln(x2);
     write('Posisi Bawah (Y2) 1-25 : ');readln(y2);
     clrscr;


     for i:=x1 to x2 do
         begin
              gotoxy(i,y1);
              writeln('-');
              gotoxy(i,y2);
              writeln('-');
              delay(10);
         end;

     for i:=y1 to y2 do
         begin
              gotoxy(x1,i);
              writeln('|');
              gotoxy(x2,i);
              writeln('|');
              delay(10);
         end;
     gotoXY(x1,y1);
     write('+');
     gotoXY(x2,y1);
     write('+');
     gotoXY(x1,y2);
     write('+');
     gotoXY(x2,y2);
     write('+');

     readln;
end.

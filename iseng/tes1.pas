program Untitled;
uses crt;

procedure kotak(x1,y1,x2,y2,latar:byte);
var
   i:integer;


begin
     {writeln('Pengisian Koordinat Kotak');
     writeln('---------------------------');
     write('Posisi Kiri  (X1) 1-80 : ');readln(x1);
     write('Posisi Atas  (Y1) 1-25 : ');readln(y1);
     write('Posisi Kanan (X2) 1-80 : ');readln(x2);
     write('Posisi Bawah (Y2) 1-25 : ');readln(y2);
     clrscr;}

     x1:=5;
     x2:=60;
     y1:=5;
     y2:=15;
     textbackground(latar);
     window(x1,y1,x2,y2);
     clrscr;
     window(1,1,80,25);
     for i:=x1+1 to x2-1 do
         begin
              gotoxy(i,y1);
              writeln('-');
              gotoxy(i,y2);
              writeln('-');
              delay(10);
         end;

     for i:=y1+1 to y2-1 do
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
end;

var
   num:real;

begin
     kotak(1,3,60,25,blue);

     readln;

end.

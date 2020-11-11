program Kotak;
uses crt;

var
   x1,x2,y1,y2,i,j,k:integer;

begin
     writeln('Pengisian Koordinat Kotak');
     writeln('---------------------------');
     write('Posisi Kiri  (X1) : ');readln(x1);
     write('Posisi Atas  (Y1) : ');readln(y1);
     write('Posisi Kanan (X2) : ');readln(x2);
     write('Posisi Bawah (Y1) : ');readln(y2);
     clrscr;

     gotoxy(x1,y1);
     for i:=1 to x2 do
         begin
              write('-');
         end;



     readln;
end.

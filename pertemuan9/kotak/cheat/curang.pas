program kotak;
uses crt;
var
i,kode,x,y: integer;
s: string[20];

{***GAMBAR KOTAK***}
procedure GambarKotak(x1,y1,x2,y2,fg,bg:integer);

var
   i:byte;

   begin
   textcolor(fg);
   textbackground(bg);

   for i:=(x1+1)to (x2-1) do
   begin
        gotoXY(i,y1);
        write('-');
        gotoXY(i,y2);
        write('-');
   end;

   for i:=(y1+1) to (y2-1) do
   begin
        gotoXY(x1,i);
        write('|');
        gotoXY(x2,i);
        write('|');
   end;
   gotoXY(x1,y1);
   write(#201);
   gotoXY(x2,y1);
   write(#187);
   gotoXY(x1,y2);
   write(#200);
   gotoXY(x2,y2);
   write(#188);
   end;

{***PROGRAM UTAMA***}
begin
     clrscr;
     textmode(c40);
     gambarkotak(5,5,5,5,green,yellow);
     write('tekan sembarang tombol…');
     readln;
end.

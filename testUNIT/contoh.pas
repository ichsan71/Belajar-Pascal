unit contoh;

interface
uses crt;
procedure kotakBerjudul(x1,y1,x2,y2,latar,tulisan:byte; judul:string);

implementation
procedure kotakBerjudul(x1,y1,x2,y2,latar,tulisan:byte; judul:string);
var
   i:byte;
   lebar,panjangJudul,sisa,posisiJudul:integer;
begin
     textbackground(latar);
     textcolor(tulisan);
     window(x1,y1,x2,y2);// seting windows aktif
     clrscr;// clear screen sesuai ukuran windows
     window(1,1,80,25);// kembalikan ke windows biasa
     gotoxy(x1,y1);write(#218);
     for i:=x1+1 to x2-1 do
     begin
          gotoxy(i,y1);write(#196);
     end;
     gotoxy(x2,y1);write(#191);
     for i:=y1+1 to y2-1 do
     begin
          gotoxy(x2,i);write(#179);
     end;
     gotoxy(x2,y2);write(#217);
     for i:=x2-1 downto x1+1  do
     begin
          gotoxy(i,y2);write(#196);
     end;
     gotoxy(x1,y2);write(#192);
     for i:=y2-1 downto y1+1  do
     begin
          gotoxy(x1,i);write(#179);
     end;

     lebar:=x2-x1;
     panjangJudul:=length(judul);
     sisa:=lebar-panjangJudul;
     posisijudul:=x1+sisa div 2;
     gotoXY(posisijudul,y1);
     write(judul);
end; // end of procedure
end.



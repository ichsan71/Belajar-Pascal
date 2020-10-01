program MenghitungPersegiPanjang;
uses crt;
var
   x,y:integer;
begin
     clrscr;
     textcolor(blue);
     textbackground(white);

     gotoxy(40,3);
     writeln('Menghitung luas persegi panjang');
     gotoxy(32,4);
     writeln('rumus persegi panjang adalah (Panjang x Lebar)');

     textcolor(green);
     textbackground(0);
     write('panjang :    '); readln(x);
     write('lebar :      '); readln(y);

     if(x>=0) then writeln('luas persegi panjang =  ',x*y)
     else if(x<=0) then writeln('panjang tidak boleh kurang dari 0');
     readln;

end.

program Untitled;
uses crt;
var
     x,y,p:integer;
begin
     clrscr;
     x:=10;
     y:=11;
     p:=x*y;


     textbackground(yellow);
     textcolor(red);
     writeln('Menghitung Persegi Panjang');

     textbackground(green);
     textcolor(black);
     write('Bil pertama  :  '); readln(x);
     write('Bil pertama  :  '); readln(y);

     write('hasil        :  ',p);
     readln;
end.

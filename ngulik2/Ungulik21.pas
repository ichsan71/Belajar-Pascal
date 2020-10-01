program Gamatif20;
uses crt;
var
   x,y:integer;


begin
     clrscr;
     textbackground(white);
     textcolor(blue);
     write('Masukan kode Jargon  : '); readln(y);

     gotoxy(40,10);
     textcolor(red);
     if(y=1) then write('Gamatif 20,Be The Number One!!!');
     readln;
end.

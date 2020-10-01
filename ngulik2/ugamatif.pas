program Gamatif20;
uses crt;
var
   x=integer;
begin
     clrscr;
     textbackground(white);
     textcolor(blue);
     write('Masukan kode Jargon :');readln(x);

     gotoxy(40,10);
     textbackground(white);
     textcolor(red);
     if (x=1) then write('Gamatif20, Be The Number one!');
     readln;
end.

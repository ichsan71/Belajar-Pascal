program Untitled;
uses contoh,crt;

var
   day,month,year:integer;
begin
     kotakBerjudul(20,5,60,20,red,black,'Hitung Hari');
     gotoxy(21,6);
     writeln('Masukan Hari  : ');readln(day);
     gotoxy(21,7);
     writeln('Masukan Bulan : ');readln(month);
     gotoxy(21,8);
     writeln('Masukan Tahun : ');readln(year);

     readln;
end.

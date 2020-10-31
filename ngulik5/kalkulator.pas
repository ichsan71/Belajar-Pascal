program Kalkulator;
uses crt;

var
   bil1,bil2:integer;
   jmlh,kurang,kali,bagi:real;


begin
     clrscr;

     write('Masukan Bilangan pertama :'); readln(bil1);
     write('Masukan Bilangan kedua   :'); readln(bil2);
     writeln('----------------------------------------');
     writeln('Hasilnya adalah');
     writeln('----------------------------------------');

     jmlh:=bil1+bil2;
     kurang:=bil1-bil2;
     kali:=bil1*bil2;



     writeln(bil1,' + ',bil2,' = ', jmlh:0:0);
     writeln(bil1,' - ',bil2,' = ', kurang:0:0);
     writeln(bil1,' * ',bil2,' = ', kali:0:0);

     if bil2 = 0 then
        writeln(bil1,' / ',bil2, ' = ', 'harom!')
     else
        begin
        bagi:=bil1/bil2;
        writeln(bil1,' / ',bil2, ' = ', bagi:0:0);
        end;

     readln;


end.

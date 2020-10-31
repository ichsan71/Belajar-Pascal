program Ngoding_bareng;
uses crt;

var
   bil1,bil2:integer;
   jmlh,kurang,kali:real;

begin
     //input
     write('Masukan Bilangan 1 : ');readln(bil1);
     write('Masukan Bilangan 2 : ');readln(bil2);
     writeln('------------------------------------');
     writeln('Hasil Perhitungan');
     writeln('------------------------------------');

     jmlh:=bil1+bil2;
     kurang:=bil1-bil2;
     kali:=bil1*bil2;

     //process
     writeln(bil1,' + ',bil2,' = ',jmlh:0:2);
     writeln(bil1,' - ',bil2,' = ',kurang:0:2);
     writeln(bil1,' * ',bil2,' = ',kali:0:2);






     readln;
end.

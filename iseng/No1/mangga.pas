program UTS_no1;
uses crt;

var
   mangga,orang,HbagiMangga,sisa:integer;

begin
     write('Banyaknya Jumlah Mangga  : ');readln(mangga);
     write('Banyaknya orang          : ');readln(orang);
     writeln('=========================================');
     writeln('Hasil Pembagian mangga perorangnya');
     writeln('-----------------------------------------');

     HbagiMangga:=mangga div orang;
     writeln('Tiap Orang mendapatkan    = ',HbagiMangga);
     sisa:=mangga mod orang;
     writeln('Sisa dari mangga tersebut = ',sisa);

     readln;
end.

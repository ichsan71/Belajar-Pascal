program Menghitung_saldo;
uses crt;

var
    sAwal,waktuT,bunga:integer;
    S,sNN,Nbunga,sAkhir,sn:real;

begin
   clrscr;
   write('Masukan Saldo                      : ');readln(sAwal);
   write('Masukan besar Bunga dalam bentuk % : ');readln(bunga);
   write('Masukan Jangaka Waktu tabungan     : ');readln(waktuT);

   Nbunga:=bunga / 100;
   sAkhir:=sAwal*Nbunga*waktuT+sAwal;
   writeln('Saldo akhir anda pada bulan pertama  : ', sAkhir:0:0);

   sn:=1+Nbunga;
   S:=sAwal*power(sn,120*0.1);


   writeln('Saldo akhir anda pada bulan Terakhir : ', S:0:0);
   readln;

end.


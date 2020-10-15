program Menghitung_saldo;
uses crt;

var
    S,sAwal,waktuT,bunga:integer;
    sNN,Nbunga,sAkhir,sn:real;

begin
   clrscr;
   write('Masukan Saldo                      : ');readln(sAwal);
   write('Masukan besar Bunga dalam bentuk % : ');readln(bunga);
   write('Masukan Jangaka Waktu tabungan     : ');readln(waktuT);

   Nbunga:=bunga / 100;
   sAkhir:=sAwal*Nbunga*waktuT+sAwal;
   writeln('Saldo akhir anda pada bulan pertama  : ', sAkhir:0:0);


   //S:=power(Nbunga,12);
   sn:=1+Nbunga;
   sNN:=sAwal*sn*sn*sn*sn*sn*sn*sn*sn*sn*sn*sn*sn;
   writeln('Saldo akhir anda pada bulan Terakhir : ', sNN:0:0);
   readln;

end.


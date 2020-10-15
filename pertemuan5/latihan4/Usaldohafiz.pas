program punya_hafiz;
uses crt;

var
    sAwal,waktuT,bunga:integer;
    sNN,Nbunga,sAkhir,S,sN:real;

begin
   clrscr;
   write('Masukan Saldo                      : ');readln(sAwal);
   write('Masukan besar Bunga dalam bentuk % : ');readln(bunga);
   write('Masukan Jangaka Waktu tabungan     : ');readln(waktuT);

   s:=(1+bunga)
   Nbunga:=power(1+s)/100;
   sN:=sAwal*Nbunga



end.


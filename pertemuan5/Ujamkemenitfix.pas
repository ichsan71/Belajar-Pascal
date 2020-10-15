program Konversi_Waktu;
uses crt;

const
     SATU_JAM=60;
var
   hasil,menit,hasilBagi:integer;
   waktu:real;


begin
     clrscr;

     write('Masukan satuan menit : '); readln(menit);

     hasil:=menit div SATU_JAM;
     hasilBagi:=menit mod SATU_JAM;
     waktu:=menit / SATU_JAM;
     writeln(menit,' menit adalah : ',hasil,' jam ',hasilBagi, ' menit',
                     'setara ',waktu:0:2,' jam');
     readln;

end.



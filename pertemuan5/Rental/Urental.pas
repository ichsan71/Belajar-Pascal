program menhitung_rental;
uses crt;

const
     MENIT_KE_JAM=60;

var
    jamM,menitM:integer;
    jamK,menitK,konversiJamJ,konversiJamM:integer;
    totalmenit,konversiMenitM,konversiMenitK,selisihMK:integer;
    harga,pembulatanHarga:real;


begin
     clrscr;

     write('Masukan Jam   Masuk   : '); readln(jamM);
     write('Masukan Menit Masuk   : '); readln(menitM);
     write('Masukan Jam   Keluar  : '); readln(jamK);
     write('Masukan menit Keluar  : '); readln(menitK);

     konversiMenitM:=jamM*MENIT_KE_JAM+menitM;
     konversiMenitK:=jamK*MENIT_KE_JAM+menitK;
     selisihMK:=konversiMenitK-konversiMenitM;
     konversiJamJ:=selisihMK div MENIT_KE_JAM;
     konversiJamM:=selisihMK mod MENIT_KE_JAM;

     harga:=selisihMK / MENIT_KE_JAM * 5000;
     pembulatanHarga:=round(harga/10000);

     writeln('Total waktu : ',selisihMK,' menit',' Atau sama dengan ', konversiJamJ,':',konversiJamM,' Jam');
     writeln('Total Harga : Rp.',pembulatanHarga:0:3);
     readln;
end.

program Konversi_Waktu;
uses crt;

const
     SATU_JAM=60;
var
   jam,menit,hasil:integer;

begin
     clrscr;

     write('Masukan satuan Jam   : '); readln(jam);
     write('Masukan satuan menit : '); readln(menit);

     hasil:=jam*SATU_JAM+menit;
     writeln('Banyak menit nya adalah : ',hasil);
     readln;

end.

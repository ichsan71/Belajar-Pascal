program Jam_ke_menit;
uses crt;

const
     SATU_JAM=60;
var
   jam,menit,hasil:integer;

begin
     clrscr;
     write('Masukan satuan menit : '); readln(menit);

     hasil:=menit div 60;
     writeln('Banyak menit nya adalah : ',hasil);
     readln;

end.

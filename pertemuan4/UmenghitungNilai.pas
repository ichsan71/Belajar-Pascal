program menghitung_nilai_akhir;
uses crt;

var
   nTugas,nUTS,nUAS:integer;
   nAkhir:real;

begin
     write('Masukan nilai Tugas anda : '); readln(nTugas);
     write('Masukan nilai UTS   anda : '); readln(nUTS);
     write('Masukan nilai UAS   anda : '); readln(nUAS);

     nAkhir:=(0.20*nTugas+0.30*nUTS+0.50*nUAS);
     writeln('Nilai akhir kalu adalah : ',nAkhir:0:2);
     readln;
end.


program UTS_no2;
uses crt;

var
    judul,penerbit,harga:integer;

begin
     writeln('JUDUL BUKU');
     writeln('----------------');
     writeln('001 ==> buku matematika');
     writeln('002 ==> buku Bahasa Indonesia');
     writeln('003 ==> buku IPA');
     writeln('004 ==> buku IPS');
     writeln('=================================');
     writeln('PENERBIT');
     writeln('----------------');
     writeln('101 ==> erlangga');
     writeln('102 ==> yudhistira');
     writeln('=================================');

     write('Masukan kode judul buku yang ingin dibeli : ');readln(judul);
     write('Masukan kode penerbit yang ingin dibeli : ');readln(penerbit);
     writeln('============================================================');

     if (judul=001) and (penerbit=101) then
        begin
             harga:=150000;
             writeln('harga ',harga);
        end
     else if (judul=001) and (penerbit=102) then
        begin
             harga:=100000;
             writeln('harga ',harga);
        end
     else if (judul=002) and (penerbit=101) then
        begin
             harga:=130000;
             writeln('harga ',harga);
        end
     else if (judul=002) and (penerbit=102) then
        begin
             harga:=95000;
             writeln('harga ',harga);
        end
     else if (judul=003) and (penerbit=101) then
        begin
             harga:=135000;
             writeln('harga ',harga);
        end
     else if (judul=003) and (penerbit=102) then
        begin
             harga:=98000;
             writeln('harga ',harga);
        end
     else if (judul=004) and (penerbit=101) then
        begin
             harga:=125000;
             writeln('harga ',harga);
        end
     else if (judul=004) and (penerbit=101) then
        begin
             harga:=92000;
             writeln('harga ',harga);
        end
     else
         writeln('Maaf anda memasukan Kode yang salah!');

     readln;
end.

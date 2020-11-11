program Biaya_sewa_kendaraan;
uses crt;

var
   sewa,tipe:char;
   harga:integer;

begin
     writeln('====== BIAYA SEWA KENDARAAN ======');
     writeln;
     write('Sewa kendaraan (A)==> Mobil,(B)==> Motor : ');readln(sewa);
     write('Tipe kendaraan (A)==> Mewah,(B)==> Biasa : ');readln(tipe);
     writeln('==============================');

     sewa:=upcase(sewa);
     tipe:=upcase(tipe);

     if sewa='A' then
        if tipe='A' then
           harga:=300000
        else
            harga:=100000
     else if sewa='B' then
             if tipe='A' then
                harga:=150000
             else
                 harga:=50000
     else
         writeln('Anda Memasukan Pilihan Yang Salah!');

     writeln('Biaya Sewa : ',harga);
     readln;
end.

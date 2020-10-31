program Hitung_tiket_pt2;
uses crt;

var
   tujuan,kelas:string;
   Btiket,Htiket:integer;
   diskon,Hdiskon:real;

begin
     clrscr;
     writeln('Tujuan:');
     writeln('1. Jakarta');
     writeln('2. Yogyakarta');
     writeln('3. Surabaya');
     writeln('----------------------');

     write('Masukan Pilihan [1,2,3] : ');readln(tujuan);

     writeln('Kelas:');
     writeln('1. Ekonomi');
     writeln('2. Bisnis');
     writeln('3. Eksekutif');
     writeln('----------------------');

     write('Masukan Pilihan [1,2,3] : ');readln(kelas);
     write('banyak tiket            : ');readln(Btiket);
     writeln('----------------------');
     writeln('Hasil Perhitungan');
     writeln('----------------------');


     if tujuan='1' then
        begin
             tujuan:='Jakarta';

            if kelas='1' then
                 begin
                    kelas:='Ekonomi';
                    Htiket:=100000;
                 end
            else if kelas='2' then
                 begin
                      kelas:='Bisnis';
                      Htiket:=400000;
                 end
            else if kelas='3' then
                 begin
                      kelas:='Eksekutif';
                      Htiket:=700000;
                 end
            else
                 writeln('Anda salah memasukan Kelas!');
        end

     else if tujuan='2' then
        begin
             tujuan:='Yogyakarta';

            if kelas='1' then
                 begin
                    kelas:='Ekonomi';
                    Htiket:=200000;
                 end
            else if kelas='2' then
                 begin
                      kelas:='Bisnis';
                      Htiket:=500000;
                 end
            else if kelas='3' then
                 begin
                      kelas:='Eksekutif';
                      Htiket:=800000;
                 end
            else
                 writeln('Anda salah memasukan Kelas!');

           if kelas='Ekonomi' then
               diskon:=0.1*Htiket
           else
               diskon:=0;
        end

     else if tujuan='3' then
        begin
             tujuan:='Surabaya';

            if kelas='1' then
                 begin
                    kelas:='Ekonomi';
                    Htiket:=300000;
                 end
            else if kelas='2' then
                 begin
                      kelas:='Bisnis';
                      Htiket:=600000;
                 end
            else if kelas='3' then
                 begin
                      kelas:='Eksekutif';
                      Htiket:=900000;
                 end
            else
                 writeln('Anda salah memasukan Kelas!');

           if kelas='Eksekutif' then
               diskon:=0.1*Htiket
           else
               diskon:=0;
        end

     else
         writeln('Anda memasukan pilihan yang salah!');

     writeln(Btiket,' x ','(Bandung-',tujuan,') ',kelas);
     writeln('Harga Tiket                       : Rp.',Htiket);
     writeln('Diskon                            : Rp.',diskon:0:0);
     Hdiskon:=Htiket-diskon;
     writeln('Harga Setelah Diskon              : Rp.',Hdiskon:0:0,'/tiket');
     writeln('Total Bayar                       : Rp.',Btiket*Hdiskon:0:0);
     readln;
end.



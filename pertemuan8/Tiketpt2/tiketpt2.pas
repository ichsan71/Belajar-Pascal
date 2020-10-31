program Hitung_tiket_pt2;
uses crt;

var
   tujuan,kelas:string;
   Btiket,Htiket:integer;
   diskon:real;

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
                   Htiket:=100000;
                   kelas:='Ekonomi';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

           else if kelas='2' then
              begin
                   Htiket:=400000;
                   kelas:='Bisnis';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

              else
              begin
                   Htiket:=700000;
                   kelas:='Eksekutif';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end;
     end

     else if tujuan='2' then
          begin
               tujuan:='Yogyakarta';

              if kelas='1' then
              begin
                   Htiket:=200000;
                   kelas:='Ekonomi';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

           else if kelas='2' then
              begin
                   Htiket:=500000;
                   kelas:='Bisnis';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

              else
              begin
                   Htiket:=800000;
                   kelas:='Eksekutif';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end;
     end

     else if tujuan='3' then
        begin
             tujuan:='Surabaya';

           if kelas='1' then
              begin
                   Htiket:=300000;
                   kelas:='Ekonomi';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

           else if kelas='2' then
              begin
                   Htiket:=600000;
                   kelas:='Bisnis';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                 if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                    diskon:=0.1*Htiket
                 else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                      diskon:=0.1*Htiket
                 else
                     diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
              end

              else if kelas='3' then
                  begin
                   Htiket:=900000;
                   kelas:='Eksekutif';
                   writeln(Btiket,' x ', '(Bandung-',tujuan,') ',kelas);
                   Htiket:=Htiket;
                   writeln('Harga Tiket               : Rp.',Htiket);

                    if (tujuan='Yogyakarta') and (kelas='Ekonomi') then
                       diskon:=0.1*Htiket
                    else if (tujuan='Surabaya') and (kelas='Eksekutif') then
                         diskon:=0.1*Htiket
                    else
                        diskon:=0;

                   writeln('Diskon                    : Rp.',diskon:2:0);
                   writeln('Harga Setelah Diskon      : Rp.',Htiket-diskon:2:0,'/tiket');
                   writeln('Total Bayar               : Rp.',(Htiket-diskon)*Btiket:2:0);
                  end

                  else
                      writeln('Anda Memasukan Pilihan Yang salah!');
     end

     else
                      writeln('Anda Memasukan Pilihan Yang salah!');

     readln;
end.

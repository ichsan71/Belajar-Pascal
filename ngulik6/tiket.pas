program Tiket;
uses crt;

const
     Hjakarta=100000;
     Hyogyakarta=200000;
     Hsurabaya=300000;
var
     jakarta,yogyakarta,surabaya:string;
     Btiket,Ptujuan:integer;
     Djkt,Dyog,Dsur:real;
begin
     clrscr;

     writeln('Pilih Tujuan:   ');
     writeln('1. Jakarta      ');
     writeln('2. Yogyakarta   ');
     writeln('3. Surabaya     ');
     writeln('------------------------------------');


     write('Pilihan Anda [1,2,3]  : ');readln(Ptujuan);
     write('Banyak Tiket          : ');readln(Btiket);
     writeln('------------------------------------');

     writeln('Hasil Perhitungan');
     writeln('------------------------------------');

     Djkt:=0.1*Hjakarta;
     Dyog:=0*Hyogyakarta;
     Dsur:=0.2*Hsurabaya;

     if Ptujuan = 1 then
        begin
             writeln(Btiket,' x ','Bandung - Jakarta');
             writeln('Harga tiket          : ',Hjakarta);
             writeln('Diskon (10%)         : ',Djkt:0:0);
             writeln('Harga Setelah Diskon : ',Hjakarta-Djkt:0:0,'/tiket');
             writeln('Total Bayar          : ',Btiket*(Hjakarta-Djkt):0:0);
        end
     else if Ptujuan = 2 then
          begin
             writeln(Btiket,' x ','Bandung - Yogyakarta');
             writeln('Harga tiket          : ',Hyogyakarta);
             writeln('Diskon (0%)          : ',Dyog:0:0);
             writeln('Harga Setelah Diskon : ',Hyogyakarta-Dyog:0:0,'/tiket');
             writeln('Total Bayar          : ',Btiket*(Hyogyakarta-Dyog):0:0);
          end
     else if Ptujuan = 3 then
          begin
             writeln(Btiket,' x ','Bandung - Surabaya');
             writeln('Harga tiket          : ',Hsurabaya);
             writeln('Diskon (20%)         : ',Dsur:0:0);
             writeln('Harga Setelah Diskon : ',Hsurabaya-Dsur:0:0,'/tiket');
             writeln('Total Bayar          : ',Btiket*(Hsurabaya-Dsur):0:0);
             end
     else
         writeln('Anda memasukan Pilihan yang salah!');

     readln;
end.

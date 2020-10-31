program O_shop;
uses crt;

const
     headphone=150000;
     dompet=75000;
     multimedia_player=500000;
     jaket=125000;
     B_hp=400;
     B_dp=200;
     B_mp=700;
     B_jk=350;
     //ongkir=10000;

var
   Kode:string;
   Qty:integer;

begin
     clrscr;
     //Input User
     writeln('Barang beserta kodenya');
     writeln;
     writeln('Dompet            : DP');
     writeln('Handphone         : HP');
     writeln('Multimedia Player : MP');
     writeln('Jaket             : JK');
     writeln('-------------------------------------');

     write('Masukan Kode Produk  :');readln(kode);
     write('Masukan Qty          :');readln(Qty);
     writeln('-------------------------------------');

     kode:=upcase(kode);

     //pengkondisian
     if kode = 'HP' then
        begin
             writeln('Nama Barang  : Headphone');
             writeln('Harga        : Rp.',headphone);
             writeln('Berat        : ',B_hp);
             writeln('Qty          : ',Qty);
             writeln('Sub Total    : Rp.',headphone*Qty);


             if B_hp*Qty <= 1300 then
                begin
                     writeln('Total Berat  : ',B_hp*Qty,'gr','(1kg)');
                     writeln('Ongkos Kirim : Rp.10.000');
                end
             else if B_hp*Qty <= 2300 then
                  begin
                       writeln('Total Berat  : ',B_hp*Qty,'gr','(2kg)');
                       writeln('Ongkos Kirim : Rp.20.000');
                  end
             else if B_hp*Qty <= 3300 then
                  begin
                       writeln('Total Berat  : ',B_hp*Qty,'gr','(3kg)');
                       writeln('Ongkos Kirim : Rp.30.000');
                  end
             else if B_hp*Qty <= 4300 then
                  begin
                       writeln('Total Berat  : ',B_hp*Qty,'gr','(4kg)');
                       writeln('Ongkos Kirim : Rp.40.000');
                  end
             else
                 writeln('Maksimal Pembelian 4kg! saya capek packingnya, silahkan Pesan lagi!');
         end

     else if kode = 'DP' then
          begin
             writeln('Nama Barang  : Dompet');
             writeln('Harga        : Rp.',dompet);
             writeln('Berat        : ',B_dp);
             writeln('Qty          : ',Qty);
             writeln('Sub Total    : Rp.',dompet*Qty);
             if B_dp*Qty <= 1300 then
                begin
                     writeln('Total Berat  : ',B_dp*Qty,'gr','(1kg)');
                     writeln('Ongkos Kirim : Rp.10.000');
                end
             else if B_dp*Qty <= 2300 then
                  begin
                       writeln('Total Berat  : ',B_dp*Qty,'gr','(2kg)');
                       writeln('Ongkos Kirim : Rp.20.000');
                  end
             else if B_dp*Qty <= 3300 then
                  begin
                       writeln('Total Berat  : ',B_dp*Qty,'gr','(3kg)');
                       writeln('Ongkos Kirim : Rp.30.000');
                  end
             else if B_dp*Qty <= 4300 then
                  begin
                       writeln('Total Berat  : ',B_dp*Qty,'gr','(4kg)');
                       writeln('Ongkos Kirim : Rp.40.000');
                  end
             else
                 writeln('Maksimal pembelian 4kg! saya capek packingnya, Silahkan Pesan Lagi!');
         end

     else if kode = 'MP' then
          begin
             writeln('Nama Barang  : Multimedia Player');
             writeln('Harga        : Rp.',multimedia_player);
             writeln('Berat        : ',B_mp);
             writeln('Qty          : ',Qty);
             writeln('Sub Total    : Rp.',multimedia_player*Qty);
             if B_mp*Qty <= 1300 then
                begin
                     writeln('Total Berat  : ',B_mp*Qty,'gr','(1kg)');
                     writeln('Ongkos Kirim : Rp.10.000');
                end
             else if B_mp*Qty <= 2300 then
                  begin
                       writeln('Total Berat  : ',B_mp*Qty,'gr','(2kg)');
                       writeln('Ongkos Kirim : Rp.20.000');
                  end
             else if B_mp*Qty <= 3300 then
                  begin
                       writeln('Total Berat  : ',B_mp*Qty,'gr','(3kg)');
                       writeln('Ongkos Kirim : Rp.30.000');
                  end
             else if B_mp*Qty <= 4300 then
                  begin
                       writeln('Total Berat  : ',B_mp*Qty,'gr','(4kg)');
                       writeln('Ongkos Kirim : Rp.40.000');
                  end
             else
                 writeln('Maksimal Pembelian 4kg! Saya capek packingnya, Silahkan Pesan Lagi!');
         end

     else if kode = 'JK' then
          begin
             writeln('Nama Barang  : Jaket');
             writeln('Harga        : Rp.',jaket);
             writeln('Berat        : ',B_jk);
             writeln('Qty          : ',Qty);
             writeln('Sub Total    : Rp.',jaket*Qty);
             if B_jk*Qty <= 1300 then
                begin
                     writeln('Total Berat  : ',B_jk*Qty,'gr','(1kg)');
                     writeln('Ongkos Kirim : Rp.10.000');
                end
             else if B_jk*Qty <= 2300 then
                  begin
                       writeln('Total Berat  : ',B_jk*Qty,'gr','(2kg)');
                       writeln('Ongkos Kirim : Rp.20.000');
                  end
             else if B_jk*Qty <= 3300 then
                  begin
                       writeln('Total Berat  : ',B_jk*Qty,'gr','(3kg)');
                       writeln('Ongkos Kirim : Rp.30.000');
                  end
             else if B_jk*Qty <= 4300 then
                  begin
                       writeln('Total Berat  : ',B_jk*Qty,'gr','(4kg)');
                       writeln('Ongkos Kirim : Rp.40.000');
                  end
             else
                 writeln('Maksimal Pembelian 4kg! Saya capek packingnya, Silahkan Pesan Lagi!');
         end
     else
         writeln('Kamu salah memasukan Kode!');

     readln;
end.

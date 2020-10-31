program O_shop;
uses math;

const
     headphone=150000;
     dompet=75000;
     multimedia_player=500000;
     jaket=125000;

     B_dp=200;
     B_mp=700;
     B_jk=350;
     //ongkir=10000;

var
   Kode:string;
   Qty,subtotal,B_hp,totalberat:integer;
   ongkir,berat,TB_hp,Tbayar,Kberat:real;


begin
     //X:=1300*ceil(X/1300);
     //writeln('Nilai :',X:0:0);

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
     B_hp:=400;



     //pengkondisian
     if kode = 'HP' then
        begin
             writeln('Nama Barang  : Headphone');
             writeln('Harga        : Rp.',headphone);
             writeln('Berat        : ',B_hp);
             writeln('Qty          : ',Qty);
             subtotal:=headphone*Qty;
             writeln('Sub Total    : Rp.',subtotal);
             totalberat:=B_hp*Qty;
             writeln('Total Berat  : ',totalberat,'gr ',1000*ceil(totalberat/1000),'kg');

             Kberat:=1300*ceil(totalberat/1300);
             ongkir:=10000*Kberat;
             writeln('Ongkos Kirim : Rp.',ongkir:0:0);
             Tbayar:=subtotal+ongkir;
             writeln('Total Bayar  : Rp.',Tbayar:0:0);
        end;


         readln;



end.


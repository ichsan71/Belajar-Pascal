program Hitung_Gaji;
uses crt;

var
   nama:string;
   nip,gaji,anak:integer;
   pajak,tunjangan1,tunjangan2,gatot:real;

begin
     clrscr;

     write('Masukan nama  anda   :  ');readln(nama);
     write('Masukan nip   anda   :  ');readln(nip);
     writeln('-------------------------------------------');

     writeln('Halo, ',nama,'-',nip);
     writeln('-------------------------------------------');

     write('Masukan Gaji  anda         :  ');readln(gaji);
     write('Masukan Jumlah anak anda   :  ');readln(anak);
     writeln('-------------------------------------------');

     tunjangan1:=gaji*0.2;
     writeln('Tunjangan keluarga : ',tunjangan1:0:2);

     tunjangan2:=gaji*0.05*anak;
     writeln('Tunjangan anak     : ',tunjangan2:0:2);
     writeln;

     gatot:=gaji+tunjangan1+tunjangan2;
     writeln('gaji kotor anda senilai   : ',gatot:0:2);
     writeln;

     pajak:=gatot-gatot*0.1;
     writeln('Gaji Bersih anda setelah dipotong 10% senilai : ',pajak:0:2);
     readln;
end.

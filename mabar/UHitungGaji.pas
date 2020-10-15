program Hitung_Gaji;
uses crt;

var
   Nama:string;
   Nip,Gpokok:integer;
   Tjanak,Tjkeluarga:real;

begin
     write('Masukan Nama :  '); readln(Nama);
     write('Masukan Gaji :  '); readln(Gpokok);
     write('Masukan Nip  :  '); readln(Nip);
     writeln('--------------------------------------------------');
     writeln(Nama,'-',Nip,'-',Gpokok);
     writeln('--------------------------------------------------');

     Tjkeluarga:=0.2*Gpokok;
     writeln('Ini Tunjangan keluarga : ',Tjkeluarga:0:2);

     Tjanak:=0.05*Gpokok;
     writeln('Ini Tunjangan anak     :',Tjanak:0:2);



     writeln('Tekan Enter Untuk Keluar');
     readln();

end.

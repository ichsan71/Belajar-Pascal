program Itung_Gaji;
uses crt;

const
     direktur=10000000;
     manajer=5000000;
     staf=3000000;
     T_keluarga=0.2;
     T_anak=0.05;
     pajak=0.05;

var
   nip:integer;
   nama,jabatan:string;
   Banak:byte;
   status:char;
   Gkotor,pajakD,T_keluargaD,T_anakD,Gbersih,Ttunjangan:real;
   pajakM,T_keluargaM,T_anakM:real;
   pajakS,T_keluargaS,T_anakS:real;

begin
     clrscr;

     //input user
     write('NIP           : ');readln(nip);
     write('Nama          : ');readln(nama);
     write('Jabatan       : ');readln(jabatan);
     write('Menikah [Y/T] : ');readln(status);
     write('Banyak Anak   : ');readln(Banak);
     writeln('------------------------------------');
     writeln('Rincian Gaji Pegawai');
     writeln('------------------------------------');
     writeln(nama ,'(',nip,')' ,'/',jabatan);

     status:=upcase(status);

     if status = 'Y' then
        writeln('Status menikah dengan Anak ',Banak)
     else if status = 'T' then
          writeln('Status tidak menikah')
     else
         writeln('Anda memasukan pilihan yang salah!');



     //Process
     if jabatan = 'direktur' then
       begin
            writeln('Gaji Pokok          : Rp.',direktur);

            if Banak = 2 then
               begin
                    T_keluargaD:=direktur*T_keluarga;
                    writeln('Tunjangan Keluarga    : Rp.',T_keluargaD:0:0);

                    T_anakD:=direktur*T_anak*2;
                    writeln('Tunjangan Anak (2)    : Rp.',T_anakD:0:0);
               end
            else if Banak = 1 then
                 begin
                    T_keluargaD:=direktur*T_keluarga;
                    writeln('Tunjangan Keluarga    : Rp.',T_keluargaD:0:0);

                    T_anakD:=direktur*T_anak*1;
                    writeln('Tunjangan Anak (1)    : Rp.',T_anakD:0:0);
                 end
            else if Banak > 2  then
                 begin
                    T_keluargaD:=direktur*T_keluarga;
                    writeln('Tunjangan Keluarga    : Rp.',T_keluargaD:0:0);
                    T_anakD:=(direktur*T_anak)*2;
                    writeln('Tunjangan Anak (2)    : Rp.',T_anakD:0:0);
                 end
            else
                begin
                     writeln('Tunjangan Keluarga   : Rp.0');
                     writeln('Tunjangan Anak (0)   : Rp.0');
                end;

            Ttunjangan:=T_keluargaD+T_anakD;
            writeln('Total Tunjangan     :Rp.',Ttunjangan:0:0);

            Gkotor:=direktur+T_keluargaD+T_anakD;
            writeln('Gaji Kotor          : Rp.',Gkotor:0:0);


            pajakD:=pajak*Gkotor;
            writeln('Pajak (5%)          : Rp.',pajakD:0:0);

            Gbersih:=Gkotor-pajakD;
            writeln('Gaji Bersih         : Rp.',Gbersih:0:0);
       end

       else if jabatan = 'manajer' then
       begin
            writeln('Gaji Pokok          : Rp.',manajer);

            if Banak = 2 then
               begin
                    T_keluargaM:=manajer*T_keluarga;
                    writeln('Tunjangan Keluarga    : Rp.',T_keluargaM:0:0);

                    T_anakM:=manajer*T_anak*2;
                    writeln('Tunjangan Anak (2)    : Rp.',T_anakM:0:0);
               end
            else if Banak = 1 then
                 begin
                    T_keluargaM:=manajer*T_keluarga;
                    writeln('Tunjangan Keluarga   : Rp.',T_keluargaM:0:0);

                    T_anakM:=manajer*T_anak*1;
                    writeln('Tunjangan Anak (1)   : Rp.',T_anakM:0:0);
                 end
            else if Banak > 2  then
                 begin
                    T_keluargaM:=manajer*T_keluarga;
                    writeln('Tunjangan Keluarga   : Rp.',T_keluargaM:0:0);
                    T_anakM:=(manajer*T_anak)*2;
                    writeln('Tunjangan Anak (2)   : Rp.',T_anakM:0:0);
                 end
            else
                begin
                     writeln('Tunjangan Keluarga  : Rp.0');
                     writeln('Tunjangan Anak (0)  : Rp.0');
                end;                            

            Ttunjangan:=T_keluargaM+T_anakM;
            writeln('Total Tunjangan     : Rp.',Ttunjangan:0:0);

            Gkotor:=manajer+T_keluargaM+T_anakM;
            writeln('Gaji Kotor          : Rp.',Gkotor:0:0);


            pajakM:=pajak*Gkotor;
            writeln('Pajak (5%)          : Rp.',pajakM:0:0);

            Gbersih:=Gkotor-pajakM;
            writeln('Gaji Bersih         : Rp.',Gbersih:0:0);
       end

       else if jabatan = 'staf' then
       begin
            writeln('Gaji Pokok          : Rp.',staf);

            if Banak = 2 then
               begin
                    T_keluargaS:=staf*T_keluarga;
                    writeln('Tunjangan Keluarga     : Rp.',T_keluargaS:0:0);

                    T_anakS:=staf*T_anak*2;
                    writeln('Tunjangan Anak (2)     : Rp.',T_anakS:0:0);
               end
            else if Banak = 1 then
                 begin
                    T_keluargaS:=staf*T_keluarga;
                    writeln('Tunjangan Keluarga     : Rp.',T_keluargaS:0:0);

                    T_anakS:=staf*T_anak*1;
                    writeln('Tunjangan Anak (1)     : Rp.',T_anakS:0:0);
                 end
            else if Banak > 2  then
                 begin
                    T_keluargaS:=staf*T_keluarga;
                    writeln('Tunjangan Keluarga     : Rp.',T_keluargaS:0:0);
                    T_anakS:=(staf*T_anak)*2;
                    writeln('Tunjangan Anak (2)     : Rp.',T_anakS:0:0);
                 end
            else
                begin
                     writeln('Tunjangan Keluarga    : Rp.0');
                     writeln('Tunjangan Anak (0)    : Rp.0');
                end;

            Ttunjangan:=T_keluargaS+T_anakS;
            writeln('Total Tunjangan     :Rp.',Ttunjangan:0:0);

            Gkotor:=direktur+T_keluargaS+T_anakS;
            writeln('Gaji Kotor          : Rp.',Gkotor:0:0);

            pajakS:=pajak*Gkotor;
            writeln('Pajak (5%)          : Rp.',pajakS:0:0);

            Gbersih:=Gkotor-pajakS;
            writeln('Gaji Bersih         : Rp.',Gbersih:0:0);
       end;
     readln;

end.

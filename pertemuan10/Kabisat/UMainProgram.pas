program Tahun_kabisat;
uses crt,
     fungsi,//library ini dari unit Fungsi
     contoh;//library ini dari Unit Lokal

var
   year,month,day:integer;
   hasil:boolean;
begin
     kotakBerjudul(1,5,80,20,blue,black,'Tahun Kabisat');//Procedure ini menggunakan unit Lokal
     gotoXY(2,6);
     write('Tahun : ');readln(year);
     gotoXY(2,7);
     write('Bulan : ');readln(month);
     gotoXY(2,8);
     write('Tanggal : ');readln(day);
     clrscr;

     hasil:=kabisat(year);
     kotakBerjudul(1,5,80,20,green,black,'Tahun Kabisat');//Procedure ini menggunakan unit Lokal
     if hasil=true then
        begin
             gotoXY(2,9);
             writeln(day,'-',month,'-',year);
             gotoXY(2,10);
             writeln('Tahun ',year,' Adalah Tahun Kabisat');
             gotoXY(2,11);
             writeln('Pada tahun ',year,' Di Bulan ',month,' Terdapat ',Abulan(year,month),' Hari');
        end
     else
         begin
              gotoXY(2,9);
              writeln(day,'-',month,'-',year);
              gotoXY(2,10);
              writeln('Tahun ',year,' Bukan Tahun Kabisat');
              gotoXY(2,11);
              writeln('Pada tahun ',year,' Di Bulan ',month,' Terdapat ',Abulan(year,month),' Hari');
         end;

     gotoXY(2,12);
     writeln('cek validasi Tanggal : ',validasiTgl(year,month,day));

     readln;
end.

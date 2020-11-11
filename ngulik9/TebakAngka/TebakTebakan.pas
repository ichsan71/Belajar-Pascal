program Tebak_angka;
uses crt;

var
   pc,user:integer;
   i:byte;
   tombol:string;


begin
     randomize;
     pc:=random(10);
     i:=3;
     repeat
           write('masukan tebakan Anda : '); readln(user);
           if user>pc then
              writeln('Tebakan terlalu besar')
           else if user<pc then
               writeln('Tebakan terlalu kecil')
           else
               writeln('HORE!!! Kamu Benar!!!');

           writeln('Kesempatan kamu tersisa ',i-1,'x');

           writeln('--------------------------------------');
           writeln('Tekan ENTER untuk melanjutkan Tebak');
           writeln('--------------------------------------');
           writeln('Tekan ESC untuk Keluar');
           tombol:=readkey;

           clrscr;
           i:=i-1;
     until (user=pc)or(tombol=#27)or(i=0);
end.

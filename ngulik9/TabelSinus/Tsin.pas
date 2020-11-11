program Untitled;
uses crt;

var
   nilaiSinus:real;
   N,i:integer;
   tombol:char;

begin
     i:=0;
     clrscr;
     repeat
           begin
                nilaiSinus:=sin(i*PI/180);
                writeln('Sin(',i,') ',nilaiSinus:6:4);
                if i mod 20 = 19 then
                   begin
                        writeln('Tekan ENTER untuk melanjutkan,tekan Escape untuk Keluar');
                        tombol:=readkey;
                        clrscr;
                   end;
                i:=i+1;
           end;
     until (tombol=#27) or (i>359);
end.


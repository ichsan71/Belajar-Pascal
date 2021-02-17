program AlGebra_Bool;
uses fungsi,contoh,crt;

var
   pilihan_u,x:byte;
   bukti:char;
begin
     kotakBerjudul(20,5,60,20,red,black,'Kaidah-Kaidah Boolean');
     clrscr;
     kotakBerjudul(20,5,60,20,red,black,'Kaidah-Kaidah Boolean');
     gotoxy(21,7);
     writeln('1. kaidah 1');
     gotoxy(21,8);
     writeln('2. kaidah 2');
     gotoxy(21,9);
     writeln('3. kaidah 3');
     gotoxy(21,10);
     writeln('4. kaidah 4');
     gotoxy(21,11);
     writeln('5. kaidah 5');
     gotoxy(21,12);
     write('Masukan Pilihan : ');readln(pilihan_u);

     if pilihan_u=1 then
        begin
             clrscr;
             kotakBerjudul(20,5,60,20,blue,black,'Kaidah 1');
             gotoxy(21,7);
             writeln('a) X .  0  = 0');
             gotoxy(21,8);
             writeln('b) X .  1  = X');
             gotoxy(21,9);
             writeln('c) X .  X  = X');
             gotoxy(21,10);
             writeln('d) X . -X  = x');

             gotoxy(21,12);
             write('Mau Coba Buktiin ? [a,b,c,d] :');readln(bukti);
             bukti:=upcase(bukti);
             if bukti='A' then
                begin
                     clrscr;
                     kotakBerjudul(20,5,60,20,blue,black,'Kaidah 1');
                     gotoxy(21,7);
                     writeln('X . 0 = 0');
                     gotoxy(21,8);
                     write('Masukan nilai x : ');readln(x);
                     if x=0 then
                        begin
                             gotoxy(21,9);
                             writeln(x,' . 0 = ',kaidah1A(x,'A'));
                        end
                     else if x=1 then
                        begin
                             gotoxy(21,9);
                             writeln(x,' . 0 = ',kaidah1A(x,'A'));
                        end
                     else
                         begin
                              gotoxy(21,9);
                              writeln('Kamu Memasukan Pilihan Yang salah!');
                         end;

                end;
        end;

     readln;
end.

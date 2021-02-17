program Game;
uses crt;

var
   Pcom,Pplayer:string;
   angka:integer;
begin
     clrscr;

     //Input user
     write('Masukan [B,G,K] : ');readln(Pplayer);
     Pplayer:=upcase(Pplayer);

     if Pplayer = 'B' then
        writeln('Anda Memilih Batu')
     else if Pplayer = 'G' then
          writeln('Anda Memilih Gunting')
     else if Pplayer = 'K' then
          writeln('Anda Memilih Kertas')
     else
         writeln('Anda Memasukan Pilihan yang salah!');

     //Pilihan Komputer
     randomize;
     angka:=random(3);

     if angka = 0 then
        Pcom:='B'
     else if angka = 1 then
          Pcom:='G'
     else
         Pcom:='K';

     if Pcom = 'B' then
        writeln('Komputer Memilih Batu')
     else if Pcom = 'G' then
          writeln('Komputer Memilih Gunting')
     else
          writeln('Komputer Memilih Kertas');

     //Peraturan
     if Pplayer = 'B' then
             if Pcom ='K' then
           writeln('Komputer Win! Kamu Lose!')
        else if Pcom ='G' then
             writeln('Komputer Lose! Kamu Win!')
        else
            writeln('DRAW!!!!');

      if Pplayer = 'G' then
        if Pcom ='B' then
           writeln('Komputer Win! Kamu Lose!')
        else if Pcom ='K' then
             writeln('Komputer Lose! Kamu Win!')
        else
            writeln('DRAW!!!!');

       if Pplayer = 'K' then
        if Pcom ='G' then
           writeln('Komputer Win! Kamu Lose!')
        else if Pcom ='B' then
             writeln('Komputer Lose! Kamu Win!')
        else
            writeln('DRAW!!!!');
     readln;

end.

//PROCEDURE GBK
procedure GBK(Pplayer:string);
var
   Pcom:string;
   angka:integer;
begin
     repeat

     //Input user
     //write('Masukan [B,G,K] : ');readln(Pplayer);
     Pplayer:=upcase(Pplayer);

     if Pplayer = 'B' then
        writeln('Anda Memilih Batu')
     else if Pplayer = 'G' then
          writeln('Anda Memilih Gunting')
     else if Pplayer = 'K' then
          writeln('Anda Memilih Kertas')
     else
         writeln('Anda Memasukan Pilihan yang salah!');

     //Pilihan Komputer
     randomize;
     angka:=random(3);

     if angka = 0 then
        Pcom:='B'
     else if angka = 1 then
          Pcom:='G'
     else
         Pcom:='K';

     if Pcom = 'B' then
        writeln('Komputer Memilih Batu')
     else if Pcom = 'G' then
          writeln('Komputer Memilih Gunting')
     else
          writeln('Komputer Memilih Kertas');

     //Peraturan
     if Pplayer = 'B' then
             if Pcom ='K' then
           writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang')
        else if Pcom ='G' then
             writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang')
        else
            writeln('DRAW!!!!');

      if Pplayer = 'G' then
        if Pcom ='B' then
           writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang')
        else if Pcom ='K' then
             writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang')
        else
            writeln('DRAW!!!!');

       if Pplayer = 'K' then
        if Pcom ='G' then
           writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang')
        else if Pcom ='B' then
             writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang')
        else
            writeln('DRAW!!!!');

     until Pcom<>Pplayer;
     readln;

end; // End of procedure 2



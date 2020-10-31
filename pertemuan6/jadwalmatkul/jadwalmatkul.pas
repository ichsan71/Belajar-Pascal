program If_statement;
uses crt;

var
   hari,matkul,senin,selasa,rabu,kamis,jumat:string;

begin
     clrscr;
     writeln('Jadwal Matkul');
     writeln('----------------------------------------------------------');

     write('Masukan Hari    : '); readln(hari);
     writeln;
     hari:=lowercase(hari);

     if hari = 'senin'  then
        begin
             writeln('1. Algoritma (7.45-09.15)');
             writeln('2. Pemrog web (10.00-11.30)');
        end
     else if hari = 'selasa' then
          begin
             writeln('1. Algoritma (13.00-14.30)');
             writeln('2. Bahasa Inggris (10.00-11.00)');
          end
     else if hari = 'rabu' then
          begin
             writeln('1. Matematika Dasar (7.00-8.30)');
             writeln('2. PSTI (14.30-16.00)');
          end
     else if hari = 'kamis' then
          writeln('1. Agama (10.00-11.30)')
     else if hari = 'jumat' then
          begin
             writeln('1. sistem digital (8.30-10.00)');
             writeln('2. AOP (10.00-11.30)');
          end
     else
         writeln('Tidak ada Matkul');

     readln;

end.

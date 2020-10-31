program Menghitung_nilai;
uses crt;

var
   kehadiran,nUAS,nUTS,nTGS:integer;
   nKehadiran,nAkhir:real;
   index:char;
   keterangan:string;

begin
     clrscr;

     //Input User
     write('Kehadiran [0..16]   : ');readln(kehadiran);
     write('Nilai Tugas         : ');readln(nTGS);
     write('Nilai UTS           : ');readln(nUTS);
     write('Nilai UAS           : ');readln(nUAS);
     writeln('--------------------------------------');

     //formula
     nKehadiran:=1.0*kehadiran / 16 * 100;
     nAkhir:=0.1*nKehadiran + 0.2*nTGS + 0.3*nUTS + 0.4*nUAS;

     writeln('Nilai Kehadiran   : ',nKehadiran:2:2);

     //Pengkondisian dan output
     if (nAkhir>=80) and (nAkhir<=100) then
        begin
             index:='A';
             keterangan:='Sangat Baik';
        end
     else if (nAkhir>=68) and (nAkhir<80) then
        begin
             index:='B';
             keterangan:='Baik';
        end
     else if (nAkhir>=56) and (nAkhir<68) then
        begin
             index:='C';
             keterangan:='Cukup';
        end
     else if (nAkhir>=45) and (nAkhir<56) then
        begin
             index:='D';
             keterangan:='Kurang';
        end
    else if (nAkhir>=0) and (nAkhir<45) then
        begin
             index:='E';
             keterangan:='Sangat Kurang';
        end
    else
        writeln('nilai tidak sah');

    writeln('Nilai Akhir       : ',nAkhir:2:2);
    writeln('Index             : ',index);
    readln;
end.

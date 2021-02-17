program Pengolahan_Data;
uses crt,sysutils;
const
     maks=100;
type
    TArray2d=array[1..maks,1..maks] of string;
    TArray=array[1..maks] of string;
    TArrayInt=array[1..maks] of integer;
    TArrayInt2d=array[1..maks,1..maks] of integer;
var
   nilai:TArrayInt2d;
   dataSks:TArrayInt;
   dataMatkul:TArray;
   dataMahasiswa,nilaiStr:TArray2d;
   indeks,totalSks,j,i,BbarisMatkul,BbarisMaha,BkolomMaha,b,k:integer; //Baris = banyaknya suatu data, Kolom = banyaknya suatu subdata yang harus diisi
   totalIp,ip:real;
   trik:string;

procedure viewData;
var
   i:integer;
begin
     clrscr;
     writeln('Data Mahasiswa');
     writeln('-------------------------------------------------------------------------------');
           // 12345678901234567890123456789012345678901234567890123456789012345678901234567890
     writeln('| NO |    NIM   |  MATKUL | SKS | NILAI |  IP  |');
     writeln('-------------------------------------------------------------------------------');
     for i:=1 to BbarisMaha do
         begin
              for j:=1 to BbarisMatkul do
              begin
              writeln('| ',i:2,' ',
              '| ',format('%-8s',[dataMahasiswa[i,1]]),' ',
              '| ',format('%-8s',[dataMatkul[j]]),
              '| ',dataSks[j]:3,' ',
              '| ',nilaiStr[i,j]:5,' ',
              '| ',totalIp:3:2,' |');
              {
              '| ',mhs[i].nilaiAkhir:6:2,' ',
              '| ',mhs[i].indeks,' |');}
              end;
         end;
     writeln('-------------------------------------------------------------------------------');
     writeln('Tekan Enter Untuk Melanjutkan');
     readln;
end; //end of procedure


begin
     write('Masukan banyak Mata Kuliah : ');readln(BbarisMatkul);

     for b:=1 to BbarisMatkul do
         begin
              write('Nama Mata kuliah ke-',b,' : ');readln(dataMatkul[b]);
              write('SKS Mata kuliah ke-',b,' : ');readln(dataSks[b]);
              totalSks:= totalSks + dataSks[b];
         end;
     writeln('-----------------------------------------------------------');
     //writeln(totalSks);

      {for b:=1 to BbarisMatkul do
         begin
              writeln('Nama Mata kuliah ke-',b,' : ',dataMatkul[b]);
              writeln('SKS Mata kuliah ke-',b,' : ',dataSks[b]);
         end; }

     write('masukan banyak mahasiswa : ');readln(BbarisMaha);
     BkolomMaha:=2; // kolom hanya 2 karena cuma butuh 2 yaitu NAMA dan NIM

     for b:=1 to BbarisMaha do
         begin
              writeln('data Mahasiswa ke-',b);
              for k:=1 to BkolomMaha do
                  begin
                       if k=1 then
                          trik:='NIM'
                       else
                           trik:='Nama';

                       write('masukan data ',trik,' : ');readln(dataMahasiswa[b,k]);
                  end;
         end;
     writeln('-----------------------------------------------------------');

     for i:=1 to BbarisMaha do
         begin
              for j:=1 to BbarisMatkul do
                  begin
                       write('data ke-',j,' Nilai mhs ',dataMahasiswa[i,1],' mata kuliah ', dataMatkul[j], ' : ');readln(nilaiStr[i,j]);
                       nilaiStr[i,j]:=upcase(nilaiStr[i,j]);
                       if (nilaiStr[i,j] = 'A') then
                          nilai[i,j]:= 4
                       else if (nilaiStr[i,j] = 'B') then
                            nilai[i,j]:= 3
                       else if (nilaiStr[i,j] = 'C') then
                            nilai[i,j]:= 2
                       else if (nilaiStr[i,j] = 'D') then
                            nilai[i,j]:= 1
                       else
                           nilai[i,j]:= 0;

                      ip:= ip + (nilai[i,j] * dataSks[i]);
                      totalIp:= ip / totalSks;
                  end;



         end;

     writeln('-----------------------------------------------------------');

     {for i:=1 to BbarisMaha do
         begin
              for j:=1 to BbarisMatkul do
                  begin
                       writeln('data ke-',j,' Nilai mhs ',dataMahasiswa[i,1],' mata kuliah ', dataMatkul[j], ' : ', nilaiStr[i,j]);
                  end;
         end;}



     viewdata;
     readln;
end.

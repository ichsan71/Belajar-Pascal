const
     maks=1000;
type
    TArray=array[1..maks] of integer;
var
   data:TArray;
   banyakData:integer;
   terkecil,terbesar,total:integer;
   rataRata,simpanganBaku,varian:real;

procedure bacaArray(var data:TArray;var N:integer);
var
   i:integer;
begin
     write('Banyak Data : ');readln(N);
     for i:=1 to N do
     begin
          write('Data Ke-',i,' : ');
          readln(data[i]);
          //data[i]:=random(101);
     end;
end;
procedure tampilArray(data:TArray;N:integer);
var
   i:integer;
begin
     for i:=1 to N do
        //write('Data Ke-',i,' : ',data[i]);
        write(data[i]:4);
     writeln;
end;
function cariTerkecil(data:TArray;N:integer):integer;
var
   i:integer;
   terkecil:integer;
begin
     terkecil:=data[1];
     for i:=2 to N do
         if data[i]<terkecil then
            terkecil:=data[i];
     cariTerkecil:=terkecil;
end;
function cariTerbesar(data:TArray;N:integer):integer;
var
   i:integer;
   terbesar:integer;
begin
     terbesar:=data[1];
     for i:=2 to N do
         if data[i]>terbesar then
            terbesar:=data[i];
     cariTerbesar:=terbesar;
end;
function cariTotal(data:TArray;N:integer):integer;
var
   i:integer;
   total:integer;
begin
     total:=0;
     for i:=1 to N do
         total:=total+data[i];
     cariTotal:=total;
end;
function cariRatarata(data:TArray;N:integer):real;
var
   i:integer;
   total:real;
begin
     total:=0;
     for i:=1 to N do
         total:=total+data[i];
     cariRatarata:=total/N;
end;
function cariVarian(data:TArray;N:integer):real;
var
   rataRata:real;
   i:integer;
   totalKuadratSelisih:real;
begin
     rataRata:=cariRatarata(data,N);
     totalKuadratSelisih:=0;
     for i:=1 to N do
         totalKuadratSelisih:=totalKuadratSelisih+
                              POWER(ABS(data[i]-rataRata),2.0);
     cariVarian:=totalKuadratSelisih/(N-1);
end;
function cariSimpanganBaku(data:TArray;N:integer):real;
begin
     cariSimpanganBaku:=sqrt(cariVarian(data,N));
end;
function cariFrekuensi(dataDicari:integer;data:TArray;N:integer):integer;
var
   banyak,i:integer;
begin
     banyak:=0;
     for i:=1 to N do
     begin
          if data[i]=dataDicari then
             banyak:=banyak+1;
     end;
     cariFrekuensi:=banyak;
end;
function cariModus(data:TArray;N:integer):integer;
var
   i:integer;
   modusSekarang,modusTerbaru:integer;
   frekuensiSekarang,frekuensiTerbaru:integer;
begin
     modusSekarang:=data[1];
     frekuensiSekarang:=cariFrekuensi(data[1],data,N);
     for i:=2 to N do
     begin
          modusTerbaru:=data[i];
          frekuensiTerbaru:=cariFrekuensi(modusTerbaru,data,N);
          if frekuensiTerbaru>frekuensiSekarang then
          begin
               modusSekarang:=modusTerbaru;
               frekuensiSekarang:=frekuensiTerbaru;
          end;
     end;
     cariModus:=modusSekarang;
end;

var
   i:integer;
   banyakTerkecil,banyakTerbesar:integer;
   modus:integer;
begin
     writeln('Masukan data:');
     bacaArray(data,banyakData);
     writeln('Isi data yang telah tersimpan');
     tampilArray(data,banyakData);
     writeln('Banyak         : ',banyakData:6);
     terkecil:=cariTerkecil(data,banyakData);
     banyakTerkecil:=cariFrekuensi(terkecil,data,banyakData);
     writeln('Terkecil       : ',terkecil:6,' sebanyak ',banyakTerkecil);
     terbesar:=cariTerbesar(data,banyakData);
     banyakTerbesar:=cariFrekuensi(terbesar,data,banyakData);
     writeln('Terbesar       : ',terbesar:6,' sebanyak ',banyakTerbesar);
     total:=cariTotal(data,banyakData);
     writeln('Total          : ',total:6);
     rataRata:=cariRatarata(data,banyakData);
     writeln('Rata-Rata      : ',rataRata:9:2);
     varian:=cariVarian(data,banyakData);
     writeln('Varian         : ',varian:9:2);
     simpanganBaku:=cariSimpanganBaku(data,banyakData);
     writeln('Simpangan Baku : ',simpanganBaku:9:2);
     for i:=1 to banyakData do
         writeln(data[i]:4,' sebanyak ',
                           cariFrekuensi(data[i],data,banyakData));
     modus:=cariModus(data,banyakData);
     writeln('Modus          : ',modus:6);
     readln;
end.

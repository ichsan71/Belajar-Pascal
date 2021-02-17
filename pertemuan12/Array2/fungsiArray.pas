unit fungsiArray;

interface {INTERFACE}
uses crt;
const
     maks=100;
type
    Tarray=array[1..maks] of integer;
var
   banyakData:integer;

procedure bacaArray(var data:TArray; var n:integer); // Header of procedure bacaArray
procedure tampilArray(var data:TArray; var n:integer); // Header of procedure TampilArray
function cariTerkecil(data:TArray;n:integer):integer; // Header of function cariTerkecil
function cariTerbesar(data:TArray;n:integer):integer; // Header of function cariTerbesar
function cariRata(data:TArray;n:integer):real; // Header of function cariRata
function totalData(data:TArray;n:integer):integer; // Header of function totalData
function varians(var data:TArray; var n:integer):real; // Header of function varian
function deviation(var data:TArray; var n:integer):real; // Header of function deviation
function frekuensi(dataTerbanyak:integer; data:TArray; n:integer):integer; // Header of function frekuensi
procedure tampilfrek(var data:TArray; var n:integer);
function modus(data:TArray; n:integer):integer;

implementation {IMPLEMENTATION}

procedure bacaArray(var data:TArray; var n:integer); // sign of first
var
   i:integer;
begin
     write('Banyak data : ');readln(n);
     for i:=1 to n do
         begin
              write('Masukan Data ke-',i,' : ');readln(data[i]);
         end;
end; // end of procedure BacaArray

procedure tampilArray(var data:TArray; var n:integer); // sign of first
var
   i:integer;
begin
     for i:=1 to n do
         begin
              writeln('Data Ke-',i,' : ',data[i]);
         end;
end; // end of procedure TampilArray

function cariTerkecil(data:TArray;n:integer):integer; // sign of first
var
   i:integer;
   terkecil:integer;
begin
     terkecil:=data[1];
     for i:=1 to n do
         if data[i]<terkecil then
            begin
                 terkecil:=data[i];
            end;
     cariTerkecil:=terkecil;
end;  // end of function cariTerkecil

function cariTerbesar(data:TArray;n:integer):integer; // sign of first
var
   i:integer;
   terbesar:integer;
begin
     terbesar:=data[1];
     for i:=2 to n do
         if data[i]>terbesar then
            begin
                 terbesar:=data[i];
            end;
     cariTerbesar:=terbesar;
end;  // end of function cariTerbesar

function cariRata(data:TArray;n:integer):real; // sign of first
var
   i:integer;
   total:real;
begin
     total:=0;
     for i:=1 to n do
         total:=total+data[i];

     cariRata:=total/n;
end; // end of function cariRata

function totalData(data:TArray;n:integer):integer; // sign of first
var
   i:integer;
   total:integer;
begin
     total:=0;
     for i:=1 to n do
         total:=total+data[i];

     totalData:=total;
end; // end of function totalData

function varians(var data:TArray; var n:integer):real; // sign of first
var
   i:integer;
   rata,totalKuadratSelisih:real;
begin
     rata:=cariRata(data,n);
     for i:=1 to n do
         begin
              totalKuadratSelisih:=totalKuadratSelisih+sqr(data[i]-rata);
         end;
     varians:=totalKuadratSelisih/(N-1);
     //varians:=varians/(n-1);
end; // end of function varian

function deviation(var data:TArray; var n:integer):real; // sign of first

begin
    deviation:=sqrt(varians(data,N));
end; // end of function deviation

function frekuensi(dataTerbanyak:integer; data:TArray; n:integer):integer; // sign of first
var
   i,Bdata:integer;
begin
     Bdata:=0;
     for i:=1 to n do
         begin
              if dataTerbanyak=data[i] then
                 inc(Bdata);
         end;
     frekuensi:=Bdata;
end; // end of function frekuensi

procedure tampilfrek(var data:TArray; var n:integer); // sign of first
var
   i:integer;
begin
     for i:=1 to n do
         begin
              if data[i]<>data[i+1] then
                 writeln(data[i]:5,'  sebanyak : ',frekuensi(data[i],data,n):5);
         end;
end; // end of procedure TampilArray

function modus(data:TArray; n:integer):integer; // sign of first
var
   i,frek1,frek2,mod1,mod2:integer;
begin
     frek1:=frekuensi(data[1],data,n);
     mod1:=data[1];
     for i:=2 to n do
         begin
              frek2:=frekuensi(mod1,data,n);
              mod2:=data[i];
              if frek2>frek1 then
                 begin
                      mod1:=mod2;
                      frek1:=frek2;
                 end;
         end;
         modus:=mod1;
end; // end of function modus

end.



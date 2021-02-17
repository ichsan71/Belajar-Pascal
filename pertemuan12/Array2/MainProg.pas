program Array_lanjutan;
uses crt,fungsiArray;
const
     maks=100;
type
    Tarray=array[1..maks] of integer;
var
   data:Tarray;
   i,banyakData,banyakTerkecil,banyakTerbesar:integer;

begin
     bacaArray(data,banyakData);
     TampilArray(data,banyakData);
     writeln('ini data total     : ',totalData(data,banyakData));
     banyakTerkecil:=frekuensi(cariTerkecil(data,banyakData),data,banyakData);
     banyakTerbesar:=frekuensi(cariTerbesar(data,banyakData),data,banyakData);
     writeln('ini data terkecil  : ',cariTerkecil(data,banyakData),' sebanyak : ',banyakTerkecil);
     writeln('ini data terbesar  : ',cariTerbesar(data,banyakData),' Sebanyak : ',banyakTerbesar);
     writeln('ini data rata-rata : ',cariRata(data,banyakData):0:2);
     writeln('ini data varian    : ',varians(data,banyakData):0:2);
     writeln('ini data deviation : ',deviation(data,banyakData):0:2);
     writeln('Frekuensi          : ');
     tampilfrek(data,banyakData);
     {for i:=1 to banyakData do
         writeln(data[i]:4,' sebanyak ',frekuensi(data[i],data,banyakData)); }

     writeln('ini data Modus     : ',modus(data,banyakData));


     readln;
end.

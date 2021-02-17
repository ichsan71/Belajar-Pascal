program Simpangan_Baku;

const
     maks=100;
type
    Tarray=array[1..maks] of integer;
var
   data:Tarray;
   banyakData,i,total:integer;
   rata,varian,hasil,totalvarian:real;

begin
     write('banyak data : ');readln(banyakData);

     for i:=1 to banyakData do
         begin
              write('Data Ke-',i,' : ');readln(data[i]);
              total:=total+data[i];
         end;
     for i:=1 to BanyakData do
         begin
              writeln(' Hasil Data ke ',i,' : ',data[i]);
              rata:=total / banyakData;
              varian:=sqr(data[i]-rata);
              totalvarian:=totalvarian+varian;
         end;
     writeln('varian : ',totalvarian:0:2);
     writeln('Total : ',total);
     writeln('Rata-rata : ',rata:0:2);
     hasil:=sqrt(totalvarian / (banyakData - 1));
     writeln('Simpangan Baku : ',hasil:0:2);
     readln;
end.

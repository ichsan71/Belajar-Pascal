const
     maks=100;
type
    TArray=array[1..maks] of integer;
var
   data:TArray;
   banyakData,i,total:integer;
   rataRata:real;
   banyakMelebihiRataRata:integer;
   totalKuadratSelisih,varian,simpanganbaku:real;
begin
     write('Banyak Data : ');readln(banyakData);
     for i:=1 to banyakData do
         data[i]:=random(banyakData*2);
     writeln('Data array : ');
     for i:=1 to banyakData do
     begin
          writeln('Data ke-',i,' : ',data[i]);
     end;
     total:=0;
     for i:=1 to banyakData do
         total:=total+data[i];
     writeln('Total : ',total);
     rataRata:=total/banyakData;
     writeln('Rata-rata : ',rataRata:0:2);
     writeln('Data yang melebihi rata-rata ');
     banyakMelebihiRataRata:=0;
     for i:=1 to banyakData do
     begin
          if data[i]>rataRata then
          begin
             writeln('Data ke-',i,' : ',data[i]);
             //banyakMelebihiRataRata:=banyakMelebihiRataRata+1;
             inc(banyakMelebihiRataRata);
          end;
     end;
     writeln('Ada ',banyakMelebihiRataRata,' data yang melebihi rata-rata');
     totalKuadratSelisih:=0;
     for i:=1 to banyakData do
        totalKuadratSelisih:=totalKuadratSelisih+power(abs(data[i]-ratarata),2.0);
     writeln('Total Kuadrat Selisih : ',totalKuadratSelisih:0:2);
     varian:=totalKuadratSelisih/(banyakData-1);
     writeln('Varian : ',varian:0:2);
     simpanganbaku:=sqrt(varian);
     writeln('Simpangan Baku : ',simpanganBaku:0:2);
     readln;
end.


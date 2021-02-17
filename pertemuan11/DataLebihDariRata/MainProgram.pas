program Data_Lebih_Dari_Ratarata;

const
     maks=100;
type
    TArray=Array[1..maks] of integer;
var
   data:TArray;
   banyakData,i,total,lebih:integer;
   rata:real;


begin
     write('Banyak Data : ');readln(banyakData);
     for i:=1 to BanyakData do
         begin
              write('Data ke ',i,' : ');readln(data[i]);
              total:=total+data[i];
         end;

     writeln('Total : ',total);
     rata:=total / banyakData;
     writeln('Rata-rata : ',rata:0:2);
     writeln('Data yang melebihi rata-rata');
     lebih:=0;
     for i:=1 to BanyakData do
         begin
              if data[i]>rata then
                 begin
                      inc(lebih);
                      writeln('Data Ke ',i,' : ',data[i]);
                 end;
         end;

     writeln('ada ',lebih,' data yang melebihi rata-rata');

     readln;
end.

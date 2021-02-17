program Data_Lebih_Dari_Ratarata;

const
     maks=100;
type
    TArray=Array[1..maks] of integer;
var
   data:TArray;
   banyakData,i,a:integer;


begin
     // Array Isi Manual
     write('Banyak Data : ');readln(banyakData);
     for i:=1 to BanyakData do
         begin
              write('Data ke ',i,' : ');readln(data[i]);
         end;
     for i:=1 to BanyakData do
         begin
              writeln(' Hasil Data ke ',i,' : ',data[i]);
         end;

     // Array isi otomatis menggunakan Random
     randomize;
     write('Banyak Data : ');readln(banyakData);
     for i:=1 to BanyakData do
         begin
              data[i]:=random(BanyakData);
         end;
     writeln('___Hasil Data Random___ ');
     for i:=1 to BanyakData do
         begin
              writeln(' Hasil Data ke ',i,' : ',data[i]);
         end;

     readln;
end.

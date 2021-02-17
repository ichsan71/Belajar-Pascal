program Pengurutan;

const
    maks=100;
type
    Tarray=array[1..maks] of integer;

var
   data:Tarray;
   rendem,banyakData,i,j,temp:integer;

begin
     write('Banyak Data   : ');readln(banyakData);

     //Baca data
     for i:=1 to banyakData do
         begin
              rendem:=random(banyakData*2);
              data[i]:=rendem;
         end;
     //Tampil Data
     for i:=1 to banyakData do
         begin
              writeln('data ke-',i,' : ',data[i]);
         end;

    //Pengururtan Bubble sort
    for i:=1 to banyakData-1 do
        begin
             for j:=banyakData downto i+1 do
                 begin
                      if data[j]<data[j-1] then
                         begin
                              temp:=data[j];
                              data[j]:=data[j-1];
                              data[j-1]:=temp;
                         end;
                 end;

        end;
    writeln('Pengurutan selesai');
    //Tampil Data setelah pengurutan
     for i:=1 to banyakData do
         begin
              writeln('data ke-',i,' : ',data[i]);
         end;

    readln;
end.

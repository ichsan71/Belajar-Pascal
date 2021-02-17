program Menghitung_vokal_konsonan;

var
   kalimat:string;
   i,countk,countv:integer;

begin
     write('Masukan kalimat : ');readln(kalimat);
     kalimat:=lowercase(kalimat);
     countv:=0;
     countk:=0;
     for i:=1 to length(kalimat) do
         begin
              //writeln(kalimat[i]);
              if (kalimat[i]>='a') and (kalimat[i]<='z') then
              begin
                   if kalimat[i] in ['a','i','u','e','o'] then
                      inc(countv)
                   else
                       inc(countk);
              end;
         end;

     writeln('ada ',countv,' huruf vokal ');
     writeln('ada ',countk,' huruf konsonan ');
     readln;
end.

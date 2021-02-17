uses crt;
var
   kalimat:string;
   i:integer;
   banyakVokal,banyakKonsonan:integer;
begin
     write('Kalimat : ');readln(kalimat);
     banyakVokal:=0;
     banyakKonsonan:=0;
     kalimat:=upcase(kalimat);
     writeln('Kalimat yang akan dihitung : ',kalimat);
     for i:=1 to length(kalimat) do
     begin
          //writeln(i,' : ',kalimat[i]);
          //delay(1000);
          if (kalimat[i]>='A')and(kalimat[i]<='Z') then
          begin
               if kalimat[i] in ['A','E','I','O','U'] then
                  banyakVokal:=banyakVokal+1
               else
                   banyakKonsonan:=banyakKonsonan+1;
          end;
     end;
     writeln('Banyak Vokal : ',banyakVokal);
     writeln('Banyak Konsonan : ',banyakKonsonan);
     readln;
end.

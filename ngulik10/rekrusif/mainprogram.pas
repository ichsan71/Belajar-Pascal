program rekrusif;
uses crt;

Function KALI_REK_F(a,b:integer):longint;
begin
     if b>1 then
        KALI_REK_F := KALI_REK_F(a,b-1)+a
     else
         KALI_REK_F := a;
     end;
var
   a,b:integer;
begin
     write('masukan angka a : ');readln(a);
     write('masukan angka b : ');readln(b);
     write('ini hasilnya : ',KALI_REK_F(a,b));delay(100);

     readln;
end.

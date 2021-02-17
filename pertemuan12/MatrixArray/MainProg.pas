program Matrix;
uses crt;
const
     maks=100;
type
    Tmatrix=Array[1..maks,1..maks] of integer;
var
   M1:Tmatrix;
   b2,k2,i,jlmhK,jlmhB,barisM1,kolomM1:integer;
   xAwal,yAwal,b,k:integer; // counter loop

begin
     write('Masukan banyak baris : ');readln(barisM1);
     write('Masukan banyak kolom : ');readln(kolomM1);

     for b:=1 to barisM1 do
         begin
              for k:=1 to kolomM1 do
                  begin
                       gotoXY(k*10,b*2+2);
                       //write('masukan data baris ke-',b,' kolom ke-',k,' : ');
                       M1[b,k]:=random(5);
                       write(M1[b,k]);
                  end;
         end;
     writeln;
     writeln('Isi matrix : ');
     xAwal:=whereX;// ambil koordinat X sekarang
     yAwal:=whereY;// ambil koordinat Y sekarang

     k2:=20;
     for b:=1 to barisM1 do
         begin
              jlmhK:=0;
              //jlmhB:=0;
              for k:=1 to kolomM1 do
                  begin
                       gotoXY(xAwal+k*5,yAwal+b-1);
                       writeln(M1[b,k]:5);delay(1000);

                       jlmhK:=jlmhK+M1[b,k];
                       gotoXY(30,yAwal+b-1);
                       write(' ==> hasil : ',jlmhK);delay(1000);
                  end;
              k:=k-1;

              jlmhB:=jlmhB+M1[b,k];
              gotoxy(xAwal+k*5,15);
              write(jlmhB);delay(1000);

              //k2:=k2+1;
         end;
     readln;
end.

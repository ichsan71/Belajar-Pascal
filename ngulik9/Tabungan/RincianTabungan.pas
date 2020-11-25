program Rincian_Tabungan;
uses crt;

var
   sAwal,i:integer;
   bunga,total,Tbunga,Ttotal:real;
   p:byte;

begin
     write('Saldo Awal   : ');readln(sAwal);
     write('Bunga (%)    : ');readln(bunga);
     write('Periode      : ');readln(p);
     writeln('-----------------------------------');

     //total:=0;
     bunga:=bunga/100;
     for i:=1 to p do
     begin
          Tbunga:=(total+sAwal)*bunga;
          total:=Tbunga+total;
          Ttotal:=sAwal+total;
          writeln('Saldo di akhir bulan ke-',i,' Rp.',Ttotal:0:0);

     end;
     readln;
end.

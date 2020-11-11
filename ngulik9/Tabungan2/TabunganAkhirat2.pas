program Rincian_Tabungan2;
uses crt;

var
   sAwal,p,i:integer;
   bunga,total,Tbunga,Ttotal,l:real;


begin
     write('Saldo Awal   : ');readln(sAwal);
     write('Bunga (%)    : ');readln(bunga);
     write('Saldo Target : ');readln(p);
     writeln('-----------------------------------');

     i:=1;
     total:=0;
     bunga:=bunga/100;
     repeat
           begin
           Tbunga:=(total+sAwal)*bunga;
           total:=Tbunga+total;
           Ttotal:=sAwal+total;
           writeln('Saldo di akhir bulan ke-',i,' Rp.',Ttotal:0:0);
           i:=i+1;
           end;
     until (Ttotal>p);
     readln;
end.

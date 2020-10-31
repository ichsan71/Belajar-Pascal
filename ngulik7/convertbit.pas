program Convert;
uses crt;

var
   n1,n2,n3,rumus:real;

begin
     clrscr;

     //input user
     writeln('Converter binner ke dalam desimal');
     writeln;
     write('Masukan Nilai Pertama : ');readln(n1);
     write('Masukan Nilai kedua   : ');readln(n2);
     write('Masukan Nilai ketiga  : ');readln(n3);
     writeln('-----------------------------------------------------');

     rumus:=n1*power(2,2)+n2*power(2,1)+n3*power(2,0);

     //output
     writeln(n1:0:0,' ',n2:0:0,' ',n3:0:0);
     writeln('-----------------------------------------------------');
     writeln('(',n1:0:0,' x 2 pangkat 2) + ','(',n2:0:0,' x 2 pangkat 1 ) + ','(',n3:0:0,' x 2 pangkat 0) ');
     writeln;
     writeln('Hasilnya adalah : ',rumus:0:0,' dalam desimal');









     readln;
end.

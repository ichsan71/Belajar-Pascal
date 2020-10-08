program Menghitung_persegi;
uses crt;

var
   panjang,lebar           :integer;
   keliling,luas,diagonal  :real;

begin
     clrscr;

     write('Masukan Nilai panjang:      '); readln(panjang);
     write('Masukan Nilai Lebar  :      '); readln(lebar);
     writeln('---------------------------------------');

     writeln('Dimensi segiempat adalah ',panjang ,' x ',lebar);

     keliling:=2*panjang+2*lebar;
     writeln('Hasil dari Keliling Persegi adalah = ', keliling:10:4);

     luas:=panjang*lebar;
     writeln('Hasil dari luas Persegi adalah     = ', luas:10:4);

     diagonal:=sqrt(sqr(panjang))+(sqr(lebar));
     writeln('Hasil dari diagonal Persegi adalah = ', diagonal:10:4);
     readln;
end.

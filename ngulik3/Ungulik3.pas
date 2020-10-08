program String_test;
uses crt;
var
   mix,nama,kelas:string='yowasap bro';
   umur,nim:integer;
begin
     clrscr;

     writeln('Biodata');

     write('Masukan nama anda       :'); readln(nama);
     write('Masukan kelas anda      :'); readln(kelas);
     writeln(nama,' ',kelas);
     readln;
end.

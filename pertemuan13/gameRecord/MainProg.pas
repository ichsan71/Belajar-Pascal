program RPG;
uses crt,sysutils,contoh,lib;

begin
     banyakData:=0; // inisialisasi BanyakData
     repeat //Pengulangan Menu
           clrscr;
           kotakBerjudul(10,2,60,20,red,black,'| MENU |');
           writeln;
           gotoXY(11,4);
           writeln('1. Penambahan Data');
           gotoXY(11,5);
           writeln('2. View Data');
           gotoXY(11,6);
           writeln('3. Simpan Data');
           gotoXY(11,7);
           writeln('4. Baca data');
           gotoXY(11,8);
           writeln('5. Edit data');
           gotoXY(11,9);
           writeln('6. Hapus data');
           gotoXY(11,10);
           writeln('7. Pencarian');
           gotoXY(11,11);
           writeln('0. keluar');
           gotoXY(11,13);
           write('Masukan Pilihan : ');readln(pilihanMenu);

           if (pilihanMenu>7) and (pilihanMenu<0) then
              begin
                   gotoXY(11,13);
                   writeln('Pilihan Menu Salah!'); //Validasi Menu
              end;

           case pilihanMenu of
                1:addData;
                2:viewData;
                3:saveFile;
                4:loadFile;
                5:editData;
                6:hapusData;
                7:pencarian;
           end;

     until pilihanMenu=0; //End of Menu
end.

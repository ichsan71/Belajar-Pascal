program Test_Record;
uses crt,sysutils,lib;

begin
     banyakData:=0; // inisialisasi BanyakData
     repeat //Pengulangan Menu
           clrscr;
           kotakBerjudul(1,1,79,24,red,black,'| MENU |');
           writeln;
           gotoXY(3,4);
           writeln('1. Penambahan Data');
           gotoXY(3,5);
           writeln('2. View Data');
           gotoXY(3,6);
           writeln('3. Simpan Data');
           gotoXY(3,7);
           writeln('4. Baca data');
           gotoXY(3,8);
           writeln('5. Edit data');
           gotoXY(3,9);
           writeln('6. Hapus data');
           gotoXY(3,10);
           writeln('7. Pencarian');
           gotoXY(3,11);
           writeln('8. Pengurutan');
           gotoXY(3,12);
           writeln('0. keluar');
           gotoXY(3,14);
           write('Masukan Pilihan : ');readln(pilihanMenu);

           if (pilihanMenu>9) and (pilihanMenu<0) then
              begin
                   gotoXY(11,15);
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
                8:pengurutan;
           end;

     until pilihanMenu=0; //End of Menu

end.

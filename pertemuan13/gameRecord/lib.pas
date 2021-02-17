unit lib;

interface
uses crt,sysutils;
const
     maks=1000;
     namafile='DataGame.DAT';
type
    monster=record
                 kode:string[4];
                 nama:string[8];
                 mana:string[3];
                 health,power,win:integer;
           end;
    Tmonster=array[1..maks] of monster;

var
   banyakData:integer;
   monster1:Tmonster;
   pilihanMenu:byte;

// Header of procedures
procedure addData;
procedure viewData;
procedure saveFile;
procedure loadFile;
procedure editData;
procedure hapusData;
procedure pencarian;

implementation

procedure addData; // Head of procedure addData
begin
     clrscr;
     if banyakData<maks then
        begin
             banyakData:=banyakData+1;
             writeln('Pemasukan data ke-',banyakData);

             with monster1[banyakData] do
                   begin
                        writeln('data barang ke-',banyakData);
                        write('Kode Monster              : ');readln(kode);
                        kode:=upcase(kode);
                        write('Nama Monster              : ');readln(nama);
                        nama:=upcase(nama);
                        write('Mana Monster              : ');readln(mana);
                        write('Health Monster            : ');readln(health);
                        write('Power Monster             : ');readln(power);
                   end;
        end
     else
         writeln('Data Telah Penuh!');
end; // end of procedure addData

procedure viewData; // head of procedure viewData
var
   i:integer;
begin
     clrscr;
     writeln('Data Monster');
     writeln('-------------------------------------------------------------------------------');
      //      12345678901234567890123456789012345678901234567890123456789012345678901234567890
     writeln('| NO | KODE |   NAMA   | MANA | HEALTH | POWER | WIN |');
     writeln('-------------------------------------------------------------------------------');
     for i:=1 to banyakData do
         begin
              with monster1[i] do
                   begin
                        writeln('| ',i:2,' ',
                        '| ',format('%-4s',[kode]),' ',
                        '| ',format('%-8s',[nama]),' ',
                        '| ',mana:4,' ',
                        '| ',health:6,' ',
                        '| ',power:5,' ',
                        '| ',win:3,' |');
                        //'| ',banyakData,' |'
                   end;
         end;
         writeln('-------------------------------------------------------------------------------');
         writeln('Tekan Enter Untuk Melanjutkan');
         readln;
end; // end of procedure viewdata

procedure viewData2(i:integer); // head of procedure viewdata2
begin
     clrscr;
     writeln('Data Monster');
     writeln('-------------------------------------------------------------------------------');
      //      12345678901234567890123456789012345678901234567890123456789012345678901234567890
     writeln('| NO | KODE |   NAMA   | MANA | HEALTH | POWER | WIN |');
     writeln('-------------------------------------------------------------------------------');
              with monster1[i] do
                   begin
                        writeln('| ',i:2,' ',
                        '| ',format('%-4s',[kode]),' ',
                        '| ',format('%-8s',[nama]),' ',
                        '| ',mana:3,' ',
                        '| ',health:5,' ',
                        '| ',power:5,' ',
                        '| ',win:6,' |');
                        //'| ',banyakData,' |'
                   end;
         writeln('-------------------------------------------------------------------------------');
         writeln('Tekan Enter Untuk Melanjutkan');
         readln;
end; // end of procedure viewdata2

procedure saveFile; // head of procedure saveFile
var
   i:integer;
   f:file of Tmonster; //f adalah file yang berisi data bertipe Tbarang

begin
     clrscr;
     assign(f,namafile); // hubungkan var f dengan file databarang.dat
     rewrite(f); // Tulis ulang file f (databarang.dat)

     for i:=1 to banyakData do
         begin
              write(f,monster1); // simpan data barang[i] ke file
         end;
     close(f); // tutup koneksi file
     writeln('Data telah tersimpan');
     writeln('Ada ',banyakData,' Data yang telah tersimpan');
     writeln('Tekan ENTER untuk melanjutkan');
     readln;
end; // end of procedure saveFile

procedure loadFile; // head of procedure loadFile
var
   f:file of Tmonster;
begin
     clrscr;
     assign(f,namafile); // hubungkan var f dengan file databarang.dat

     {$I-} // nonaktifkan pemeriksaan I/O
     reset(f); // buka file dengan mode baca
     {$I+} // aktifkan kembali I/O
     if IOResult<>0 then // kalu error I/O (misal file tidak ada)
        rewrite(f);//buat file kosong

     banyakData:=0;
     while not eof(f) do // selama belum END-OF-FILE dari file f
           begin
                banyakData:=banyakData+1;
                read(f,monster1); // baca dari file simpan di posisi akhir array
           end;
     close(f); // tutup koneksi file
     writeln('Pembacaan data selesai');
     writeln('Ada ',banyakData,' Data yang telah dibaca');
     writeln('Tekan ENTER untuk melanjutkan');
     readln;
end;// end of procedure loadFile

procedure editData; // head of procedure editData
var
   datake:integer;
   pilihanEdit:byte;

begin
     viewData;
     write('Mau edit data ke berapa ?');readln(datake);
     writeln('1. Kode');
     writeln('2. Nama');
     writeln('3. Mana');
     writeln('4. Health');
     write('Apa yang mau di edit ?');readln(pilihanEdit);

     if pilihanEdit=1 then
        begin
             write('Masukan Kode baru : ');readln(monster1[datake].kode);
        end
     else if pilihanEdit=2 then
        begin
             write('Masukan Nama baru : ');readln(monster1[datake].nama);
        end
     else if pilihanEdit=3 then
        begin
             write('Masukan mana baru  : ');readln(monster1[datake].mana);
        end
     else if pilihanEdit=4 then
        begin
             write('Masukan Health baru : ');readln(monster1[datake].Health);
        end
     else
         writeln('pilihan salah!');

end; // end of procedure editData

procedure hapusData; // head of procedure hapusData
var
   i,j,datake:integer;
begin
     clrscr;
     viewData;
     write('Mau apus data keberapa nich ? ');readln(datake);
     j:=datake;
     for i:=datake to banyakData do
         begin
              j:=j+1;
              monster1[i]:=monster1[j];
         end;
    banyakData:=banyakData-1;

end; // end of procedure hapusData

procedure pencarian; // head of procedure pencarian
var
   i:integer;
   pilSearch:byte;
   dicari:string;
begin
     clrscr;
     writeln('1. Kode');
     writeln('2. Nama');
     write('mau cari aps nich ? ');readln(pilSearch);

     if pilSearch=1 then
        begin
             write('Masukan kode yang dicari : ');readln(dicari);
             dicari:=upcase(dicari);

             i:=1;
             while (monster1[i].kode<>dicari) and (i<banyakData) do
                   i:=i+1;

                   if (monster1[i].kode=dicari)  then
                      begin
                           writeln('Data ditemukan di posisi ke-',i);delay(1000);
                           viewdata2(i);
                      end
                   else if (monster1[i].kode[i]=dicari[i]) then
                        begin
                           writeln('Data ditemukan di posisi ke-',i);delay(1000);
                           viewdata2(i);
                        end
                   else
                       begin
                            writeln('Maaf data tidak ditemukan');
                            readln;
                       end;

        end
        else if pilSearch=2 then
             begin
                  write('Masukan Nama yang dicari : ');readln(dicari);
                  dicari:=upcase(dicari);

                  i:=1;
                  while (pos(upcase(dicari),upcase(monster1[i].nama))=0) and (i<banyakData) do
                        i:=i+1;

                        if (pos(upcase(dicari),upcase(monster1[i].nama))>0) then
                           begin
                                writeln('Data ditemukan di posisi ke-',i);delay(1000);
                                viewdata2(i);
                           end
                        else
                            begin
                                 writeln('Maaf data tidak ditemukan');
                                 readln;
                            end;
             end;
end; // end of procedure pencarian

end.


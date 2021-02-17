program Test_Record;
uses crt,sysutils,contoh;

const
     maks=1000;
     namafile='DataBarang.DAT';
type
    warung=record
                 kodeBarang:string[4];
                 namaBarang:string[8];
                 banyakBarang,modal,harga,untung:integer;
           end;
    Tbarang=array[1..maks] of warung;

var
   banyakData:integer;
   barang:Tbarang;
   pilihanMenu:byte;

procedure addData;
begin
     clrscr;
     if banyakData<maks then
        begin
             banyakData:=banyakData+1;
             writeln('Pemasukan data ke-',banyakData);

             with barang[banyakData] do
                   begin
                        writeln('data barang ke-',banyakData);
                        write('Kode Barang              : ');readln(kodeBarang);
                        write('Nama Barang              : ');readln(namaBarang);
                        write('Banyak Barang            : ');readln(banyakBarang);
                        write('Modal Barang             : ');readln(modal);
                        write('Harga Barang             : ');readln(harga);
                        untung:=(harga*banyakBarang)-(modal*banyakBarang);
                   end;
        end
     else
         writeln('Data Telah Penuh!');
end;

procedure viewData;
var
   i:integer;

begin
     clrscr;
     writeln('Data barang');
     writeln('-------------------------------------------------------------------------------');
      //      12345678901234567890123456789012345678901234567890123456789012345678901234567890
     writeln('| NO | KODE |   NAMA   | QTY | MODAL | HARGA | UNTUNG | INDEX |');
     writeln('-------------------------------------------------------------------------------');
     for i:=1 to banyakData do
         begin
              with barang[i] do
                   begin
                        writeln('| ',i:2,' ',
                        '| ',format('%-4s',[kodeBarang]),' ',
                        '| ',format('%-8s',[namaBarang]),' ',
                        '| ',banyakBarang:3,' ',
                        '| ',modal:5,' ',
                        '| ',harga:5,' ',
                        '| ',untung:5,' |');
                        //'| ',mhs[i].indeks,' |'
                   end;
         end;
         writeln('-------------------------------------------------------------------------------');
         writeln('Tekan Enter Untuk Melanjutkan');
         readln;
end;

procedure saveFile;
var
   i:integer;
   f:file of Tbarang; //f adalah file yang berisi data bertipe Tbarang

begin
     clrscr;
     assign(f,namafile); // hubungkan var f dengan file databarang.dat
     rewrite(f); // Tulis ulang file f (databarang.dat)

     for i:=1 to banyakData do
         begin
              write(f,barang); // simpan data barang[i] ke file
         end;
     close(f); // tutup koneksi file
     writeln('Data telah tersimpan');
     writeln('Ada ',banyakData,' Data yang telah tersimpan');
     writeln('Tekan ENTER untuk melanjutkan');
     readln;

end;

procedure loadFile;
var
   f:file of Tbarang;
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
                read(f,barang); // baca dari file simpan di posisi akhir array
           end;
     close(f); // tutup koneksi file
     writeln('Pembacaan data selesai');
     writeln('Ada ',banyakData,' Data yang telah dibaca');
     writeln('Tekan ENTER untuk melanjutkan');
     readln;
end;

procedure editData;
var
   datake:integer;
   pilihanEdit:byte;

begin
     viewData;
     write('Mau edit data ke berapa ?');readln(datake);
     writeln('1. Kode');
     writeln('2. Nama');
     writeln('3. QTY');
     writeln('4. Modal');
     writeln('5. Harga');
     write('Apa yang mau di edit ?');readln(pilihanEdit);

     if pilihanEdit=1 then
        begin
             write('Masukan Kode baru : ');readln(barang[datake].kodeBarang);
        end
     else if pilihanEdit=2 then
        begin
             write('Masukan Nama baru : ');readln(barang[datake].namaBarang);
        end
     else if pilihanEdit=3 then
        begin
             write('Masukan QTY baru  : ');readln(barang[datake].banyakBarang);
        end
     else if pilihanEdit=4 then
        begin
             write('Masukan Modal baru : ');readln(barang[datake].modal);
        end
     else if pilihanEdit=5 then
        begin
             write('Masukan Harga baru : ');readln(barang[datake].harga);
        end
     else
         writeln('pilihan salah!');

     with barang[datake] do
          begin
               untung:=(harga*banyakBarang)-(modal*banyakBarang);
          end;
end;

procedure hapusData;
var
   i,datake:integer;
begin
     viewData;
     write('Mau apus data ke berapa nich ? ');readln(datake);
     for i:=banyakData to datake do
         begin
              barang[i]:=barang[i]-1;
         end;

end;

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
           writeln('0. keluar');
           gotoXY(11,12);
           write('Masukan Pilihan : ');readln(pilihanMenu);

           if (pilihanMenu>6) and (pilihanMenu<0) then
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
           end;

     until pilihanMenu=0; //End of Menu




      {for i:=1 to banyakData do
         begin
              with barang[i] do
                   begin
                        writeln('data barang ke-',i);
                        writeln('Kode Barang              : ',kodeBarang);
                        writeln('Nama Barang              : ',namaBarang);
                        writeln('Banyak Barang            : ',banyakBarang);
                        writeln('Modal Barang             : ',modal);
                        writeln('Harga Barang             : ',harga);
                        untung:=(harga*banyakBarang)-(modal*banyakBarang);
                        writeln('Untung Barang            : ',untung);
                   end;
         end;}

end.

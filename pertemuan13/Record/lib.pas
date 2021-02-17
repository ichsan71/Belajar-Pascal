unit lib; // unit library untuk kumpulan procedure dan function

interface
uses crt,sysutils;

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

// Header of procedures
procedure addData;
procedure viewData;
procedure saveFile;
procedure loadFile;
procedure editData;
procedure hapusData;
procedure pencarian;
procedure pengurutan;
procedure kotakBerjudul(x1,y1,x2,y2,latar,tulisan:byte; judul:string);

implementation

procedure addData; // Head of procedure addData
var
   i:integer;
begin
     clrscr;
     if (banyakData<maks) then
        begin
             banyakData:=banyakData+1;
             kotakBerjudul(1,1,79,24,red,black,'| Tambah Data |');
             gotoXY(3,4);
             writeln('Pemasukan data ke-',banyakData);

             with barang[banyakData] do
                   begin
                        gotoXY(3,5);
                        writeln('data barang ke-',banyakData);
                        gotoXY(3,6);
                        write('Kode Barang              : ');readln(kodeBarang);
                        kodeBarang:=upcase(kodeBarang);
                        i:=1;
                        while (barang[i].kodeBarang<>barang[banyakData].kodeBarang) and (i<banyakData-1) do  //Pengecekan duplikat data
                              i:=i+1;

                        if (barang[i].kodeBarang<>barang[banyakData].kodeBarang) or (banyakData=1) then
                           begin
                                 gotoXY(3,7);
                                 write('Nama Barang              : ');readln(namaBarang);
                                 namaBarang:=upcase(namaBarang);
                                 gotoXY(3,8);
                                 write('Banyak Barang            : ');readln(banyakBarang);
                                 gotoXY(3,9);
                                 write('Modal Barang             : ');readln(modal);
                                 gotoXY(3,10);
                                 write('Harga Barang             : ');readln(harga);
                                 untung:=(harga*banyakBarang)-(modal*banyakBarang);
                           end
                        else
                            begin
                                 gotoXY(3,11);
                                 writeln('Maaf Data sudah ada di data ke-',i);
                                 banyakData:=banyakData-1;
                                 gotoXY(3,12);
                                 writeln('Tekan ENTER untuk melanjutkan');readln;
                            end;
                   end;
        end
     else
         begin
              gotoXY(3,11);
              writeln('Data Telah Penuh!');
              gotoXY(3,12);
              writeln('Tekan ENTER untuk melanjutkan');readln;
         end;
end; // end of procedure addData

procedure viewData; // head of procedure viewData
var
   i,x,y,z:integer;
begin
     clrscr;
     kotakBerjudul(1,1,79,24,red,black,'| Data barang |');
     x:=1;
     for i:=1 to 77 do // pengulangan Garis 1
         begin
              x:=x+1;
              gotoXY(x,3);
              write(#196);
         end;
      //     12345678901234567890123456789012345678901234567890123456789012345678901234567890
     gotoXY(2,4);
     writeln('| NO | KODE |   NAMA   | QTY |  MODAL  |  HARGA  |  UNTUNG  |');
     y:=1;
     for i:=1 to 77 do // pengulangan Garis 2
         begin
              y:=y+1;
              gotoXY(y,5);
              write(#196);
         end;

     for i:=1 to banyakData do
         begin
              with barang[i] do
                   begin
                        gotoXY(2,5+i);
                        writeln(#179,' ',i:2,' ',
                        #179,' ',format('%-4s',[kodeBarang]),' ',
                        #179,' ',format('%-8s',[namaBarang]),' ',
                        #179,' ',banyakBarang:3,' ',
                        #179,'Rp.',modal:5,' ',
                        #179,'Rp.',harga:5,' ',
                        #179,'Rp.',untung:7,#179,' ');
                   end;
         end;
         z:=1;
         for i:=1 to 77 do // pengulangan Garis 3
         begin
              z:=z+1;
              gotoXY(z,banyakData+6);
              write(#196);
         end;

         gotoXY(2,banyakData+7);
         writeln('Tekan Enter Untuk Melanjutkan');
         readln;
end; // end of procedure viewdata

procedure viewData2(i:integer); // head of procedure viewdata2
var
   x,y,z,j:integer;
begin
     clrscr; // view data 2 untuk viewdata tanpa perulangan
     kotakBerjudul(1,1,79,24,red,black,'| Data barang |');
     x:=1;
     for j:=1 to 77 do // pengulangan Garis 1
         begin
              x:=x+1;
              gotoXY(x,3);
              write(#196);
         end;
      //      12345678901234567890123456789012345678901234567890123456789012345678901234567890
     gotoXY(2,4);
     writeln('| NO | KODE |   NAMA   | QTY |  MODAL  |  HARGA  |  UNTUNG  |');
     y:=1;
     for j:=1 to 77 do // pengulangan Garis 2
         begin
              y:=y+1;
              gotoXY(y,5);
              write(#196);
         end;
              with barang[i] do
                   begin
                        gotoXY(2,6);
                        writeln(#179,' ',i:2,' ',
                        #179,' ',format('%-4s',[kodeBarang]),' ',
                        #179,' ',format('%-8s',[namaBarang]),' ',
                        #179,' ',banyakBarang:3,' ',
                        #179,'Rp.',modal:5,' ',
                        #179,'Rp.',harga:5,' ',
                        #179,'Rp.',untung:7,#179,' ');
                   end;
         z:=1;
         for j:=1 to 77 do // pengulangan Garis 3
         begin
              z:=z+1;
              gotoXY(z,7);
              write(#196);
         end;

         gotoXY(2,8);
         writeln('Tekan Enter Untuk Melanjutkan');
         readln;
end; // end of procedure viewdata2

procedure saveFile; // head of procedure saveFile
var
   i:integer;
   f:file of Tbarang; //f adalah file yang berisi data bertipe Tbarang

begin
     clrscr;
     kotakBerjudul(1,1,79,24,red,blue,'| Save File |');
     assign(f,namafile); // hubungkan var f dengan file databarang.dat
     rewrite(f); // Tulis ulang file f (databarang.dat)

     for i:=1 to banyakData do
         begin
              write(f,barang); // simpan data barang[i] ke file
         end;
     close(f); // tutup koneksi file
     gotoXY(3,5);
     writeln('Data telah tersimpan');
     gotoXY(3,6);
     writeln('Ada ',banyakData,' Data yang telah tersimpan');
     gotoXY(3,7);
     writeln('Tekan ENTER untuk melanjutkan');
     readln;
end; // end of procedure saveFile

procedure loadFile; // head of procedure loadFile
var
   f:file of Tbarang;
begin
     clrscr;
     kotakBerjudul(1,1,79,24,red,yellow,'| Load File |');
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
     gotoXY(3,5);
     writeln('Pembacaan data selesai');
     gotoXY(3,6);
     writeln('Ada ',banyakData,' Data yang telah dibaca');
     gotoXY(3,7);
     writeln('Tekan ENTER untuk melanjutkan');
     readln;
end;// end of procedure loadFile

procedure editData; // head of procedure editData
var
   dicari,kodebaru:string;
   pilihanEdit,i,j:byte;

begin
     clrscr;
     viewData;
     clrscr;
     kotakBerjudul(1,1,79,24,red,black,'| Edit Data |');
     gotoXY(3,5);
     write('Masukan Kode Barang yang ingin di edit : ');readln(dicari);
     gotoXY(3,6);
     writeln('1. Kode');
     gotoXY(3,7);
     writeln('2. Nama');
     gotoXY(3,8);
     writeln('3. QTY');
     gotoXY(3,9);
     writeln('4. Modal');
     gotoXY(3,10);
     writeln('5. Harga');
     gotoXY(3,11);
     writeln('0. Kembali Ke Menu');
     gotoXY(3,12);
     write('Masukan Pilihan : ');readln(pilihanEdit);

     i:=1;
     while (barang[i].kodeBarang<>upcase(dicari)) and (i<banyakData) do // validasi edit berdasarkan Primary Key
          i:=i+1;
     if (barang[i].kodeBarang=upcase(dicari))  then
        begin

     if (pilihanEdit=1) then
        begin
             gotoXY(3,13);
             write('Masukan Kode baru : ');readln(kodebaru);
             kodebaru:=upcase(kodebaru);
             j:=1;
             while (barang[j].kodeBarang<>kodebaru) and (j<banyakData) do // validasi edit kode (primary key) tidak boleh sama dengan yang sudah ada
                   j:=j+1;

                   if (barang[j].kodeBarang=kodebaru) then
                      begin
                           gotoXY(3,14);
                           writeln('Maaf Kode telah terdaftar silahkan coba lagi');
                           barang[i].kodeBarang:=dicari;
                           readln;
                      end
                   else
                       begin
                            barang[i].kodeBarang:=upcase(kodebaru);
                            gotoXY(3,14);
                            writeln('Data berhasil diubah');
                            readln;
                       end;
        end
     else if pilihanEdit=2 then
        begin
             gotoXY(3,13);
             write('Masukan Nama baru : ');readln(barang[i].namaBarang);
             barang[i].namaBarang:=upcase(barang[i].namaBarang);
        end
     else if pilihanEdit=3 then
        begin
             gotoXY(3,13);
             write('Masukan QTY baru  : ');readln(barang[i].banyakBarang);
        end
     else if pilihanEdit=4 then
        begin
             gotoXY(3,13);
             write('Masukan Modal baru : ');readln(barang[i].modal);
        end
     else if pilihanEdit=5 then
        begin
             gotoXY(3,13);
             write('Masukan Harga baru : ');readln(barang[i].harga);
        end
     else if pilihanEdit=0 then
        begin
             gotoXY(3,13);
             write('dadah ');
        end
     else
         begin
              gotoXY(3,13);
              writeln('pilihan salah!');
              gotoXY(3,14);
              writeln('Tekan ENTER untuk melanjutkan');readln;
         end;

     with barang[i] do
          begin
               untung:=(harga*banyakBarang)-(modal*banyakBarang);
          end;

     gotoXY(3,14);
     writeln('Tekan ENTER untuk melanjutkan');readln;
        end
     else
         begin
              gotoXY(3,12);
              writeln('Maaf data tidak ditemukan');
              gotoXY(3,13);
              writeln('Tekan ENTER untuk melanjutkan');readln;
         end;

end; // end of procedure editData

procedure hapusData; // head of procedure hapusData
var
   i,j,datake:integer;
   dicari,x:string;

begin
     clrscr;
     viewData;
     clrscr;
     kotakBerjudul(1,1,79,24,red,blue,'| Hapus Data |');
     gotoXY(3,5);
     write('Masukan Kode barang yang ingin di Hapus : ');readln(dicari);
     gotoXY(3,6);
     write('apakah kamu yakin menghapus data ini [Y/N] ? ');readln(x);
     if upcase(x)='Y' then
     begin
     datake:=1;
             while (barang[datake].kodeBarang<>upcase(dicari)) and (datake<banyakData) do
                   datake:=datake+1;

                   if (barang[datake].kodeBarang=upcase(dicari))  then
                      begin
                           j:=datake;
                           for i:=datake to banyakData do
                               begin
                                    j:=j+1;
                                    barang[i]:=barang[j];
                               end;
                           banyakData:=banyakData-1;
                      end
                   else
                       begin
                            gotoXY(3,6);
                            writeln('Maaf data tidak ditemukan');
                            gotoXY(3,7);
                            writeln('Tekan ENTER untuk melanjutkan');readln;
                       end;
     gotoXY(3,6);
     writeln('Data Berhasil dihapus');
     gotoXY(3,7);
     writeln('Tekan ENTER untuk melanjutkan');readln;
     viewData;
     end
     else
         begin
              gotoXY(3,7);
              writeln('Tekan ENTER untuk melanjutkan');readln;
         end;

end; // end of procedure hapusData

procedure pencarian; // head of procedure pencarian
var
   i:integer;
   pilSearch:byte;
   dicari:string[8];
begin
     repeat
     clrscr;
     kotakBerjudul(1,1,79,24,red,white,'| Pencarian Data |');
     gotoXY(3,5);
     writeln('1. Kode');
     gotoXY(3,6);
     writeln('2. Nama');
     gotoXY(3,7);
     writeln('3. Kembali ke Menu');
     gotoXY(3,8);
     write('Masukan Pilihan : ');readln(pilSearch);

     if pilSearch=1 then
        begin
             gotoXY(3,9);
             write('Masukan kode yang dicari : ');readln(dicari);
             dicari:=upcase(dicari);

             i:=1;
             while (barang[i].kodeBarang<>dicari) and (i<banyakData) do
                   i:=i+1;

                   if (barang[i].kodeBarang=dicari)  then
                      begin
                           gotoXY(3,10);
                           writeln('Data ditemukan di posisi ke-',i);delay(1000);
                           viewdata2(i);
                      end
                   else if (barang[i].kodeBarang[i]=dicari[i]) then
                        begin
                           gotoXY(3,10);
                           writeln('Data ditemukan di posisi ke-',i);delay(1000);
                           viewdata2(i);
                        end
                   else
                       begin
                            gotoXY(3,10);
                            writeln('Maaf data tidak ditemukan');
                            gotoXY(3,11);
                            writeln('Tekan ENTER untuk melanjutkan');readln;
                       end;

        end

        else if pilSearch=2 then
             begin
                  gotoXY(3,9);
                  write('Masukan Nama yang dicari : ');readln(dicari);
                  dicari:=upcase(dicari);

                  i:=1;
                  while (pos(upcase(dicari),upcase(barang[i].namaBarang))=0) and (i<banyakData) do
                        i:=i+1;

                        if (pos(upcase(dicari),upcase(barang[i].namaBarang))>0) then
                           begin
                                gotoXY(3,10);
                                writeln('Data ditemukan di posisi ke-',i);delay(1000);
                                viewdata2(i);
                           end
                        else
                            begin
                                 gotoXY(3,10);
                                 writeln('Maaf data tidak ditemukan');
                                 gotoXY(3,11);
                                 writeln('Tekan ENTER untuk melanjutkan');readln;
                            end;
             end
        else if pilSearch=3 then
             begin
                  pilsearch:=0;
             end
        else
            begin
                 gotoXY(3,10);
                 writeln('Pilihan salah');
                 gotoXY(3,11);
                 writeln('Tekan ENTER untuk melanjutkan');readln;
            end;


        until pilSearch=0;
end; // end of procedure pencarian


procedure pengurutan; // head of procedure pengurutan
var
   i,j,indexmin,pil:integer;
   temp:warung;
begin
     repeat
     clrscr;
     kotakBerjudul(1,1,79,24,red,white,'| Pengurutan Data |');

     gotoXY(3,5);
     writeln('1. Pengurutan untung terkecil');
     gotoXY(3,6);
     writeln('2. Pengurutan kode barang terkecil');
     gotoXY(3,7);
     writeln('0. Kembali ke Menu');
     gotoXY(3,8);
     write('Masukan Pilihan : ');readln(pil);

     if pil=1 then
     begin
     //pengurutan mengunakan selection sort untung terkecil
     for i:=1 to banyakData-1 do
         begin
              indexmin:=i;
              for j:=i+1 to banyakData do
                  begin
                       if barang[j].untung < barang[indexmin].untung then
                          begin
                               indexmin:=j;
                          end;
                  end;
              if indexmin <> i then
                 begin
                      temp:=barang[i];
                      barang[i]:=barang[indexmin];
                      barang[indexmin]:=temp;
                 end;
         end;
    gotoXY(3,9);
    writeln('Pengurutan berhasil');
    gotoXY(3,10);
    writeln('Tekan ENTER untuk melanjutkan');
    readln;
    end
    else if pil=2 then
    begin
     //pengurutan mengunakan bubble sort kode barang terkecil
     for i:=1 to banyakData-1 do
         begin
              for j:=banyakData downto i+1 do
                  begin
                       if barang[j].kodeBarang < barang[j-1].kodeBarang then
                          begin
                               temp:=barang[j];
                               barang[j]:=barang[j-1];
                               barang[j-1]:=temp;
                          end;
                  end;
         end;
    gotoXY(3,9);
    writeln('Pengurutan berhasil');
    gotoXY(3,10);
    writeln('Tekan ENTER untuk melanjutkan');
    readln;
    end;

    until pil=0;
end; // end of procedure pengurutan

procedure kotakBerjudul(x1,y1,x2,y2,latar,tulisan:byte; judul:string); //head of procedure Kotak berjudul
var
   i:byte;
   lebar,panjangJudul,sisa,posisiJudul:integer;
begin
     textbackground(latar);
     textcolor(tulisan);
     window(x1,y1,x2,y2);// seting windows aktif
     clrscr;// clear screen sesuai ukuran windows
     window(1,1,80,25);// kembalikan ke windows biasa
     gotoxy(x1,y1);write(#218);
     for i:=x1+1 to x2-1 do
     begin
          gotoxy(i,y1);write(#196);
     end;
     gotoxy(x2,y1);write(#191);
     for i:=y1+1 to y2-1 do
     begin
          gotoxy(x2,i);write(#179);
     end;
     gotoxy(x2,y2);write(#217);
     for i:=x2-1 downto x1+1  do
     begin
          gotoxy(i,y2);write(#196);
     end;
     gotoxy(x1,y2);write(#192);
     for i:=y2-1 downto y1+1  do
     begin
          gotoxy(x1,i);write(#179);
     end;

     lebar:=x2-x1;
     panjangJudul:=length(judul);
     sisa:=lebar-panjangJudul;
     posisijudul:=x1+sisa div 2;
     gotoXY(posisijudul,y1);
     write(judul);
end; // end of procedure Kotak berjudul
end.


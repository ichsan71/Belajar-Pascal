program belajar;

uses
  crt;

const
  maks = 100;
type
  TArrayString = array[1..maks] of string;
  TArrayInt = array[1..maks] of integer;
  TArrayNilai = array[1..maks, 1..maks] of string;
var
  MataKuliah, NamaMahasiswa: TArrayString;
  SksMatkul, NimMahasiswa: TArrayInt;
  Nilai: TArrayNilai;
  banyakMatkul, banyakMahasiswa, i, j, m, p, xAwal, yAwal, indeks, totalSKS: integer;
  ip: real;

begin
  write('Banyak Mata Kuliah : ');
  readln(banyakMatkul);
  for i := 1 to banyakMatkul do
  begin
    write('Nama Mata Kuliah ', i, ' : ');
    readln(MataKuliah[i]);
    write('SKS Matkul ', i, ' : ');
    readln(SksMatkul[i]);
  end;
  writeln;
  write('Banyak Mahasiswa : ');
  readln(banyakMahasiswa);

  for i := 1 to banyakMahasiswa do
  begin
    write('NIM Mahasiswa ', i, ' : ');
    readln(NimMahasiswa[i]);
    write('Nama Mahasiswa  ', i, ' : ');
    readln(NamaMahasiswa[i]);
  end;
  writeln;
  for m := 1 to banyakMahasiswa do
    for p := 1 to banyakMatkul do
    begin
      write('data ke-',p,' Nilai Mahs ', NimMahasiswa[m], ' mata kuliah ', MataKuliah[p], ' : ');
      readln(Nilai[m, p]);
    end;
  writeln;

  for m := 1 to banyakMahasiswa do
    for p := 1 to banyakMatkul do
    begin
      writeln('data ke-',p,' Nilai Mahs ', NimMahasiswa[m], ' mata kuliah ', MataKuliah[p], ' : ', Nilai[m, p]);
    end;

  xAwal := whereX;
  yAwal := whereY;

  for i := 1 to banyakMatkul do
  begin
    gotoxy(xAwal + i * 15, yAwal);
    write(MataKuliah[i]);
  end;
  writeln('        IP');
  xAwal := 1;
  yAwal := whereY + 1;
  for i := 1 to 5 * 15 do
  begin
    gotoxy(xAwal + i, yAwal);
    write('-');
  end;
  writeln;
  xAwal := 1;
  yAwal := whereY;
  for i := 1 to banyakMahasiswa do
  begin
    ip := 0;
    totalSKS := 0;
    gotoxy(xAwal, yAwal + i);
    write(NimMahasiswa[i]);
    for j := 1 to banyakMatkul + 1 do
    begin
      if (Nilai[i, j] = 'A') then
        indeks := 4
      else if (Nilai[i, j] = 'B') then
        indeks := 3
      else if (Nilai[i, j] = 'C') then
        indeks := 2
      else if (Nilai[i, j] = 'D') then
        indeks := 1
      else
        indeks := 0;

      if (j > banyakMatkul) then
      begin
        ip := ip / totalSKS;
        gotoxy(xAwal + j * 18 - 3, yAwal + i);
        write(ip: 0: 2);
      end
      else
      begin
        ip := ip + (indeks * SksMatkul[j]);
        totalSKS := totalSKS + SksMatkul[j];
        gotoxy(xAwal + j * 15, yAwal + i);
        write(Nilai[i, j]);
      end;

    end;
  end;

  readln;
end.

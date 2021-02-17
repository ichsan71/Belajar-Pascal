program belajar_fungsi;
uses math;

var
   cube1,cube2:integer;
begin
     write('insert value cube 1 : ');readln(cube1);
     write('insert value cube 2 : ');readln(cube2);
     writeln('--------------------------------------');
     writeln('Volume Cube 1 : ',cubeVolume1(cube1));
     writeln('Volume Cube 2 : ',cubeVolume2(cube2));
     writeln('--------------------------------------');
     writeln('Volume cube 1 + Volume Cube 2 : ',cubeVolumeplus(cube1,cube2));
     readln;
end.

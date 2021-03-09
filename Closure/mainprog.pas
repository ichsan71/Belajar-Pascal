program test_doang;


function iniNama(nama:string):string;
begin
     iniNama:= nama;
end;

procedure salam(waktu:string);
begin
     writeln('Selamat ',waktu,'! Haloo,',iniNama('Ichsan'));
     readln;
end;


begin
     salam('Pagi');
     salam('Pagi');
     salam('Siang');
     salam('Malam');

     readln;
end.

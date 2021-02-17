unit fungsi;

interface
function kaidah1A(x:byte; bukti:char):byte;

implementation
function kaidah1A(x:byte; bukti:char):byte;

begin
     case bukti of
     'A': kaidah1A:=x*0;
     'B': kaidah1A:=x*1;
     'C': kaidah1A:=x*x;
     'D': kaidah1A:=x*x;
     end;
end;

end.

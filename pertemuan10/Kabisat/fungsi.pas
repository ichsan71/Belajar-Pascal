unit fungsi;

interface
function kabisat(year:integer):boolean;
function Abulan(year,month:integer):integer;
function validasiTgl(year,month,day:integer):boolean;
{function harike(day,month,year:integer):integer;}

implementation
function kabisat(year:integer):boolean;
begin
     if year mod 400 = 0 then
        begin
             kabisat:=true;
        end
     else if year mod 100 = 0  then
          begin
               kabisat:=false;
          end
     else if year mod 4 = 0 then
          begin
             kabisat:=true;
          end
     else
         kabisat:=false;
end; // end of function 1

function Abulan(year,month:integer):integer;
var
   hasil:boolean;
begin
     hasil:=kabisat(year);

     if hasil=true then
        begin
             Abulan:=29;
        end
     else
         begin
              Abulan:=28;
         end;

     case month of
     1: Abulan:=31;
     3: Abulan:=31;
     4: Abulan:=30;
     5: Abulan:=31;
     6: Abulan:=30;
     7: Abulan:=31;
     8: Abulan:=31;
     9: Abulan:=30;
     10: Abulan:=31;
     11: Abulan:=30;
     12: Abulan:=31;
     end;

end; // end of function 2

function validasiTgl(year,month,day:integer):boolean;
var
   Akbulan:integer;
begin

     Akbulan:=Abulan(year,month);

     if (day<=Akbulan) and (day>0) then
        validasiTgl:=True
     else
         validasiTgl:=False;
end; // end of function 3

{function harike(day,month,year:integer):integer;
var
   result:integer;
begin
     result:=Abulan(year,month);

end; // end of function 4
}
end. // end of unit

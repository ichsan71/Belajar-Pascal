program kebalikan;
uses crt;

function balik(ui:string):string;
var
   na,i:byte;
begin
     na:=length(ui);
     for i:=na downto 1 do
         begin
              na:=i;
              //balik:=copy(ui,na,1);
              write(copy(ui,na,1));delay(100);
         end;
end; //end of function

var
   hasil,ui:string;
begin
     write('Masukan Tulisan : ');readln(ui);

     hasil:=balik(ui);
     writeln(hasil);

     readln;
end.


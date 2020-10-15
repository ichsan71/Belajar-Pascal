program Case_statement;
uses crt;

var
   score:integer;

begin
     clrscr;

     write('Enter The score 0-100 : '); readln(score);

     case score of
          0..50:begin
                     writeln('You got D');
                end;
          51..60:begin
                     writeln('You got C');
                end;
          61..70:begin
                     writeln('you got B');
                 end;
          71..100:begin
                       writeln('you got A+');
                  end;
     else
         begin
             writeln('You enter the wrong value');
         end;
     end;
     readln;
end.

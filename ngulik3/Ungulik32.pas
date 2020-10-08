program Learn_data_type;
uses crt;

var
   Fname:string;
   Lname:string;
   num1:integer;
   num2:integer;
begin
     write('Enter First name    : '); readln(Fname);
     write('Enter Last name     : '); readln(Lname);
     writeln;
     writeln;
     writeln('nice to meet u, ',Fname,' ',Lname);

     write('Enter First integer      : '); readln(num1);
     write('Enter Second integer     : '); readln(num2);
     writeln('The sum of First Integer and Second Integer = ',num1+num2);
     writeln;
     writeln('Press <Enter> to quit');
     readln;

end.


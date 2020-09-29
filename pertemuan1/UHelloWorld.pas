program HelloWorld;
uses crt;//crt = library
begin
     gotoXY(80,2);
     textBackGround(green);
     textColor(4);
     writeln('Hello World');
     readln;

     gotoXY(40,3);
     textBackground(blue);
     textColor(6);
     write('My name is ichsan');
     readln;// menunggu sampai user menekan enter
end.


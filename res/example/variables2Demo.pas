program Varibles2Demo;
uses crt;
var
    a   : integer;
    s   : string;
begin
    a := 12;
    writeln('a = ', a); //  12
    a := 78;
    writeln('a = ', a); //  78
    s := 'Hello';
    writeln('s = ', s); //  'hello'
    s := ', World';
    writeln('s = ', s); //  ', World'
end.
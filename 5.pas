program compare;
var a,b,c,y:real;
begin
    writeln('Введите числа A, B, C');
    readln(a,b,c);
    if (c>=b) and (b>=a) then
        y:=a-b-c
    else
        y:=c*a*(5+b);
    writeln('Y=',y:2:0);
end.

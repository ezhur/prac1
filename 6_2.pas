program graph;
var x,y:real;
begin
    writeln('������ ���न���� x, y');
    readln(x,y);
    if ((sqr(x)+sqr(y))>=0) and ((sqr(x)+sqr(y))<=36) and (y>=(3-x)) then
        writeln('��')
    else
        writeln('���');
end.

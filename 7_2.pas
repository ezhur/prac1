program pro;
uses crt;
var n,m:integer;
    p:real;
    ch:char;
begin
    repeat
        clrscr;
        writeln('Введите m');
        readln(m);
        p:=1;
        for n:=1 to m do
            p:=p*sqr(n)/(sqrt(n*(n+1)));
        writeln('P=',p:2:8);
        writeln('Для продолжения работы программы нажмите Enter');
        ch:=readkey;
    until ord(ch)<>13;
end.

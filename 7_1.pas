program sum;
uses crt;
var k:integer;
    s,eps:real;
    ch:char;
begin
    repeat
       // clrscr;
        writeln('Введите точность суммирования eps ');
        readln(eps);
        s:=0;
        k:=1;
        while (1/(2*k-1))>=eps do begin
            if (k mod 2)=0  then
                s:=s-1/(2*k-1)
            else
                s:=s+1/(2*k-1);
            k:=k+1;
        end;
        writeln('S=',s:2:8);
        writeln('Для продолжения работы программы нажмите Enter');
        ch:=readkey;
    until ord(ch)<>13;
end.

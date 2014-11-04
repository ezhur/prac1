program mas;
uses crt;
var a:array[1..9] of integer;
    n,f,i:integer;
begin
    clrscr;
    writeln('Введите число N');
    readln(n);
    i:=0;
    f:=1;
    repeat
        i:=i+1;
        f:=f*i;
        a[i]:=trunc(n/f) mod (i+1);
    until trunc(n/f)=0;
    write('В факториальной системе счисления: N=');
    for i:=i-1 downto 1 do write(a[i]);
    readkey;
end.

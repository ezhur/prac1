program numb;
var k:integer;
begin
    writeln('Введите трехзначное число');
    readln(k);
    if (k<100) or (k>999) then
        writeln('Вы ввели не трехзначное число!')
    else begin
        if ((k div 100)>((k div 10) mod 10)) and (((k div 10) mod 10)>((k mod 100) mod 10)) then
            writeln('Да')
        else
            writeln('Нет');
    end;
end.

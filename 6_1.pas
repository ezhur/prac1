program numb;
var k:integer;
begin
    writeln('������ ��姭�筮� �᫮');
    readln(k);
    if (k<100) or (k>999) then
        writeln('�� ����� �� ��姭�筮� �᫮!')
    else begin
        if ((k div 100)>((k div 10) mod 10)) and (((k div 10) mod 10)>((k mod 100) mod 10)) then
            writeln('��')
        else
            writeln('���');
    end;
end.

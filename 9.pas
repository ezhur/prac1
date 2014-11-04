program birthday;
uses crt;
type month=(jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec);
     mns=array [0..11] of byte;
var st:array [0..11] of string=('jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec');
    length:mns=(31,28,31,30,31,30,31,31,30,31,30,31);
    m:string;
    i:month;
    day:integer;
    ch:char;
    flag:boolean;
begin
{$I-} {$R-}
    repeat
        flag:=false;
        clrscr;
        repeat
            writeln('Введите месяц');
            readln(m);
            for i:=jan to dec do begin
                if m=st[ord(i)] then break
                else if i=dec then writeln('Месяц введен неверно',chr(10));
            end;
        until m=st[ord(i)];
        repeat
            writeln;
            writeln('Введите день');
            readln(day);
            if ioresult=0 then begin
                if ((day>=1)and(day<=length[ord(i)])) then flag:=true
                else writeln('День введен неверно');
            end
            else writeln('День введен неверно');
        until flag=true;
        writeln(chr(10),'Введенная дата: ',day,' ',m,chr(10));
        writeln('Дата рождения: 27 aug',chr(10));
        if ((i>aug)or(i=aug)and(day>27)) then writeln('Раньше');
        if ((i=aug)and(day=27)) then writeln('Точно');
        if ((i<aug)or(i=aug)and(day<27)) then writeln('Позже');
        writeln(chr(10),'Для продолжени работы программы нажмите (y)');
        ch:=readkey;
    until(ch<>'y');
end.

program date;
uses crt;
type month=(jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec);
var st:array [0..11] of string=('jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec');
    m:string;
    i:month;
    d:1..31;
    day:integer;
    ch:char;
    flag:boolean;
begin
{$I-} {$R-}
    repeat
        flag:=false;
        clrscr;
        repeat
            writeln('������ ����');
            readln(day);
            if ioresult=0 then begin
                if ((day>=1)and(day<=31)) then begin
                    d:=day;
                    flag:=true;
                end
                else writeln('���� ������ ����୮',chr(10));
            end
            else writeln('���� ������ ����୮',chr(10));
        until flag=true;
        repeat
            writeln(chr(10),'������ �����');
            readln(m);
            for i:=jan to dec do begin
                if m=st[ord(i)] then break
                else if i=dec then writeln('����� ������ ����୮');
            end;
        until m=st[ord(i)];
        writeln(chr(10),'��������� ���: ',d,' ',m,chr(10));
        writeln('�த������? (S), (s), (�), (�)');
        ch:=readkey;
    until((ch<>'S')and(ch<>'s')and(ch<>'�')and(ch<>'�'));
end.

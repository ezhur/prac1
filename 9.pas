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
            writeln('������ �����');
            readln(m);
            for i:=jan to dec do begin
                if m=st[ord(i)] then break
                else if i=dec then writeln('����� ������ ����୮',chr(10));
            end;
        until m=st[ord(i)];
        repeat
            writeln;
            writeln('������ ����');
            readln(day);
            if ioresult=0 then begin
                if ((day>=1)and(day<=length[ord(i)])) then flag:=true
                else writeln('���� ������ ����୮');
            end
            else writeln('���� ������ ����୮');
        until flag=true;
        writeln(chr(10),'��������� ���: ',day,' ',m,chr(10));
        writeln('��� ஦�����: 27 aug',chr(10));
        if ((i>aug)or(i=aug)and(day>27)) then writeln('�����');
        if ((i=aug)and(day=27)) then writeln('��筮');
        if ((i<aug)or(i=aug)and(day<27)) then writeln('�����');
        writeln(chr(10),'��� �த������ ࠡ��� �ணࠬ�� ������ (y)');
        ch:=readkey;
    until(ch<>'y');
end.

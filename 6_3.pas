program symbol;
var s1,s2,s3:char;
begin
    writeln('������ s1, s2, s3');
    read(s1,s2,s3);
    if (ord(s1)>ord(s2)) and (ord(s2)<ord(s3)) then
        writeln('��')
    else
        writeln('���');
end.

uses crt;
var a, b, r: real;
    z: char;
label in_z;
begin
  clrscr;
  write ('����� 1 �᫮: ');  readln(a);
  write ('����� 2 �᫮: ');  readln(b);
  in_z: write ('����� ���� (+,-,*,/): ');  readln(z);
  case z of
    '+': r:=a+b;
    '-': r:=a-b;
    '*': r:=a*b;
    '/': r:=a/b;
    else
      writeln ('��� ���! � ᪠���: ����� ����, � �� �� ���?');
      readln;
      goto in_z;
  end;
  writeln (a:8:4, ' ', z, ' ', b:8:4, ' = ', r:8:4);
  repeat until keypressed;
end.
uses crt;
var a, b, r: real;
    z: char;
label in_z;
begin
  clrscr;
  write ('Введи 1 число: ');  readln(a);
  write ('Введи 2 число: ');  readln(b);
  in_z: write ('Введи знак (+,-,*,/): ');  readln(z);
  case z of
    '+': r:=a+b;
    '-': r:=a-b;
    '*': r:=a*b;
    '/': r:=a/b;
    else
      writeln ('Вот лох! Я сказал: введи ЗНАК, а ты что ввёл?');
      readln;
      goto in_z;
  end;
  writeln (a:8:4, ' ', z, ' ', b:8:4, ' = ', r:8:4);
  repeat until keypressed;
end.
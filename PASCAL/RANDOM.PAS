uses Crt;
var
  x, y, c: Byte;
begin
  TextBackground(Black);
  ClrScr;
  repeat
    x := Random(80);
    y := Random(25);
    c := Random(16);
    Window(x, y, x + 5, y + 3);
    TextBackground(c);
    ClrScr;
  until KeyPressed;
end.
Uses
  Crt, Graph;

Procedure Pause;
Var
  C: Char;
Begin
  while keypressed do
    C := readkey;
  repeat until keypressed;
End;

Procedure Recur(x, y, r, k: Integer);
Begin
  if r > k then
    Recur(x, y, r div (1 + Random(3)), k);
  SetColor(Random(GetMaxColor) + 1);
  Circle(x, y, r);
  SetColor(Random(GetMaxColor) + 1);
  Rectangle(x - r - 1, y - r - 1, x + r + 1, y + r + 1);
End;

Procedure Draw;
Var
  grDriver, grMode, ErrCode, x, y: Integer;
Begin
  grDriver := Detect;
  InitGraph(grDriver, grMode, '');
  ErrCode := GraphResult;
  if ErrCode = grOk then
    begin
      x := GetMaxX div 2;
      y := GetMaxY div 2;
      Recur(x, y, GetMaxY - 10, 1 + Random(20));
      Pause;
      CloseGraph;
    end
  else
    WriteLn('Graphics error: ', GraphErrorMsg(ErrCode));
End;

Begin
  Randomize;
  Draw;
End.

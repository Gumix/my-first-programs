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
Var
  rr: Integer;
Begin
  if r > k then
    begin
      Recur(x + r, y, r div 2, k);
      Recur(x, y + r, r div 2, k);
      Recur(x - r, y, r div 2, k);
      Recur(x, y - r, r div 2, k);
      Recur(x, y, r div 2, k * 2);
    end;
  SetColor(Random(GetMaxColor) + 1);
  rr := Random(5) - 10;
  Circle(x, y, r + rr);
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
      Recur(x, y, GetMaxY, 20);
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

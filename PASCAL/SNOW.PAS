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

Procedure Snowflake;
Var
  x, y: Real;
  R, rx, ry, cx, cy, i: Integer;
Begin
  cx := GetMaxX div 2;
  cy := GetMaxY div 2;
  R := cy - 50;
  for i := 0 to 360 do
    begin
      rx := Random(cx div 5) - (cx div 10);
      ry := Random(cy div 5) - (cy div 10);
      x := (R + rx) * Cos(i * Pi / 180);
      y := (R + ry) * Sin(i * Pi / 180);
      Line(cx + rx, cy + ry, cx + Trunc(x), cy + Trunc(y));
    end;
End;

Procedure Draw;
Var
  grDriver, grMode, ErrCode: Integer;
Begin
  grDriver := Detect;
  InitGraph(grDriver, grMode, '');
  ErrCode := GraphResult;
  if ErrCode = grOk then
    begin
      Snowflake;
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

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

Procedure Recur(x1, y1, x2, y2, r: Integer);
Var
  x, y, d: Integer;
Begin
  if r > 0 then
    begin
      x := x1 + ((x2 - x1) div 2);
      y := y1 + ((y2 - y1) div 2);
      d := r div 20;
      SetFillStyle(SlashFill, LightRed);
      PieSlice(x + d, y - d,   0,  90, r);
      PieSlice(x - d, y + d, 180, 270, r);
      SetFillStyle(BkSlashFill, LightRed);
      PieSlice(x - d, y - d,  90, 180, r);
      PieSlice(x + d, y + d, 270, 360, r);

      Recur(x1, y1, x,  y,  r - 20);
      Recur(x,  y1, x2, y,  r - 20);
      Recur(x1, y,  x,  y2, r - 20);
      Recur(x,  y,  x2, y2, r - 20);
      Recur(x1, y1, x2, y,  r - 40);
      Recur(x1, y,  x2, y2, r - 40);
      Recur(x1, y1, x,  y2, r - 40);
      Recur(x,  y1, x2, y2, r - 40);
    end;
End;

Procedure Draw;
Const
  Poly: array[1..4] of PointType = (
        (X: 320; Y:   0), (X: 640; Y: 240),
        (X: 320; Y: 480), (X: 0;   Y: 240));
  Smile: FillPatternType = ($00, $66, $66, $00, $00, $42, $3C, $00);
Var
  grDriver, grMode, ErrCode: Integer;
Begin
  grDriver := Detect;
  InitGraph(grDriver, grMode, '');
  ErrCode := GraphResult;
  if ErrCode = grOk then
    begin
      SetColor(Black);
      SetFillPattern(Smile, DarkGray);
      FillPoly(SizeOf(Poly) div SizeOf(PointType), Poly);
      Recur(0, 0, GetMaxX, GetMaxY, 60);
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

uses crt, graph;
var
  gd, gm: Integer;
  Radius: Integer;
begin
  gd := Detect;
  InitGraph(gd, gm, '');
  if GraphResult <> grOK then Halt(1);
  SetFillStyle(1,8);
  PieSlice(325, 245, 0, 45, 50);
  PieSlice(325, 235, 90, 135, 50);
  PieSlice(315, 235, 180, 225, 50);
  PieSlice(315, 245, 270, 315, 50);
  for Radius := 13 to 80 do
    Circle(320, 240, Radius * 5);
  repeat until keypressed;
  CloseGraph;
End.

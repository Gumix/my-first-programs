uses crt, graph;
var gd, gm: integer;
begin
  gd := detect;
  gm := 0;
  initgraph (gd, gm, '');
  setfillstyle (0, 0);
  bar3D (320, 220, 320, 120, 25, true);
  bar3D (320, 260, 320, 360, 25, true);
  setfillstyle (4, 8);
  bar3D (280, 220, 140, 120, 25, true);
  bar3D (360, 260, 500, 360, 25, true);
  setfillstyle (5, 8);
  bar3D (360, 220, 500, 120, 25, true);
  bar3D (280, 260, 140, 360, 25, true);
  repeat until keypressed;
end.

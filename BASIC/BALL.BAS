SCREEN 12
W = 640
H = 480
R = 30
x = 100
y = 100
dx = 7
dy = 3
WINDOW (0, 0)-(W, H)
LINE (0, 0)-(W, H), 3, B
DO
  CIRCLE (x, y), R, 5
  FOR t = 1 TO 10000: NEXT t
  CIRCLE (x, y), R, 0
  IF x + dx - R <= 0 OR x + dx + R >= W THEN
    dx = -dx
  END IF
  IF y + dy - R <= 0 OR y + dy + R >= H THEN
    dy = -dy
  END IF
  x = x + dx
  y = y + dy
LOOP

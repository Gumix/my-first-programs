SCREEN 12
A1 = 320
B1 = 240
A = 450
B = 239
FOR X = 1 TO 100
  LINE (A1, B1)-(A - A1 - X, B - B1 + X), 2
NEXT

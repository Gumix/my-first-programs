SCREEN 1
X = 160: Y = 100
FOR I = 1 TO 19
  XL = X - I * 8: YL = Y - I * 2
  XR = X + I * 8: YR = Y + I
  LINE (XL, YL)-(XR, YR), 1, B
NEXT

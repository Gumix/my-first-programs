SCREEN 12
X = 320: Y = 240
FOR I = 1 TO 110
  XL = X - I * 3: YL = Y - I * 2
  XR = X + I * 3: YR = Y + I * 1.5
  LINE (XL, YL)-(XR, YR), 4, B
NEXT

CLS
INPUT "A = ", A
INPUT "B = ", B
INPUT "C = ", C
LET D = (B * B) - (4 * A * C)
IF D >= 0 THEN
  LET S = SQR(D)
  LET X1 = (-B + S) / (2 * A)
  LET X2 = (-B - S) / (2 * A)
  PRINT
  PRINT USING "X1 = ##.####"; X1
  PRINT USING "X2 = ##.####"; X2
END IF
END

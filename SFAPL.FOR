      SUBROUTINE SFAPL(N,Y,NFP,FILTR)
C
C     SMOOTHING OF DATA USING FILTER COEFFICIENTS CALCULATED BY SFCMP
C
      INTEGER NFP,N
      DOUBLE PRECISION Y(N),FILTR(2*NFP+1),SUM
C
      DO 100 I=1,N-2*NFP
	    SUM=0.0
	    DO 200 II=1,2*NFP+1
		  SUM=SUM+FILTR(II)*Y(I+II-1)
200	    CONTINUE
	    Y(NFP+I)=SUM
100   CONTINUE
C
      RETURN
      END

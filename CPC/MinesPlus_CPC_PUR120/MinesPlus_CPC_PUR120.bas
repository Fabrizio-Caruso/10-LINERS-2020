1DEFINT A-W:B=40:W=231:H=20:D=500:BORDER 0:M=230:N=400:W$="ǎ":U=2:Z=.9:INK 0,0:DEF FNRR(X)=RND(1)*X:IF J=0 THEN DIM B(D)
2J=0:MODE 0:PEN 6:LOCATE 1,1:?"IJKL SPC":FOR A=0 TO D:B(A)=0:NEXT:T=4:I=M:P=M:FOR E=60 TO 79:A=E+H*FNRR(H):GOSUB 10:NEXT
3LOCATE 2,1:PEN 9:?9-F;:PEN 10:?"Ǧ";:PEN 8:?U;:PEN 4:?J;:PEN 2:?R:IF B(P)=36 THEN SOUND 1,D,4:J=J+9:F=F+(F>0)
4IF RND(1)>Z THEN A=P-4+2*FNRR(4)+B*FNRR(1-(P<395))-B:I=M:T=4:GOSUB 10:PEN 3:LOCATE 7,2:?" MINES+ ":Z=Z-.0005
5U=U*(P<460)*(P>59):L=J AND 3:A=P:I=W:T=9+K MOD 3:GOSUB 10:Y=0:IF J>R THEN R=J:ELSE IF J>=K*D THEN K=K+1:F=0:U=U-(U<9)
6INK 0,0:S=ASC(INKEY$+"@"):E=S AND 1:C=S-107+E:IF SGN(C)=C THEN Y=1:A=P:I=M:T=4:GOSUB 10:P=P+C*19*E+C:J=J+1:SOUND 1,N,3
7Q=(P>79)*(P<440):A=G:I=36:T=1:GOSUB 10:G=0:IF L=3 THEN IF Y=1 THEN G=60+FNRR(N):A=G:I=227:T=7:GOSUB 10
8IF S=32 THEN IF F<9 THEN I=S:FOR E=0 TO 1:A=P-1+E*2:GOSUB 10:A=P+B*E-H:GOSUB 10:NEXT:F=F+1:I=227:A=P:GOSUB 10:INK 0,3
9ON-((U>0)AND(B(P)<>M)) GOTO 3:U=U-1:SOUND 3,999,9:F=0:T=3:A=P:I=227:GOSUB 10:ON-(U>0) GOTO 3:CALL &BB18:K=0:Q=0:GOTO 1
10B(A)=I:X=1+A MOD H:LOCATE X,1+A\H:PEN T:?CHR$(I):IF Q THEN RETURN:ELSE PEN 6:LOCATE X,3:?W$:LOCATE X,24:?W$:RETURN
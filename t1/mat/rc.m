clear
pkg load symbolic

syms R1
syms R2
syms R3
syms R4
syms R5
syms R6
syms R7


syms V1
syms V2
syms V3
syms V4
syms V5
syms V6
syms V7



syms Va
syms Vc

syms Ib
syms Id

syms Ic
syms Vb

syms Kc
syms Kb

syms Ia

R1 = 1.03979919241 *1000
R2 = 2.07348604745 *1000
R3 = 3.03922290863 *1000
R4 = 4.02471521851 *1000
R5 = 3.10131083327 *1000
R6 = 2.05714481184 *1000
R7 = 1.00418069758 *1000
Va = 5.21434780409 
Id = 1.04967525215 *0.001
Kb = 7.12406804899 *0.001
Kc = 8.07016964594 *1000


Vc = Kc * Ic

%A = [R3,-1+1/(Kb*R3),0;R4+R3+R1,-R3,-R4;-R4,0,R6+R7+R4-Kc]
A = [-R3*Kb,(1-Kb*R3),0;R4+R3+R1,R3,R4;R4,0,R6+R7+R4-Kc]
B = [0;Va;0]

C=[Kc/R6,0,1,-Kc/R6,0,0,0;0,0,0,-1,0,0,1;-1/R6,0,-1/R4,1/R6+1/R4,0,-1/R1,1/R1;1/R7+1/R6,0,0,-1/R6,0,0,0;0,1/R5,-1/R5-Kb,0,0,Kb,0;0,0,Kb,0,1/R2,-1/R2-Kb,0;0,0,-1/R3,0,-1/R2,1/R3+1/R2+1/R1,-1/R1]
D=[0;Va;0;0;Id;0;0]

%E=[1/R7,-1/R7-Kc/R6,0,0,0,0,0;0,0,1/R5,-1/R5-Kb,0,Kb,0;-1/R7,1/R6+1/R7,0,0,0,0,0;0,Kc/R6,-1/R5,1/R3+1/R4+1/R5,0,-1/R3,0;0,0,0,Kb,1/R2,-1/R2-Kb,0;0,0,0,-1/R3,-1/R2,1/R1+1/R2+1/R3,-1/R1;0,0,0,0,0,0,1]
%F=[-Id;Id;0;0;0;0;Va]

%A = [R4+R3+R1,-R4;-R4,R6+R7+R4]
%B = [-Va+R3*Ib;Vc]
ans = A\B
ans = C\D
%E\F

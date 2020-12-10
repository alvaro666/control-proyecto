clc;clear
%----------Controlador LQR-----------------------------

mB = 1.2;%peso del carro
mW = 0.02;%peso de la rueda
IB = 0.015;%coeficiente de inercia
IW = 0.00002;% coeficinete de la rueda
g = 9.81;%gravedad
r = 0.032;%diametro de la rueda
l = 0.075;% longitud del cuerpo
bW = 0.001;%coeficioente de amortuguacion

A = [0 1 0 0; -4.0295 0 0 0; 0 0 0 1; 57.2671 0 0 0];
B = [0; 39.0316; 0; -207.4870];
C = [1 0 0 0;0 0 1 0];
D = [0;0];
 
Ob = obsv(A,C)
Con = ctrb(A,B)
Q=[1 0 0 0; 0 5 0 0; 0 0 0.9 0; 0 0 0 1];
R=[0.8];
K = lqr(A,B,Q,R)
ft1=ss(A,B,C,D)
sys = tf(ft1)
%step(ft1)%salida sin controlador
ftc=ss(A-B*K,B,C,D)
step(ftc)
%step(ftc)%salida controlada

clc;clear
%----------Controlador PID -----------------------------

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

sys = ss(A,B,C,D);
systf = tf(sys);
G1 = tf([39.03],[1 0 4.029])
G2 = tf([-207.5 -9.21e-12 1399],[1 0 4.029 0 0])


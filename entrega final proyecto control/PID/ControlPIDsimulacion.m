clc
clear
close all

open_system('pidproyectosimulink.slx');% abre el modelo en simulink
set_param(gcs,'SimulationCommand','start')% play

pause(5)
x = evalin('base','x');
thetha = evalin('base','thetha');
N = length(x);

scene = figure;
tam=get(0,'ScreenSize');
set(scene,'position',tam);
axis equal;
axis([-0.3 0.3 -0.3 0.3 0 0.5]); 
grid on; 
xlabel('X [m]')
ylabel('Y [m]')
zlabel('Z [m]')

camlight('headlight');

scale = 0.001;
balancingRobot;
M1 = balancingPlot(x(1),0,0,thetha(1),scale);hold on;
M2 = plot(x(1),0,'r','LineWidth',2);

for k=1:1:N
    delete(M1)
    delete(M2)
    
    M1 = balancingPlot(x(k),0,0,thetha(k),scale);
    M2 = plot(x(1:k),zeros(1,k),'r','LineWidth',2);
    
    pause(0.1);
end

figure
plot(tout,thetha(1:N)),title('Theta');
figure
plot(tout,x(1:N)),title('Desplazmiento');
%Programa para dar solución al problema 2.1
clc, clear all, close all

%Inciso A
u = 1;
vi = 1;
t = 0:0.01:0.2;
R = (1 + 0.5*cos(20*pi*t))*u;
Vo = -R*vi;
plot(t, Vo, 'r-'), hold on

%Inciso B

t1 = 0.05:0.01:0.2;
R1 = (1 + 0.5*cos(20*pi*t1))*u;
Vo1 = -R1*vi;
plot(t1, Vo1, 'bo')

%Inciso C

% A partir de la gráfica podemos deducir que el sistema no es invariante
% con el tiempo
%Esto debido a que, al introducir la entrada con el retraso (50 mseg), la
%salida debió haberse recorrido 50 mseg, pero en cabo, en la gráfica no se
%desplazó, únicamente se hizo 0 lo anterior a t < 50 mseg
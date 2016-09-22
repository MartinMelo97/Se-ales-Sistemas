clc
clear all
close all

%%Simulacion numérica
omega = 0.005*pi;
T = 0.01;
Tp = 2*pi/omega;
t = 0:Tp/1000:5*Tp;
is = cos(omega*t);
plot(t,is,'r'), hold on

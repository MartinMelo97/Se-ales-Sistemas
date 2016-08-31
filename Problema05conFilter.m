clc, clear all, close all

omega = 0.005*pi;
T = 0.01;
Tp = 2*pi/omega;
t=0:T:5*Tp;
A = [1 ((T-2)/(T+2))];
B = [(T/(2+T)) (T/(2+T))];
iS = cos(omega*t);
iL = filter(B, A, iS);
plot(t, iL), hold on
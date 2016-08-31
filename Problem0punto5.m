clc
clear all
close all

%%Simulacion numérica
omega = 0.005*pi;
Tp = 2*pi/omega;
T = 0.01;
t = 0:T:5*Tp;
is = cos(omega*t);
il(1) = 0;
for n=2:length(t)
    il(n) = T/(2+T)*(is(n-1) + is(n)) - (T-2)/(T+2)*(il(n-1));
end
plot(t,il,'b*'), hold on

omega = 0.005*pi;
T = 0.01;
Tp = 2*pi/omega;
t=0:T:5*Tp;
A = [1 ((T-2)/(T+2))];
B = [(T/(2+T)) (T/(2+T))];
iS = cos(omega*t);
iL = filter(B, A, iS);
plot(t, iL, 'g.')

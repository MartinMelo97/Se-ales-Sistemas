clc, clear all, close all

Vi = 1;
t = 0:0.01:0.2;
u = 1; %Para t>=0
R = (1 + 0.5*cos(20*pi*t))*u;

Vo = -R*Vi;

plot(t, Vo, 'g'), hold on

t1 = 0.05:0.01:0.2;
R1 = (1 + 0.5*cos(20*pi*t1))*u;
Vo1 = -R1*Vi;
% for n = 1:5
%     Vo1(n) = 0;    
% end

plot(t1, Vo1, 'r')

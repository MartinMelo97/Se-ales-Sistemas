clc 
clear all 
close all

% ts0=0:0.0001:1;
% ts1=0:0.01:1;
% ts2=0:0.1:1;
% x=4*cos(2*pi*ts1);
% x0=4*cos(2*pi*ts0);
% xprima = diff(x);
% x0prima = diff(x0);
% plot(ts1,xprima)

ts = 1e-4;
t = 0:ts:1;
y = -8*pi*sin(2*pi*t);
plot(t,y), hold on

ts = 0.1;
t = 0:ts:1;
x = 4*cos(2*pi*t);
y1 = diff(x)/ts;
plot(t(2:end),y1,'ro'), hold on

ts = 0.01;
t = 0:ts:1;
x = 4*cos(2*pi*t);
y2 = diff(x)/ts;
plot(t(2:end),y2,'b+'), hold on



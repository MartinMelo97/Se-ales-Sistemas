%Ejercicio 3.24
clc
clear all
close all
%Inciso a)

syms s;
b1 = 5;
b0 = 6;
H = 1/(s^2 + b1*s + b0);
X = 1/s;

Y = H*X;
y = ilaplace(Y)

ezplot(y,[0 10]), hold on

%Esta gráfica es sobreamortiguada

%Inciso b)
b1 = 2;
H1 = 1/(s^2 + b1*s + b0);
X1 = 1/s;

Y1 = H1*X1;
y1 = ilaplace(Y1)
h = ezplot(y1,[0 10])
axis([0 10 0 0.25])
set(h,'Color','r')
set(h,'LineStyle','o')

%Esta gráfica es subamortiguada



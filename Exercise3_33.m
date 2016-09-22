%Ejercicio 3.33

clc
clear all
close all

P = [1 1 1];
Q = [2 3 1 1];
conv(P,Q)

%Inciso b

a = conv([1 4],[1 4]);
a(end) = a(end) + 9;
b = conv(a,[1 1]);
c = conv(b,[1 0 0]);
syms s;

Y = (s+2)/(c(1)*s^5 + c(2)*s^4 + c(3)*s^3 + c(4)*s^2 + c(5)*s + c(6));

y = ilaplace(Y)
clc
clear all
close all

syms s;
x = (s.^2 + 2*s + 1)/(s*(s+1)*(s.^2 + 10*s + 50));

y = ilaplace(x)

%Inciso b)

x2 = (1 - s*exp(-s))/(s*(s+2));

y2 = ilaplace(x2)
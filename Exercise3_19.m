clc
clear all
close all

syms s;
x = 1/(s^2 + 2*s + 3);

y = ilaplace(x)
ezplot(y,[0, 10])

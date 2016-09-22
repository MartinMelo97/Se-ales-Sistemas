clc
clear all
close all

syms s;

X = 1/(s*(s^2 + 6*s + 11.46));

y = ilaplace(X)

ezplot(y,[0 , 2])
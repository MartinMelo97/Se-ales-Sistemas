clc
clear all
close all
syms s;

%a
y = 1/(s*(s^2 + 2*s + 1));
yzs = ilaplace(y)

%b

y2 = (s+1)/(s^2 + 2*s + 1);
yzi = ilaplace(y2)

yt = yzs + yzi


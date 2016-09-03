%Programa del problema 2.2
clc, close all, clear all

%Inciso a
t = 0:0.001:4;
vs = cos(pi*t);
plot(t,vs,'r+'), hold on

for n=1:length(vs)
    if abs(vs(n)) > 0.5
        x(n) = 0.5;
    else
        x(n) = vs(n);
    end
end

plot(t,x,'bo')
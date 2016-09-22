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
plot(t,x,'bo'), hold on


%Hacemos una prueba para ver la grafica al variar el tiempo
t1 = 0.5:0.001:4;
vs1 = cos(pi*t1);
for n=1:length(vs1)
    if abs(vs1(n)) > 0.5
        x1(n) = 0.5;
    else
        x1(n) = vs(n);
    end
end
plot(t1,x1,'go')


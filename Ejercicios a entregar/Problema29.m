%Problema 2.9

%Inciso a), tomando x(t) = u(t)
t = -2:0.001:8;
y = cos(pi*t);
for n = (1:length(y))
    if(t(n) < 0)
        y(n) = 0;
    end
    if(y(n) < 0)
        y(n) = 0;
    end
end

subplot(2, 1, 1)
plot(t, y, 'r*'), hold on
title('x(t) = u(t) -> y(t) = x(t)*cos(pi*t)')

%Inciso a), tomando x(t) = u(t-1)
y1 = cos(pi*t);
for n = (1:length(y))
    if(t(n) < 1)
        y1(n) = 0;
    end
    if(y1(n) < 0)
        y1(n) = 0;
    end
end

subplot(2, 1, 2)
plot(t, y1,'b*')
title('x(t) = u(t-1) -> y(t) = x(t)*cos(pi*t)')

%Inciso b), tomando x(t) = u(t)
ya = ones(1,length(t));
yb = -1*(ones(1,length(t)));

for i = 1:length(t)
    if(t(i) < 0)
        ya(i) = 0;
    end
    if (t(i) < 2)
        yb(i) = 0;
    end
end
yc = ya+yb;
figure
subplot(2, 1, 1)
plot(t,yc,'bo')
title('x(t) = u(t) -> y(t) = x(t)[u(t) - u(t-2)]')

%Inciso b), tomando x(t) = u(t-1)
ya = ones(1,length(t));
yb = -1*(ones(1,length(t)));

for i = 1:length(t)
    if(t(i) < 1)
        ya(i) = 0;
    end
    if (t(i) < 3)
        yb(i) = 0;
    end
end
yc = ya+yb;
subplot(2, 1, 2)
plot(t,yc,'bo')
title('x(t) = u(t) -> y(t) = x(t)[u(t) - u(t-2)]')

%Inciso c), tomando x(t) = u(t)
ya = ones(1,length(t));
yb = ones(1,length(t));

for i = 1:length(t)
    if(t(i) < 0)
        ya(i) = 0;
    end
    if (t(i) < 1)
        yb(i) = 0;
    end
end
yc = (ya+yb)/2;
figure
subplot(2, 1, 1)
plot(t,yc,'bo')
title('x(t) = u(t) -> y(t) = 0.5[x(t) - x(t-1)]')


%Inciso c), tomando x(t) = u(t-1)
ya = ones(1,length(t));
yb = ones(1,length(t));

for i = 1:length(t)
    if(t(i) < 1)
        ya(i) = 0;
    end
    if (t(i) < 2)
        yb(i) = 0;
    end
end
yc = (ya+yb)/2;
subplot(2, 1, 2)
plot(t,yc,'yo')
title('x(t) = u(t-1) -> y(t) = 0.5[x(t) - x(t-1)]')

%Por lo tanto:
%Inciso a) => No es invariante con el tiempo
%Inciso b) => Es invariante con el tiempo
%Inciso c) => Es invariante con el tiempo

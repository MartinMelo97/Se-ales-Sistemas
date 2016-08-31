syms iL(t) w;
is = cos(w*t);
iL = dsolve(diff(iL) == is - iL, iL(0) == 0)

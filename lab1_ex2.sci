f = 50;
T = 1/f;
Fs = 300;

t = 0:0.0001:5*T;
xa = 3*sin(100*%pi*t);

N = 6;
n = 0:5*N;
xn = 3*sin(100*%pi*n*1/Fs);

denta = 0.1;
xq = denta*floor(xn/denta);

scf(1);

subplot(3,1,1);
plot(t, xa);
title("Analog Signal");
xgrid();

subplot(3,1,2);
plot2d3(n, xn);
title("Discrete Signal x(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, xq);
title("Quantized Signal xq(n)");
xgrid();

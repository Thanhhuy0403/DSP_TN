n = -1:1;
x = [1 3 -2];
x_neg = [x(3) x(2) x(1)];

xe = (x + x_neg)/2;
xo = (x - x_neg)/2;

scf(1);

subplot(3,1,1);
plot2d3(n, x,);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n, xe);
title("Even Component xe(n)");
xlabel("n");
ylabel("Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n, xo);
title("Odd Component xo(n)");
xlabel("n");
ylabel("Amplitude");
xgrid();


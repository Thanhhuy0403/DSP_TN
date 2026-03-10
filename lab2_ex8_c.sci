n = -2:1;
x = [1 -2 3 6];

n1 = -3:0;
y1 = [12 6 -4 2];

subplot(2,1,1);
plot2d3(n, x);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n1, y1);
title("y1(n) = 2x(-n-3)");
xlabel("n");
ylabel("Amplitude");

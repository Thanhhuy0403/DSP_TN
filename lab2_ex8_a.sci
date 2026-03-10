n = -2:1;
x = [1 -2 3 6];

n1 = -1:2;
y1 = [6 3 -2 1];

subplot(2,1,1);
plot2d3(n, x);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n1, y1);
title("y1(n) = x(-n)");
xlabel("n");
ylabel("Amplitude");

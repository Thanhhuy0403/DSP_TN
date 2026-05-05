// Exercise 3a: x1(n) = 0.1^n u(n)
clf();
scf(0);

N = 100;
n = 0:N-1;
x1 = (0.1).^n;

X1 = fft(x1, 1);
w = linspace(0, 2*%pi, N);

Amplitude = abs(X1);
Phase = atan(imag(X1), real(X1));

subplot(2,1,1);
plot(w, Amplitude, 'b-');
title('Pho bien do cua x1(n) = 0.1^n u(n)');
xlabel('Tan so (rad/mau)');
ylabel('Bien do');
xgrid();

subplot(2,1,2);
plot(w, Phase, 'r-');
title('Pho pha cua x1(n) = 0.1^n u(n)');
xlabel('Tan so (rad/mau)');
ylabel('Pha (rad)');
xgrid();

show_window();

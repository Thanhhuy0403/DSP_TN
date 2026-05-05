clc();
clf();

N = 100;            
Nfft = 1024;        

n = 0:N-1;

x = (0.5).^n;

h = zeros(1, N);
h(1) = 1;           // delta(n)
h(2) = 1;           // delta(n-1)

y = zeros(1, N);
y(1) = x(1);        // n = 0: only x(0)
for i = 2:N
    y(i) = x(i) + x(i-1);
end

// Zero-padding
x_pad = [x, zeros(1, Nfft - N)];
h_pad = [h, zeros(1, Nfft - N)];
y_pad = [y, zeros(1, Nfft - N)];

X = fft(x_pad, 1);
H = fft(h_pad, 1);
Y = fft(y_pad, 1);

w = linspace(0, 2*%pi, Nfft);

magX = abs(X);
magH = abs(H);
magY = abs(Y);

phaseX = atan(imag(X), real(X));
phaseH = atan(imag(H), real(H));
phaseY = atan(imag(Y), real(Y));

scf(0);
clf();

subplot(3,1,1);
plot(w, magX, 'b-', 'LineWidth', 1.5);
title('Magnitude Spectrum of Input Signal x(n) = 0.5^n u(n)');
ylabel('|X|');
xgrid();

subplot(3,1,2);
plot(w, magH, 'r-', 'LineWidth', 1.5);
title('Magnitude Spectrum of Impulse Response h(n) = delta(n) + delta(n-1)');
ylabel('|H|');
xgrid();

subplot(3,1,3);
plot(w, magY, 'g-', 'LineWidth', 1.5);
title('Magnitude Spectrum of Output Signal y(n)');
xlabel('Frequency omega (rad/sample)');
ylabel('|Y|');
xgrid();

scf(1);
clf();

subplot(3,1,1);
plot(w, phaseX, 'b-', 'LineWidth', 1.5);
title('Phase Spectrum of Input Signal x(n) = 0.5^n u(n)');
ylabel('Phase of X (rad)');
xgrid();

subplot(3,1,2);
plot(w, phaseH, 'r-', 'LineWidth', 1.5);
title('Phase Spectrum of Impulse Response h(n) = delta(n) + delta(n-1)');
ylabel('Phase of H (rad)');
xgrid();

subplot(3,1,3);
plot(w, phaseY, 'g-', 'LineWidth', 1.5);
title('Phase Spectrum of Output Signal y(n)');
xlabel('Frequency omega (rad/sample)');
ylabel('Phase of Y (rad)');
xgrid();

Y_from_product = X .* H;
error = max(abs(Y - Y_from_product));

scf(2);
clf();

subplot(2,2,1);
plot(w, magX, 'b-', 'LineWidth', 1.5);
title('|X(e^{j\omega})|');
xgrid();

subplot(2,2,2);
plot(w, magH, 'r-', 'LineWidth', 1.5);
title('|H(e^{j\omega})|');
xgrid();

subplot(2,2,3);
plot(w, magY, 'g-', 'LineWidth', 1.5);
title('|Y(e^{j\omega})|');
xlabel('omega (rad/sample)');
xgrid();

subplot(2,2,4);
plot(w, phaseX, 'b-', 'LineWidth', 1);
plot(w, phaseH, 'r-', 'LineWidth', 1);
plot(w, phaseY, 'g-', 'LineWidth', 1);
title('Phase Spectrums');
xlabel('omega (rad/sample)');
legend(['X'; 'H'; 'Y'], 'boxed');
xgrid();

show_window();

clc; clear;

% Gain (9 dB)
K = 10^(9/20);

% Cutoff
fc = 700;
wc = 2*pi*fc;  % rad/s

f = logspace(2,5,2000); % 100 Hz to 100 kHz
w = 2*pi*f;             % rad/s

a1 = 0.5176;
a2 = 1.0000;
a3 = 1.9319;

num1 = [1 0 0];
den1 = [1 a1*wc wc^2];

num2 = [1 0 0];
den2 = [1 a2*wc wc^2];

num3 = [1 0 0];
den3 = [1 a3*wc wc^2];

num = K*conv(conv(num1,num2),num3);
den = conv(conv(den1,den2),den3);

H = freqs(num, den, w)

mag = 20*log10(abs(H));
ph  = unwrap(angle(H))*180/pi;

% Magnitude plot
figure;
semilogx(f, mag, 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('High-Pass Butterworth Filter (Magnitude)');

% Phase plot
figure;
semilogx(f, ph, 'LineWidth', 1.5);
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase (deg)');
title('High-Pass Butterworth Filter (Phase)');
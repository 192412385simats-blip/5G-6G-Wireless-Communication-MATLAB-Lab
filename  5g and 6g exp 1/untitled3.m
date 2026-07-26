clc;
clear;
close all;

% FDMA SNR Calculation

Ps = 1;                    % Signal Power (W)
Pn = [0.1 0.05 0.01];      % Noise Power (W)
Users = 1:3;

% Calculate SNR in dB
SNR = 10 * log10(Ps ./ Pn);

% Display Results
disp('User    Noise Power (W)    SNR (dB)');
disp([Users' Pn' SNR']);

% Plot SNR
figure;
bar(Users, SNR);

xlabel('Users');
ylabel('SNR (dB)');
title('Signal-to-Noise Ratio of FDMA Users');
xticks(Users);
grid on;
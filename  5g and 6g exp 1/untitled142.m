clc;
clear;
close all;

% SNR values (dB)
SNR = 0:5:30;

% Simulated Bit Error Rate (BER)
BER = [0.30 0.18 0.10 0.05 0.02 0.008 0.001];

% Reliability (%)
Reliability = (1 - BER) * 100;

% Display in Command Window
disp('SNR(dB)   BER         Reliability(%)');
disp([SNR' BER' Reliability']);

figure;

% -------- Graph 1 --------
subplot(2,1,1);
semilogy(SNR, BER, '-o', 'LineWidth', 2);
title('SNR vs Bit Error Rate in 5G');
xlabel('Signal-to-Noise Ratio (dB)');
ylabel('Bit Error Rate (BER)');
grid on;

% -------- Graph 2 --------
subplot(2,1,2);
plot(SNR, Reliability, '-s', 'LineWidth', 2, 'Color', [0.8500 0.3250 0.0980]);
title('SNR vs Communication Reliability');
xlabel('Signal-to-Noise Ratio (dB)');
ylabel('Reliability (%)');
grid on;
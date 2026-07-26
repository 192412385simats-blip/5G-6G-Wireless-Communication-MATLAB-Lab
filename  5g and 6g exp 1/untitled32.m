clc;
clear;
close all;

d = 2;                   % Distance (km)
f = [900 3500 28000];    % Frequency (MHz)

PL = 32.44 + 20*log10(f) + 20*log10(d);

figure;

subplot(2,1,1);
plot(f,PL,'-o','LineWidth',2);
grid on;
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
title('Propagation Loss vs Operating Frequency');

subplot(2,1,2);
bar(PL);
grid on;
xlabel('Frequency Bands');
ylabel('Propagation Loss (dB)');
title('Comparison of Propagation Loss');
xticklabels({'Sub-1GHz','Mid-band','mmWave'});
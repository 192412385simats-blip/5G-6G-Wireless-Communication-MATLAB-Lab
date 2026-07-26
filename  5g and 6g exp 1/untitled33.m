clc;
clear;
close all;

% Frequency bands (MHz)
f = [900 3500 28000];

% Distance (km)
d = 2;

% Free Space Path Loss
PL = 32.44 + 20*log10(f) + 20*log10(d);

figure;

subplot(2,1,1);
plot(f,PL,'-o','LineWidth',2);
grid on;
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
title('Propagation Loss vs Operating Frequency');

subplot(2,1,2);
plot(1:3,PL,'-s','LineWidth',2);
grid on;
xlabel('Band Index');
ylabel('Propagation Loss (dB)');
title('Band-wise Propagation Loss Comparison');
xticks([1 2 3]);
xticklabels({'Sub-1GHz','Mid-band','mmWave'});
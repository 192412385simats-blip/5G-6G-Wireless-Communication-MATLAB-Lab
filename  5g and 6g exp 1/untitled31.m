clc;
clear;
close all;

% Distance (km)
d = 0.1:0.1:5;

% Frequency (MHz)
f = [900 3500 28000];

% Free Space Path Loss
PL1 = 32.44 + 20*log10(f(1)) + 20*log10(d);
PL2 = 32.44 + 20*log10(f(2)) + 20*log10(d);
PL3 = 32.44 + 20*log10(f(3)) + 20*log10(d);

figure;

subplot(2,1,1);
plot(d,PL1,'b','LineWidth',2);
hold on;
plot(d,PL2,'r','LineWidth',2);
plot(d,PL3,'k','LineWidth',2);
grid on;
xlabel('Distance (km)');
ylabel('Propagation Loss (dB)');
title('Propagation Loss vs Distance');
legend('900 MHz','3.5 GHz','28 GHz');

subplot(2,1,2);
Freq = [900 3500 28000];
Loss = [PL1(10) PL2(10) PL3(10)];
plot(Freq,Loss,'-o','LineWidth',2);
grid on;
xlabel('Frequency (MHz)');
ylabel('Propagation Loss (dB)');
title('Propagation Loss vs Frequency');
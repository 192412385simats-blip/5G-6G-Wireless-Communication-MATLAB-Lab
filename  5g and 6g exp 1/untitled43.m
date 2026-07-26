clc;
clear;
close all;

% Bandwidth per Resource Block
rb_bw = 180e3;      % 180 kHz

% Users
users = 1:5;

% Allocated Resource Blocks
alloc_RB = [12 10 9 8 11];

% Modulation Efficiency
mod_eff = [2 4 6 4 2];

% Throughput Calculation
throughput = (alloc_RB .* rb_bw .* mod_eff) / 1e6;

disp('User Throughput (Mbps)');
disp(throughput');

figure;

subplot(2,1,1);
plot(users,throughput,'-o','LineWidth',2);
title('OFDMA User Throughput');
xlabel('User Index');
ylabel('Throughput (Mbps)');
grid on;

subplot(2,1,2);
plot(alloc_RB,throughput,'-s','LineWidth',2);
title('Resource Blocks vs Throughput');
xlabel('Allocated Resource Blocks');
ylabel('Throughput (Mbps)');
grid on;
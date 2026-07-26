clc;
clear;
close all;

% System parameters
bandwidth = 10e6;      % 10 MHz
rb_size = 180e3;       % 180 kHz per RB

% Total Resource Blocks
total_RB = floor(bandwidth / rb_size);

% Users
users = 1:6;

% Equal RB Allocation
base = floor(total_RB / length(users));
alloc = base * ones(1,length(users));

% Distribute remaining RBs
alloc(1:mod(total_RB,length(users))) = alloc(1:mod(total_RB,length(users))) + 1;

utilization = (alloc / total_RB) * 100;

disp('Total Resource Blocks:');
disp(total_RB);

disp('RB Allocation per User:');
disp(alloc);

figure;

subplot(2,1,1);
stem(users,alloc,'filled','LineWidth',2);
title('OFDMA Resource Block Allocation per User');
xlabel('User Index');
ylabel('Number of Resource Blocks');
grid on;

subplot(2,1,2);
plot(users,utilization,'-o','LineWidth',2);
title('OFDMA Resource Block Utilization (%)');
xlabel('User Index');
ylabel('Utilization (%)');
grid on;
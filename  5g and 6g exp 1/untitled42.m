clc;
clear;
close all;

% Total Resource Blocks
total_RB = 50;

% Users
users = 1:5;

% RB Allocation
alloc = [12 10 9 8 11];

% Utilization
util = (alloc / total_RB) * 100;

disp('Resource Block Utilization (%) per User');
disp(util');

figure;

subplot(2,1,1);
plot(users,alloc,'-o','LineWidth',2);
title('OFDMA Resource Block Allocation');
xlabel('User Index');
ylabel('Number of Resource Blocks');
grid on;

subplot(2,1,2);
plot(users,util,'-s','LineWidth',2);
title('OFDMA Resource Block Utilization (%)');
xlabel('User Index');
ylabel('Utilization (%)');
grid on;
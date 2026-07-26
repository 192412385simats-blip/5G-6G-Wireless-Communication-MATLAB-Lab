clc;
clear;
close all;

% FDMA Data Rate Calculation

BW = 200;          % Channel Bandwidth (kHz)
Users = 3;         % Number of Users
M = 2;             % BPSK Modulation

% Data Rate Calculation
DataRate = BW * log2(M);      % Data Rate (kbps)
Rate = DataRate * ones(1, Users);

% Display Output
disp('User Data Rate (kbps)');
fprintf('---------------------------\n');
fprintf('User\tData Rate (kbps)\n');

for i = 1:Users
    fprintf('%d\t\t%.0f\n', i, Rate(i));
end

% Plot
figure;
bar(1:Users, Rate);

xlabel('Users');
ylabel('Data Rate (kbps)');
title('FDMA Data Rate for Each User');
xticks(1:Users);
grid on;
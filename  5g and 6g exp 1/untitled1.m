clc;
clear;
close all;

% Sampling parameters
fs = 1000;
t = 0:1/fs:1;

% FDMA Parameters
TBW = 600;          % Total Bandwidth (kHz)
Users = 3;          % Number of Users
CBW = TBW / Users;  % Channel Bandwidth per User

% Carrier Frequencies (Hz)
fc = [100 300 500];

% Message Signal
m = sin(2*pi*10*t);

% Modulated Signals
s1 = m .* cos(2*pi*fc(1)*t);
s2 = m .* cos(2*pi*fc(2)*t);
s3 = m .* cos(2*pi*fc(3)*t);

% Plot FDMA Signals
figure;

subplot(2,1,1);
plot(t, s1, 'r', t, s2, 'g', t, s3, 'b');
grid on;
title('FDMA Channel Allocation');
xlabel('Time (s)');
ylabel('Amplitude');
legend('User 1','User 2','User 3');

% Plot Channel Bandwidth Allocation
subplot(2,1,2);
bar(1:Users, CBW * ones(1, Users));
grid on;
xlabel('Users');
ylabel('Channel Bandwidth (kHz)');
title('Channel Bandwidth per User');

% Display Channel Bandwidth
disp('Channel Bandwidth per User (kHz):');
disp(table((1:Users)', CBW*ones(Users,1), ...
    'VariableNames', {'User','Bandwidth_kHz'}));
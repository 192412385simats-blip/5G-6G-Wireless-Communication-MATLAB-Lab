clc;
clear;
close all;

% Desired Steering Angle (degrees)
desired = [-60 -30 0 30 60]; 

% Actual Beam Direction (degrees)
actual = [-58 -32 1 29 62]; 

% Beam Direction Error
error = abs(desired - actual); 

figure;
plot(desired, error, 'o-', 'LineWidth', 2);
grid on;

xlabel('Desired Steering Angle (Degrees)');
ylabel('Beam Direction Error (Degrees)');
title('Beam Direction Error for Different Steering Angles');
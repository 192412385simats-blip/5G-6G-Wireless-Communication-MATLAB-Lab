clc;
clear;
close all;

% Number of Antenna Elements
antennas = [4 8 16 32 64]; 

% Antenna Gain (dB)
gain = 10 * log10(antennas); 

figure;
bar(categorical(antennas), gain); % Categorical keeps bar spacing equal
grid on;

xlabel('Number of Antenna Elements');
ylabel('Antenna Gain (dB)');
title('Antenna Gain for Different Antenna Array Sizes');
clc;
clear;
close all;

% Communication Scenarios and Corresponding SNR Values
scenarios = {'Cell-Edge', 'Urban NLoS', 'Suburban/Indoor', 'Direct LoS'};
snr_values_db = [-5, 5, 15, 25]; 

% Bar Chart Plotting
figure('Name', 'Objective 2');
b = bar(snr_values_db, 'FaceColor', [0.2 0.6 0.8]);
grid on;

set(gca, 'XTickLabel', scenarios);
ylabel('Signal-to-Noise Ratio (dB)');
title('Objective 2: SNR Comparison Across Scenarios');

% Add value labels on top of each bar
xtips = b.XEndPoints;
ytips = b.YEndPoints;
labels = string(b.YData) + " dB";
text(xtips, ytips, labels, 'HorizontalAlignment', 'center', ...
    'VerticalAlignment', 'bottom', 'FontWeight', 'bold');
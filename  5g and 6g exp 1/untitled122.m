clc;
clear;
close all;

%% 1. Parameters Setup
% Coverage Enhancement (CE) Modes / Signal Conditions (0: Good, 1: Normal, 2: Deep Coverage)
ce_levels = {'CE Level 0 (Good Signal)', 'CE Level 1 (Moderate)', 'CE Level 2 (Deep Indoor/Edge)'};

% Latency characteristics (in milliseconds)
% LTE-M: ~15 ms (Good), ~50 ms (Normal), ~100-150 ms (Deep Coverage)
lat_ltem = [15, 50, 120]; 

% NB-IoT: ~1600 ms (Good), ~4000 ms (Normal), ~10000 ms (Deep Coverage)
lat_nbiot = [1600, 4000, 10000]; 

%% 2. Plot 1: Comparison of Latency across Coverage Levels (Bar Chart)
figure('Name', 'Latency Comparison: LTE-M vs NB-IoT', 'NumberTitle', 'off');

subplot(2, 1, 1);
data = [lat_ltem; lat_nbiot]';
b = bar(data, 'grouped');
b(1).FaceColor = [0.2 0.6 0.8]; % LTE-M Color
b(2).FaceColor = [0.8 0.3 0.2]; % NB-IoT Color

grid on;
set(gca, 'XTickLabel', ce_levels);
ylabel('Latency (ms) - Log Scale');
set(gca, 'YScale', 'log'); % Logarithmic scale for better visual comparison
title('Latency Comparison Across Coverage Enhancement Levels');
legend({'LTE-M (Cat-M1)', 'NB-IoT (Cat-NB1/NB2)'}, 'Location', 'northwest');

% Annotate Latency Limit for Real-Time Systems (~100 ms)
yline(100, 'k--', 'Real-Time Threshold (100 ms)', 'LineWidth', 1.5, ...
    'LabelVerticalAlignment', 'bottom');

%% 3. Plot 2: Impact on Real-Time Packet Delivery Delay over Time
subplot(2, 1, 2);
num_packets = 20;
packet_ids = 1:num_packets;

% Random latency jitter around average values for CE Level 0
jitter_ltem = lat_ltem(1) + randn(1, num_packets) * 3;     % Avg 15 ms
jitter_nbiot = lat_nbiot(1) + randn(1, num_packets) * 200; % Avg 1600 ms

plot(packet_ids, jitter_ltem, '-o', 'LineWidth', 2, 'Color', [0.2 0.6 0.8], 'DisplayName', 'LTE-M');
hold on;
plot(packet_ids, jitter_nbiot, '-s', 'LineWidth', 2, 'Color', [0.8 0.3 0.2], 'DisplayName', 'NB-IoT');
yline(100, 'k--', 'Real-Time Limit (100 ms)', 'LineWidth', 1.5, 'HandleVisibility', 'off');

grid on;
xlabel('Packet Sequence Number');
ylabel('End-to-End Latency (ms)');
title('Real-Time Packet Transmission Latency (CE Level 0)');
legend('Location', 'east');

%% 4. Print Summary Analysis to Command Window
fprintf('=======================================================\n');
fprintf('        LATENCY & REAL-TIME IMPACT ANALYSIS\n');
fprintf('=======================================================\n');
fprintf('Technology  | CE Level 0   | CE Level 1   | CE Level 2   \n');
fprintf('-------------------------------------------------------\n');
fprintf('LTE-M       | %-12.1f | %-12.1f | %-12.1f (ms)\n', lat_ltem);
fprintf('NB-IoT      | %-12.1f | %-12.1f | %-12.1f (ms)\n', lat_nbiot);
fprintf('-------------------------------------------------------\n');
fprintf('Real-Time Suitability:\n');
fprintf(' -> LTE-M : SUITABLE for real-time tracking, voice, and emergency response.\n');
fprintf(' -> NB-IoT: UNSUITABLE for real-time applications; ideal for periodic metering.\n');
fprintf('=======================================================\n');
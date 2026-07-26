clc;
clear;
close all;

TotalSlots = 8;
AllocatedSlots = 6;

FreeSlots = TotalSlots - AllocatedSlots;

Utilization = (AllocatedSlots / TotalSlots) * 100;

disp(['Frame Utilization = ', num2str(Utilization), ' %']);

figure;

subplot(2,1,1);
plot([1 2],[AllocatedSlots FreeSlots],'-o','LineWidth',2);
title('GSM Frame Utilization');
xlabel('Slot Type');
ylabel('Number of Slots');
xticks([1 2]);
xticklabels({'Allocated','Free'});
grid on;

subplot(2,1,2);
pie([AllocatedSlots FreeSlots]);
title('Slot Distribution');
legend('Allocated','Free');
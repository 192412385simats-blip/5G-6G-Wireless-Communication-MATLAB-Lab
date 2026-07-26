clc;
clear;
close all;

Users = 1:8;          % Total Users
TotalSlots = 5;       % Available Slots

Alloc = zeros(1,8);
Alloc(1:TotalSlots) = 1;

Blocked = 1 - Alloc;

disp('User Wise Slot Allocation');

disp(table(Users',Alloc', ...
    'VariableNames',{'User','Status_1_Allocated_0_Blocked'}));

figure;

subplot(2,1,1);
stem(Users,Alloc,'filled','LineWidth',2);
title('TDMA Slot Allocation per User');
xlabel('User');
ylabel('Slot Status');
ylim([-0.2 1.2]);
grid on;

subplot(2,1,2);
plot(Users,Alloc,'-o','LineWidth',2);
hold on;
plot(Users,Blocked,'-s','LineWidth',2);
title('TDMA Slot Utilization Analysis');
xlabel('User');
ylabel('Status');
legend('Allocated','Blocked');
grid on;
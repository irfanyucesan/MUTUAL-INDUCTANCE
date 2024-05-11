clc;
close all;
clear all;

R1=1;
L1=2;
R2=0.5;
L2=2;
M=0.8;

U=200;
Um=sqrt(2)*U;
f =50;
w = 2*pi*f;
PhaseAngle = deg2rad(0);

T= 1/f;
NumberOfSteps=50;
StepSize = T/NumberOfSteps;


% PHASE 0
result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE0.jpg');

% PHASE 30

PhaseAngle = deg2rad(30);

result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE30.jpg');


% PHASE 45

PhaseAngle = deg2rad(45);

result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE45.jpg');


% PHASE 60

PhaseAngle = deg2rad(60);

result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE60.jpg');


% PHASE 75

PhaseAngle = deg2rad(75);

result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE75.jpg');


% PHASE 90

PhaseAngle = deg2rad(90);

result = sim("MUTUAL_INDUCTANCE_SIMULINK.slx", [0 2]);

fig1 = figure();
plot(result.currents.time, result.currents.signals.values);

xlabel('time, t(s)');
ylabel('current, i(t) (A)');
grid on;
saveas(fig1, 'PHASE90.jpg');


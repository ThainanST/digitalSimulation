clc, close all, clear all

% Circuit parameters
R    = 1000;   % resistence (Ohms)
C    = 0.001;  % capacitance (Farad)
VIN  = 10;     % input (Volts)
Tend = 5;      % total time (seconds)
dt   = 0.001;  % step (seconds)

[tAN, v0AN] = analyticSolution(R, C, VIN, Tend, dt);
[tER, v0ER] = backwardEulerSolution(R, C, VIN, Tend, dt);
[tEP, v0EP] = forwardEulerSolution(R, C, VIN, Tend, dt);
[tTR, v0TR] = trapezoidalSolution(R, C, VIN, Tend, dt);

% Plots
figure;
plot(tAN, v0AN, 'LineWidth', 2); hold on
plot(tER, v0ER, 'LineWidth', 2);
plot(tEP, v0EP, 'LineWidth', 2);
plot(tTR, v0TR, 'LineWidth', 2);
legend('Analytic', 'Backward Euler', 'Forward Euler', 'Trapezoidal')
xlabel('Time (s)');
ylabel('Voltage (V)');
grid on;
























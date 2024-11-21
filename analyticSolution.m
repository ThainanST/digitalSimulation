function [t, v0] = analyticSolution(R, C, VIN, Tend, dt)

% step number
N = floor(Tend / dt);

% initialization
t     = (0:N) * dt;
v0 = VIN*( 1 - exp(-t/(R*C)) );
end


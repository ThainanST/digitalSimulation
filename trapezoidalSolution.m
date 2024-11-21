function [t, v0] = trapezoidalSolution(R, C, VIN, Tend, dt)


% step number
N = floor(Tend / dt);

% initialization
t     = (0:N) * dt;
v0    = zeros(1, N+1);
f     = zeros(1, N+1);
v0(1) = 0;

% numerical solution
for k = 1:N
    % derivative
    f(k+1) = ( 2*R*C/(2*R*C+dt) )*(1/(R*C))*( VIN - v0(k) -dt*f(k)/2); 
    
    % area
    A = ( f(k+1) + f(k) )*dt/2;
    
    % voltage
    v0(k+1) = v0(k) + A;
end

end


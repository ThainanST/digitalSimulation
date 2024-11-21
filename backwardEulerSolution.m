function [t, v0] = backwardEulerSolution(R, C, VIN, Tend, dt)


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
    f(k+1) = (VIN - v0(k)) /( R*C + dt ); 
    
    % area
    A = f(k+1)*dt;
    
    % voltage
    v0(k+1) = v0(k) + A;
end

end

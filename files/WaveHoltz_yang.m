%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 04/29/2023, Zhichao Peng, MSU;
% Pengliang Yang, HIT, adapted for speed (matrix-free and vectorization)
% This is a demo code to demonstrate how to use WaveHoltz
% to convert a time-domain solver to a frequency-domain one.
%
% 1D Wave/Maxwell equation:
% iω(Ez) = ∂ₓHy - J
% iω(Hy) = ∂ₓEz
% with PEC boundary condition on [0,1] is considered.
% 
% The current source Js=omega*E_imag_exact(x)-2/omega is chosen 
% so that Ez = 0+ 1j x(1-x) is an exact solution.
%
% We use the EM-WaveHoltz to compute the imaginary part of 
% the exact solution.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function WaveHoltz
global omega
global dt
global Nt
global N
global x
global PI_0
global h
   
% Step 1: set up of the problem
%==================================
omega = 25.5;
N_mesh = 400;
N = N_mesh+1;
x = linspace(0.,1.,N)';
h = 1./N_mesh;

% Step 2: set up the spatial discretization
%===========================================
N_period = 10;% evolve for N periods in the time domain
time_final = 2.0*pi/omega;%*N_period;
CFL = 0.99;
dt = CFL*h;% time step size
Nt =ceil(time_final/dt);
dt = time_final/Nt;

% Step 3: define the lienar operator for the WaveHoltz
%=======================================================
PI_0 = time_domain_evolution(zeros(N,1));% compute PI 0
E_imag_true = E_imag_exact(x);% manufacture the exact solution
E_imag_sol = zeros(N, 1);%initialize solution with 0

% Use CG to solve the linear problem (I-S)v=Π0. The solution gives us the imaginary part of the frequency-domain solution
rel_tol = 1e-10;
max_iter = 200;
tic;
[E_imag_sol,flag_cg,relres,iter,history_cg] = pcg(@ImS,PI_0,rel_tol,max_iter,[],[],E_imag_sol);
toc;

% Print error
fprintf("l-inf error: %e\n",norm(E_imag_true-E_imag_sol,Inf));

% Visulize the solution
figure(1)
plot(x,E_imag_true,'-','Linewidth',1.5);
hold on
plot(x,E_imag_sol,'o');

% Convergence history
figure(2)
semilogy(history_cg,'-o');

end

% Imaginary part of the exact solution
%====================================
function res = E_imag_exact(x)
    res = x.*(1.-x);
end

% Define the source function so that E_exact_imaginary will
% be a solution with PEC boundary conditions
%==============================================
function res = Js(x)
    global omega
    res = omega*E_imag_exact(x)-2/omega;
end

% evolve the time-domain equations for multiple periods
%=====================================================
function E_integral = time_domain_evolution(E_initial)
    global omega
    global dt
    global Nt
    global N
    global h
    global x

    % initial conditions
    H = zeros(N-1,1);
    E = E_initial;
    H = H - 0.5*dt*(E(2:N) - E(1:N-1))/h;    % backward half step evolution for H

    % integral term
    stepsize = 2/Nt;
    eta = 0.5;
    E_integral = E*stepsize*eta*0.75;

    % time evolution
    time = 0.0;
    eta  = 1.0;
    for i = 1:Nt
        H = H + dt*(E(2:N) - E(1:N-1))/h;
        E(2:N-1) = E(2:N-1) + dt*((H(2:N-1)-H(1:N-2))/h-sin(omega*(time+0.5*dt))*Js(x(2:N-1)));
        
        time = time+dt;
        if(i==Nt) eta = 0.5; end
        E_integral = E_integral+E*stepsize*eta*(cos(omega*time)-0.25);
    end
end

% Operator (I-S)v = (I-Π)v + Π0
%===============================
function res = ImS(v)
    % use time domain simulation to compute Πv
    global PI_0;
    PI_v = time_domain_evolution(v);
    res = v-PI_v+PI_0;
end

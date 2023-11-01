---
layout: archive
title: "Code"
permalink: /code/
author_profile: true
---

# EM-WaveHoltz
======
Demo code for a simple 1D problem to showcase how to couple EM-WaveHoltz with a time-domain solver:
[julia version](https://zhichaopengmath.github.io/files/WaveHoltz_1D_Demo.zip) [matlab version](https://zhichaopengmath.github.io/files/WaveHoltz_yang.m) 

The matlab demo code is written by me and [Dr. Pengliang Yang](https://yangpl.wordpress.com/). Great thanks to Pengliang for his great suggestions.

### Basic Ideas: 
1. Given the frequency-domain problem, such as the following simple non-dimensionalized case:
$$
\begin{align}
&i\omega E = \nabla\times H-J,\\
&i\omega H = -\nabla\times E,
\end{align}
$$
define the corresponding time-domain problem
$$
\begin{align}
&\partial_t \tilde{E} =  \nabla\times \tilde{H}- \sin(\omega t)Re(J)-\cos(\omega t) Im(J),\\
&\partial_t \tilde{H} = -\nabla\times \tilde{E}，
\end{align}
$$
and a filtering operator acting on the initial condition of the time-domain problem
$$
\begin{align}
\Pi \left(\begin{matrix}
	    \tilde{E}_0\\
	    \tilde{H}_0
	     \end{matrix}\right)
=\frac{2}{T}\int^{T}_{0}\left(\cos(\omega t)-\frac{1}{4}\right)
\left(\begin{matrix}
	    \tilde{E}(t)\\
	    \tilde{H}(t)
	\end{matrix}\right)
	dt,\quad T=\frac{2\Pi}{\omega}.
\end{align}
$$
$\Pi\nu$ essentially filters the time-domain solution determined by the initial condition $\nu$ over one period.

1. With some simple [algebra]((https://zhichaopengmath.github.io/appendix/waveholtz/waveholtz_algebra.pdf), one can show that
$$
\begin{align}
\Pi \left(\begin{matrix}
Im(E)\\
Im(H)
\end{matrix}\right)=
\left(\begin{matrix}
Im(E)\\
Im(H)
\end{matrix}\right).
\end{align}
$$

Hence, solving the frequency-domain problem is equivalent to solve the fixed point problem 
$ \Pi\nu = \nu$ in the time-domain. 

To solve this time-domain fixed point problem, we have 
two choices.
- Apply fixed point iteration/Anderson acceleration. 
- Rewrite the $\Pi\nu = \nu$ as an equivalent linear system 
$$ (I-S)\nu = \Pi 0,\;\text{with}\;S\nu = \Pi \nu -\Pi 0,$$
and solve it with an iterative solver.

Matrix vector multiplication $(I-S)\nu$ can be computed in a matrix-free manner based on a time-domain solver.

We want to point that $\Pi 0$ filters the solution corresponding to $0$ initial condition over one period and with non-zero source $\Pi 0\neq 0$. 

### How to adapt your time-domain code to solve a frequency-domain problem? 
Eessential new components include:
1. An integration in time to compute the result of the filtering operator, 
1. A function to wrap matrix-vector multiplication in matrix free format.

The filtering operator $\Pi$ can be implemented by adding a few more lines to your time-domain solver:
```matlab
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
```

### Basic properties
1. To some extent, WaveHoltz can be seen as preconditioning the frequency-domain problem with time-domain simulations and filtering.

1. In comparsion with limiting amplitude principle, the filtering process makes the convergence faster. Also, the WaveHoltz method can be applied to problems in closed domain (e.g. PEC boundary conditions in all boundary). 

1. The number of iterations for convergence with a Krylov solver:
- Does not depend on points per wavelength. 
- With a fixed number of points per wave length, it scales as $(\omega)$ for open domain problems and $O(\omega^d)$ ($d$ is the dimension$ for the worst case prolbem.


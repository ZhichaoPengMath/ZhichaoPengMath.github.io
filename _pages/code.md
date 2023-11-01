---
layout: archive
title: "Code"
permalink: /code/
author_profile: true
---

WaveHoltz
======
Simple 1D demo codes to showcase how to couple EM-WaveHoltz with a time-domain solver[julia](https://zhichaopengmath.github.io/files/WaveHoltz_1D_Demo.zip)

Basic Ideas: 
1. Given the frequency-domain problem, such as the following simple non-dimensionalized case:
$$
\begin{align}
i\omega E = \nabla\times H-J,\\
i\omega H = -\nabla\times E,
\end{align}
$$
define the corresponding time-domain problem
$$
\begin{align}
\partial_t \tilde{E} =  \nabla\times \tilde{H}- \sin(\omega t)Re(J)-\cos(\omega t) Im(J),\\
\partial_t \tilde{H} = -\nabla\times \tilde{E}，
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

1. With some simple algebra (check Appendix 1), one can 


Appendix 1
======
Suppose $(E,H)^T$ is the solutions of the non-dimensionalized equation
$$
\begin{align}
i\omega E = \nabla\times H-J,\\
i\omega H = -\nabla\times E,
\end{align}
$$
We will obtain 
$$
\begin{align}
-\omega Im(E) = \nabla\times Re(H)-Re(J), \\
 \omega Re(E) = \nabla\times Im(H)-Im(J), \\
-\omega Im(H) = -\nabla\times Re(E), \\
\omega  Re(H) = -\nabla\times Im(E). 
\end{align}
$$
Utilizing this relation, one can verify that 
$$
\begin{align}
\tilde{E}(t) = Im(E) \cos(\omega t) + Re(E) \sin(\omega t), \\
\tilde{H}(t) = Im(H) \cos (\omega t) + Re(H) \sin (\omega t).
\end{align}
$$
is a solution of
$$
\begin{align}
\partial_t \tilde{E} =  \nabla\times \tilde{H}- \sin(\omega t)Re(J)-\cos(\omega t) Im(J),\\
\partial_t \tilde{H} = -\nabla\times \tilde{E}.
\end{align}
$$

Subsititute $( \tilde{E}_0,\tilde{H}_0)^T=(Im(E),Im(H))^T$ and $( \tilde{E}(t),\tilde{H}(t) )^T$into the definition of filtering operator $\Pi$, one can easily show that 
$$
\begin{align}
\Pi \left(\begin{matrix}
Im(E)\\
Im(H)
\end{matrix}\right)=
\left(\begin{matrix}
Im(E)\\
Im(H)
\end{matrix}\right)
\end{align}
$$



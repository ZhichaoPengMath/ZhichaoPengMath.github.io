---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---
Asymptotic preserving schemes for linear kinetic transport equations under a diffusive scaling
--------------------------
Linear kinetic transport equations provide a prototype model for the neutron transport, the radiation transfer, etc. Under a diffusive scaling, when the Knudsen number 
\\[\varepsilon = \frac{\textrm{mean free path of the particle} }{\textrm{character length scale} } \\]
goes to \\(0\\), the kinetic equation asymptotically converges to a diffusion equation. To conquer the stiffness for \\(\varepsilon\ll 1\\), asymptotic preserving (AP) scheme, which converges to a convergent liminting scheme for the limiting diffusive equation, is a natrual choice.

In [2013,Boscarino, Pareschi,Russo], a family of high order schemes is proposed to achieve unconditional stability in the diffusive regime \\(\varepsilon\ll 1\\). Their scheme is based on the even-odd decomposition and a further equivalent reformulation with the introduction of a weighted diffusive term.

To deepen the theoretical understanding of their further reformulation idea, under the framework of micro-macro decomposition, we perform [Fourier-type](https://homepages.rpi.edu/~lif/papers/paper_APN1_Peng.pdf) and energy-type analysis. Based on Fourier analysis, we numerically solve an eigen-value problem, confirms the unconditional stabilty for \\(\varepsilon\ll 1\\), and identifies the preferrable structure of the numerical weight and stability condition for \\(\varepsilon=O(1)\\). With energy analysis, we rigorously prove the stability property. Formal and rigorous asymptotic analysis as well as initial layers  are also considered.

Recently, we find a new strategy without introducing the diffusive term and the furhter reformulation, to define high order AP schemes, with unconditional stability in the diffusive regime. The relavent paper is under preparation.


Structure preserving schemes for the Maxwell equations in a nonlinear optical media
------------------------
The linear dispersive response Lorentz effect and the nonlinear Kerr effect are widely considered for nonlinear optical mediums.  The Kerr effect is instantaneous, however, when the characteristic time scale of nonlinear response is small (a few femtoseconds), the relaxation time of the nonlinear effect may not be negligible. Instead, the nonlinear Kerr-Debye effect, which takes the relaxation time into account, should be considered. The Kerr-Debye-Lorentz model can be explained by Maxwell equations, a constitutive relation, and auxiliary differential equations (ADEs).

Physically, the Kerr-Debye-Lorentz model has (1) an energy relation, (2) preserves the positivity of the third order susceptibility and (3) asymptotically converges to the Kerr-Lorentz model as the relaxation of the nonlinear effect goes to 0. We design [a family of second order schemes](https://homepages.rpi.edu/~lif/papers/paperOPAP_peng.pdf) discretely preserving the positivity and the asymptotic limit. Some of them also preserve a discrete energy relation. The main ingredients of our schemes are as follow.
- We design a novel second order odified exponential time integrator for the ADE, which is asymptotic and positivity preserving at the same time.
- We propose an energy based reformulation of the constitutive relation, to achieve provable energy preserving properties.
- We apply a nodal discontinuous Galerkin (DG) spatial discretization and symplectic time integrators to the Maxwell part.

A discontinuous Pertrov Galerkin (DPG) method for the Grad-Shafranov equation
--------------------------
The toroidally axisymmetric plasma equilibrium is determined by the Grad-Shafranov equation. For now, we are considering a fixed plasma boundary with given source term. By solving the Grad-Shafrnov equation, we can obtain
\\[ \psi = \frac{\textrm{Poloidal magnetic flux} }{2\pi}.\\]
The magnetic field and the current are determined by \\(\widetilde{\nabla}\psi\\). Physically, the magnetic field and the current are of more interest, hence, it is essential for a numerical Grad-Shafranov equation solver to approximate \\(\widetilde{\nabla}\psi\\) accurately. 

In order to get accurate approximations to \\(\widetilde{\nabla}\psi\\), we are developing an ultra-weak discontinuous Petrov Galerkin (DPG) finite element solver under the framework of [MFEM](https://mfem.org/). The Anderson acceleration and algebraic multigrid preconditioners are applied for nonlinear solvers [PETSc](https://www.mcs.anl.gov/petsc/) and [HYPTE](https://computing.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods). Conforming adaptive mesh refinement (AMR) is also considered.

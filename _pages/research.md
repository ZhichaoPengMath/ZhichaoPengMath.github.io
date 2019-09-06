---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---
Asymptotic preserving schemes for linear kinetic transport equations under a diffusive scaling
--------------------------


Structure preserving schemes for the Maxwell equations in a nonlinear optical media
------------------------
The linear dispersive response Lorentz effect and the nonlinear Kerr effect are widely considered for nonlinear optical mediums.  The Kerr effect is instantaneous, however, when the characteristic time scale of nonlinear response is small (a few femtoseconds), the relaxation time of the nonlinear effect may not be negligible. Instead, the nonlinear Kerr-Debye effect, which takes the relaxation time into account, should be considered. The Kerr-Debye-Lorentz model can be explained by Maxwell equations, a constitutive relation, and auxiliary differential equations (ADEs).

Physically, the Kerr-Debye-Lorentz model has (1) an energy relation, (2) preserves the positivity of the third order susceptibility and (3) asymptotically converges to the Kerr-Lorentz model as the relaxation of the nonlinear effect goes to 0. We design a family of second order schemes discretely preserving the positivity and the asymptotic limit. Some of them also preserves a discrete energy relation. The main ingredients of our schemes are as follow.
- We design a novel second order odified exponential time integrator for the ADE, which is asymptotic and positivity preserving at the same time.
- We propose an energy based reformulation of the constitutive relation, to achieve provable energy preserving properties.
- We apply a nodal discontinuous Galerkin (DG) spatial discretization and symplectic time integrators to the Maxwell part.

A discontinuous Pertrov Galerkin (DPG) method for the Grad-Shafranov equation
--------------------------
The toroidally axisymmetric plasma equilibrium is determined by the Grad-Shafranov equation. For now, we are considering a fixed plasma boundary with given source term. By solving the Grad-Shafrnov equation, we can obtain
\\[ \psi = \frac{\textrm{Poloidal magnetic flux} }{2\pi}.\\]
The magnetic field and the current are determined by \\(\widetilde{\nabla}\psi\\). Physically, the magnetic field and the current are of more interest, hence, it is essential for a numerical Grad-Shafranov equation solver to approximate \\(\widetilde{\nabla}\psi\\) accurately. 

In order to get accurate approximations to \\(\widetilde{\nabla}\psi\\), we are developing an ultra-weak discontinuous Petrov Galerkin (DPG) finite element solver under the framework of [MFEM](https://mfem.org/). The Anderson acceleration and algebraic multigrid preconditioners are applied for nonlinear solvers [PETSc](https://www.mcs.anl.gov/petsc/) and [HYPTE](https://computing.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods). Conforming adaptive mesh refinement (AMR) is also considered.

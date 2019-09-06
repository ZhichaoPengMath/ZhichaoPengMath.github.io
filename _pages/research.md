---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---


Linear kinetic transport equations under a diffusive scaling
--------------------------

Maxwell equations in nonlinear optical mediums
------------------------

Grad-Shafranov equation
--------------------------
The toroidally axisymmetric plasma equilibrium is determined by the Grad-Shafranov equation:
\\[\widetilde{\nabla}\left(\frac{1}{r}\widetilde{\nabla}\psi\right)=\mu_0 r^2\frac{\partial p}{\partial \psi}+\frac{1}{2}\frac{\partial g^2}{\partial \psi},\\]
where \\(2\pi\psi(r,z)\\) is the poloidal magnetic flux, \\( p \\) is the plasma pressure, and 
\\(2\pi g\\) is the net poloidal current flow and the toridal field coils. For now, we are considering the fixed boundary porblems with given \\(p\\) and \\(g\\). The magnetic field and the current, which are of more interest, are determined by \\(\widetilde{\nabla}\psi\\), hence, it is essential for a numerical solver to approximate \\(\widetilde{\nabla}\psi\\) accurately. 

In order to get a more accurate approximation to \\(\widetilde{\nabla}\psi\\), we are developing a discontinuous Petrov Galerkin (DPG) finite element solver under the framework of [MFEM](https://mfem.org/).

---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

 You can also find my publication record on [Google Scholar](https://scholar.google.com/citations?user=rCPL8qoAAAAJ&hl=en). Papers (up to 10/2026) are listed below. Google scholar does a much better tracking job than myself.

## Recent highlights and interest
Recent advances in low-rank numerical solvers and data-driven model order reduction offer opportunities to mitigate the curse of dimensionality in kinetic equations posed in high-dimensional phase space.

Low-rank iterative solvers for high-dimensional elliptic equations and low-rank time integrators for kinetic equations are well established, while low-rank iterative solvers for kinetic equations remain under active development. For the radiative transfer equation (RTE), we have recently developed efficient sampling-based rank-adaptation techniques compatible with the transport sweeps and synthetic acceleration methods widely used in RTE community. We further improve their efficiency via adaptive accuracy control at each iteration. (See [Guo–Peng, 2026](https://arxiv.org/abs/2603.25233), accepted by SISC, and [Han–Einkemmer–Guo–Peng, 2026](https://arxiv.org/abs/2610.07653), preprint.)

Inverse problems, sensitivity analysis, and uncertainty quantification often require solving the RTE for many parameter values, such as different scattering strengths or source configurations. Data-driven reduced-order models (ROMs) built from accumulated solution data can exploit low-rank structures across parameters or time steps in parametric or time-dependent RTE. Heuristically, ROMs  can effectively capture dominating low-frequency structures, and classical preconditioners damp high-frequency error components faster. Building on this complementary strength, we design hybrid preconditioners for parametric RTE that combine the efficiency of data-driven ROMs with the robustness of classical diffusion synthetic acceleration (DSA). (See [Peng, 2024, JCP](https://arxiv.org/abs/2402.10488), and [Tang–Peng, 2025](https://arxiv.org/abs/2509.05001), preprint.)

Low-rank solvers exploit low-rank structures in the phase space of the RTE, while data-driven ROMs exploit structures across parameters but typically require high-dimensional kinetic training data. These complementary strengths motivate combining the two approaches. We have constructed data-driven low-rank ROMs directly from streaming low-rank solution data. The resulting ROMs have a cheaper offline stage than classical ROMs built from full-rank data, and their online stage is more efficient than the underlying low-rank solver. (See [Guo–Peng, 2026](https://arxiv.org/abs/2606.26900), preprint on incremental tensor-train compression.)



## Preprints 
1. C. Han, L. Einkemmer, W. Guo, Z. Peng, Low-rank SI-DSA and GMRES-DSA for Radiative Transfer Equation with Adaptive Accuracy Control, 2026. [arXiv:2610.07653](https://arxiv.org/abs/2610.07653).

1. D. Appelö, W. D. Henshaw, Z. Peng, Numerical Study of Eigenvector Deflation to Accelerate the WaveHoltz Method, 2026. [arXiv:2606.31842](https://arxiv.org/abs/2606.31842).

1. W. Guo, Z. Peng, Incremental Tensor-Train Compression from Streaming TT-Formatted Data: Applications to Reduced-Order Modeling, 2026. [arXiv:2606.26900](https://arxiv.org/abs/2606.26900).

1. M. Li, Y. Xiang, Z. Peng, Enhancing Future Prediction of Linear and Nonlinear Reduced-Order Models for Transport-Dominated Problems Using Lagrangian Data, 2026. [arXiv:2603.19702](https://arxiv.org/abs/2603.19702).

1. N. Liu, Z. Peng, On-the-Fly ROM-Based Acceleration of SI-DSA for Implicit Time Marching of the Radiative Transfer Equation, 2026. [arXiv:2603.19647](https://arxiv.org/abs/2603.19647).

1. N. Tang, Z. Peng, Synthetic Acceleration Preconditioners for Parametric Radiative Transfer Equations based on Trajectory-Aware Reduced Order Models, 2025. [arXiv:2509.05001](https://arxiv.org/abs/2509.05001).

1. A. Galindo-Olarte, Z. Peng, J. K. Ryan, Superconvergence Extraction of Upwind Discontinuous Galerkin Method Solving the Radiative Transfer Equation, 2025. [arXiv:2509.00296](https://arxiv.org/abs/2509.00296).

1. T. Jin, Z. Peng, Y. Xiang, Adaptive and hybrid reduced order models to mitigate Kolmogorov barrier in a multiscale kinetic transport equation, 2025. [arXiv:2505.08214](https://arxiv.org/abs/2505.08214).

1. Y.-M. Law, Z. Peng, D. Appelö, T. Hagstrom, A P-Adaptive Hermite Method for Nonlinear Dispersive Maxwell's Equations, 2025. [arXiv:2504.09269](https://arxiv.org/abs/2504.09269).

## Accepted papers 
1. W. Guo, Z. Peng, Highly Efficient Rank-Adaptive Sweep-based SI-DSA for the Radiative Transfer Equation via Mild Space Augmentation, accepted by *SIAM Journal on Scientific Computing*, 2026. [arXiv:2603.25233](https://arxiv.org/abs/2603.25233).

## Journal articles 
1. W. Guo, Z. Peng, An Inexact Low-Rank Source Iteration for Steady-State Radiative Transfer Equation with Diffusion Synthetic Acceleration, *Journal of Computational Physics*, article 115427, in press, 2026. [Journal](https://doi.org/10.1016/j.jcp.2026.115427) · [arXiv:2509.00805](https://arxiv.org/abs/2509.00805).

1. L. Ji, Z. Peng, Y. Chen, AAROC: Reduced Over-Collocation Method With Adaptive Time Partitioning and Adaptive Enrichment for Parametric Time-Dependent Equations, *Numerical Methods for Partial Differential Equations*, 41(5), e70031, 2025. [Journal](https://doi.org/10.1002/num.70031) · [arXiv:2412.02152](https://arxiv.org/abs/2412.02152).

1. Z. Peng, A flexible GMRES solver with reduced order model enhanced synthetic acceleration preconditioner for parametric radiative transfer equation, *Journal of Computational Physics*, 534, 114004, 2025. [Journal](https://doi.org/10.1016/j.jcp.2025.114004) · [arXiv:2410.08735](https://arxiv.org/abs/2410.08735).

1. Z. Peng, Reduced order model enhanced source iteration with synthetic acceleration for parametric radiative transfer equation, *Journal of Computational Physics*, 517, 113303, 2024. [arXiv:2402.10488](https://arxiv.org/abs/2402.10488).

1. Z. Peng, Y. Chen, Y. Cheng, F. Li, A micro-macro decomposed reduced basis method for the time-dependent radiative transfer equation, *Multiscale Modeling & Simulation*, 22(1), 639–666, 2024. [arXiv:2211.04677](https://arxiv.org/abs/2211.04677).

1. Z. Peng, D. Appelö, S. Liu, Universal AMG Accelerated Embedded Boundary Method Without Small Cell Stiffness, *Journal of Scientific Computing*, 97, article 40, 2023. [arXiv:2204.06083](https://arxiv.org/abs/2204.06083).

1. L. A. Martinez, Z. Peng, D. Appelö, D. M. Tennant, N. A. Petersson, J. L. DuBois, Y. J. Rosen, Noise-specific beating in the higher-level Ramsey curves of a transmon qubit, *Applied Physics Letters*, 122(11), 114002, 2023. [Journal](https://doi.org/10.1063/5.0138811) · [arXiv:2211.06531](https://arxiv.org/abs/2211.06531).

1. Z. Peng, M. Wang, F. Li, A learning-based projection method for model order reduction of transport problems, *Journal of Computational and Applied Mathematics*, 418, 114560, 2023. [arXiv:2105.14633](https://arxiv.org/abs/2105.14633).

1. H. Zhang, Z. Peng, Total generalized variation for triangulated surface data, *Journal of Scientific Computing*, 93, article 87, 2022.

1. Z. Peng, D. Appelö, EM-WaveHoltz: A flexible frequency-domain method built from time-domain solvers, *IEEE Transactions on Antennas and Propagation*, 70(7), 2022. [Journal](https://doi.org/10.1109/TAP.2022.3161448) · [arXiv:2103.14789](https://arxiv.org/abs/2103.14789) · [Short tutorial and 1D demo code](https://zhichaopengmath.github.io/code/).

1. Z. Peng, Y. Chen, Y. Cheng, F. Li, A reduced basis method for radiative transfer equation, *Journal of Scientific Computing*, 91, article 5, 2022. [arXiv:2103.07574](https://arxiv.org/abs/2103.07574).

1. Z. Peng, F. Li, Asymptotic preserving IMEX-DG-S schemes for linear kinetic transport equations based on Schur complement, *SIAM Journal on Scientific Computing*, 43(2), A1194–A1220, 2021. [arXiv:2006.07497](https://arxiv.org/abs/2006.07497).

1. Z. Peng, Y. Cheng, J.-M. Qiu, F. Li, Stability-enhanced AP IMEX1-LDG method: energy-based stability and rigorous AP property, *SIAM Journal on Numerical Analysis*, 59(2), 925–954, 2021. [arXiv:2005.05454](https://arxiv.org/abs/2005.05454).

1. Z. Peng, Q. Tang, X.-Z. Tang, An Adaptive Discontinuous Petrov–Galerkin Method for the Grad–Shafranov Equation, *SIAM Journal on Scientific Computing*, 42(5), B1227–B1249, 2020. [Journal](https://doi.org/10.1137/19M1309894) · [arXiv:2001.04524](https://arxiv.org/abs/2001.04524).

1. Z. Peng, Y. Cheng, J.-M. Qiu, F. Li, Stability-enhanced AP IMEX-LDG schemes for linear kinetic transport equations under a diffusive scaling, *Journal of Computational Physics*, 415, 109485, 2020. [Journal](https://www.sciencedirect.com/science/article/pii/S002199912030259X).

1. Z. Peng, V. A. Bokil, Y. Cheng, F. Li, Asymptotic and positivity preserving methods for Kerr-Debye model with Lorentz dispersion in one dimension, *Journal of Computational Physics*, 402, 109101, 2020. [Journal](https://www.sciencedirect.com/science/article/pii/S002199911930806X).

## Technical Reports

1. Z. Peng, D. Appelö, N. A. Petersson, M. Motamed, F. Garcia, Y. Cho, Deterministic and Bayesian Characterization of Quantum Computing Devices, 2023. [arXiv:2306.13747](https://arxiv.org/abs/2306.13747).

1. Z. Peng, D. Appelö, N. A. Petersson, F. Garcia, Y. Cho, Mathematical approaches for characterization, control, calibration and validation of a quantum computing device, 2023. [arXiv:2301.10712](https://arxiv.org/abs/2301.10712).

# Designing-a-Point-to-Point-Link-for-High-Speed-Backhauling

This repository presents the design and simulation of a high-speed point-to-point link, specifically optimized for backhauling applications in the E-band (71-76 GHz / 81-86 GHz). The project includes the realization of a complete link with RF transmission and reception sections, baseband simulations, and a detailed link budget calculation.

Key Features:
• E-band: Designed to operate at 72 GHz.
• Data Rate: Supports a data rate of 150 Mbps.
• Modulation: Utilizes 64-QAM modulation.
• Distance: Optimized for a distance of 1 km.
• Real Components: The design incorporates real RF components such as Power Amplifiers (PA), Mixers, Drivers, Low Noise Amplifiers (LNA), and Antennas.
• Link Architecture: Includes up and down conversion between baseband, intermediate frequency (IF at 1200 MHz), and radio frequency (RF).
• Link Budget: Detailed link budget calculation with a 4 dB margin in "clear sky" conditions.
• ADSim Simulations: In-depth analysis and calculation of the system's overall noise figure (8.17 dB) through ADSim simulations.
• Simulation Spectra: Graphs are provided for the baseband and IF spectra for both transmission and reception sections, as well as a comparison of the IF spectra and the Carrier to Noise Figure (CNF) graph across the different system stages.

Repository Structure:
• Docs/: Contains the detailed technical report (Technical Report ENG.docx) with the project description, specifications, link budget calculations, and component analyses.
• Simulations/: Simulation results and graphs.

This project provides a comprehensive overview of designing a high-speed backhauling link, from initial specifications to theoretical calculations and verification through simulations.

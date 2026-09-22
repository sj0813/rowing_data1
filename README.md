# Ergometer Multi-Sensor Interactive Dashboards (GCBME 2026)

This folder contains the complete, self-contained interactive visualization dashboards generated for the GCBME 2026 study.

## Files in this Directory:
1. **index.html**: Master portal launcher linking both dashboards.
2. **
owing_cycle_dissection_dashboard.html**:
   - Time-domain consecutive stroke wave inspection after the start sync anchor.
   - Discrete **Catch ( > 6.0	ext{ N}$)**, **Peak Force**, and **Finish ( < 5.0	ext{ N}$)** event markings.
   - Drive & Recovery phase durations (Drive .05 \pm 0.07	ext{ s}$ / .4\%$; Recovery .95 \pm 0.06	ext{ s}$ / .6\%$).
   - Superimposed stroke cycles (0%–100% normalized & raw physical seconds).
   - Multi-device synchronized coordination (Loadcell, Noraxon, Novel Hand & Feet).
   - Interactive 182-cycle searchable metrics table.
3. **gyro_synchronization_dashboard.html**:
   - Independent kinematic synchronization standard based on 3-axis resultant angular velocity ({\text{res}}$).
   - Before Sync (Raw Clocks) vs. After Sync (Aligned Time) comparison.
   - Start 90° handle rotation anchor (~13 s) and End 90° handle rotation anchor (~312 s).
   - Hardware clock drift (~103 ppm) and sub-millisecond residual lag validation.

## How to Open:
- Double-click index.html to open the portal in your default web browser (Chrome, Edge, Firefox, Safari).
- Or double-click either .html file directly.
- No local web server or internet connection is required. All data is embedded directly into the files.

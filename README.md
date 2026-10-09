# Multi-Modal Rowing Ergometer Telemetry and Biomechanical Decoupling Dataset

[![Dataset Version](https://img.shields.io/badge/Dataset-v1.0%20(2026)-blue.svg)](https://sj0813.github.io/rowing_data1/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-emerald.svg)](https://creativecommons.org/licenses/by/4.0/)
[![GCBME 2026](https://img.shields.io/badge/Conference-GCBME%202026-rose.svg)](https://sj0813.github.io/rowing_data1/)

Official companion open dataset and interactive telemetry dashboards for the paper:  
**"Metrological Audit and Multi-Node Telemetry Synchronization of an Embedded Handlebar Loadcell for Rowing Ergometry"**  
Presented at *The 7th Global Conference on Biomedical Engineering & Annual Meeting of Taiwanese Society of Biomedical Engineering (GCBME 2026 / TSME)*.

**Live Portal & Interactive Dashboards:** [https://sj0813.github.io/rowing_data1/](https://sj0813.github.io/rowing_data1/)

---

## 📄 Study Abstract (GCBME 2026 Final Camera-Ready)

> **Abstract:** Precise temporal integration between handle pulling kinetics and whole-body kinematics is fundamental in rowing biomechanics, because interpreting stroke efficiency depends on phase-locking force to movement landmarks. Land-ergometer studies have established the measurement basis for this: instrumented rowing systems validated for power output against the Concept2 ergometer [1], a systematic review of inertial sensing cataloguing handle-trajectory and stroke-phase measures [2], and motorized test rigs characterizing wind-braked ergometer behavior under controlled loading [3,4]. However, literature and training protocols routinely assume that independent commercial sensors record synchronously on nominal time bases, ignoring packet arrival jitter, effective sampling bottlenecks, and progressive clock drift (~100 ppm, accumulating ~31 ms over 5 min) that introduce artificial phase shifts and circular reasoning between force and motion. To address this gap, the purpose of this study was to conduct a multi-day temporal audit and validate a motion-derived affine synchronization framework. One healthy young participant performed at least 5 minutes of continuous steady-state rowing on each of three consecutive days (N = 1, 295 strokes), using a custom in-line handle loadcell (100 Hz), Novel loadpads (200 Hz) for hand and thumb, and a Noraxon IMU (200 Hz). The loadcell showed regular timestamps (96.17 ± 4.37% exact 10-ms intervals) and a reproducible clock separation of +103.3 ± 1.6 ppm (R² = 0.990), while the Novel hand unit delivered only 72.95 updates/s within its nominal 200-Hz grid. Motion-derived affine mapping achieved sub-millisecond alignment without circular force reliance (median residual lag 0.516 ± 0.177 ms; 95% limits of agreement −1.77 to +1.85 ms), and peak-anchored dissection resolved every motion-defined cycle (242.1 ± 33.6 N peak handle force, 20.05 ± 0.81 SPM). This framework provides sports scientists and coaches with an auditable, sub-millisecond telemetry standard for phase-accurate force–motion feedback during land rowing ergometer training.
> 
> **Keywords:** rowing biomechanics; clock drift; synchronization; wearable sensors

---

## 👥 Authors & Affiliations
* **Shing-Jye Chen, Ph.D.**<sup>1,*</sup> (Lead Investigator & Corresponding Author, `sjchen@tiss.org.tw`)
* **Tegar Anugrah Firdaus**<sup>2</sup>
* **Achmad Syaifudin, S.T., M.T.**<sup>2</sup>

<sup>1</sup> **Department of Sports Biomechanics, Taiwan Institute of Sports Science (TISS)**, No. 419, Shibo Rd., Zuoying Dist., Kaohsiung 813282, Taiwan  
<sup>2</sup> **Department of Medical Technology, Institut Teknologi Sepuluh Nopember (ITS)**, Sukolilo, Surabaya 60111, Indonesia  

---

## 📖 Citation

If you use this dataset, telemetry dashboards, or synchronization framework in your research, please cite reference [11] of the conference proceedings:

### IEEE / APA Citation
> S.-J. Chen, T. A. Firdaus, and A. Syaifudin, "Multi-Modal Rowing Ergometer Telemetry and Biomechanical Decoupling Dataset," Taiwan Institute of Sports Science, 2026. [Online]. Available: https://sj0813.github.io/rowing_data1/

### BibTeX
```bibtex
@misc{chen2026rowing,
  author       = {Chen, Shing-Jye and Firdaus, Tegar Anugrah and Syaifudin, Achmad},
  title        = {Multi-Modal Rowing Ergometer Telemetry and Biomechanical Decoupling Dataset},
  year         = {2026},
  publisher    = {Taiwan Institute of Sports Science (TISS)},
  howpublished = {\url{https://sj0813.github.io/rowing_data1/}},
  note         = {The 7th Global Conference on Biomedical Engineering (GCBME 2026)}
}
```

---

## 🎯 Dataset Key Specifications & Benchmarks
* **Cohort Scope**: 295 consecutive strokes across 3 independent testing days (Day 1: 96 strokes, Day 2: 100 strokes, Day 3: 99 strokes).
* **Clock Synchronization**: Kinematic cross-correlation anchors using 3D resultant angular velocity ($G_{res}$). Hardware clock drift of $+103.3$ ppm corrected to a sub-millisecond residual lag of $0.516$ ms.
* **Sensor Modalities**:
  * Custom Handle Tensile Loadcell ($0–500$ N, $100$ Hz)
  * Novel Palmar & Dorsal Metrology ($200$ Hz nominal export grid, $73$ Hz effective update rate)
  * 3-Way Noraxon 3D IMU/Gyroscopes ($200$ Hz, $\pm 2000$ °/s)
  * Instrumented Footplate Transducers ($0–550$ N)
* **Pooled Biomechanical Metrics (Mean ± SD)**:
  * Peak Handle Pull Force: **$242.1 \pm 33.6$ N**
  * Stroke Cadence: **$20.05 \pm 0.81$ SPM**
  * Cycle Duration: **$2.997 \pm 0.122$ s** (Drive: $2.141 \pm 0.095$ s / $71.5 \pm 3.4\%$; Recovery: $0.856 \pm 0.122$ s / $28.5 \pm 3.4\%$)
  * Duplicate Packet Suppression: **$63.52\%$** (Novel BLE telemetry pipeline)

---

## 🖼️ Official Conference Camera-Ready Figures
1. **Figure 1 (`fig1_final.jpg`)**: **Experimental setup** — (A) TISS Concept2 ergometer environment, (B) Custom in-line S-beam handlebar loadcell (100 Hz), (C) Novel capacitive palmar/thumb loadpads (200 Hz), (D) Noraxon Ultium Motion 3D IMU (200 Hz).
2. **Figure 2 (`fig2_final.jpg`)**: **Cross-device temporal characterization and post-synchronization agreement** — (A) Cumulative Noraxon–Loadcell clock drift across Days 1, 2, and 3 (+103.3 ± 1.6 ppm, R² = 0.990), (B) Bland–Altman agreement of post-synchronization residual lags across all 89 evaluation windows (mean bias +0.040 ms, 95% LoA −1.77 to +1.85 ms, median lag 0.516 ms).
3. **Figure 3 (`fig3_final.jpg`)**: **Multi-modal biomechanical telemetry and cycle extraction fidelity** — (A) Ensemble stroke-normalized Catch-to-Catch profiles with Drive (0%–71.5%) and Recovery (71.5%–100%) phases demarcated by Finish event at 71.5%, in-line handle pulling force (242.1 ± 33.6 N), Novel palmar normal force, (B) Multi-day cycle duration consistency (2.997 ± 0.122 s, 20.05 SPM), (C) Deterministic force-peak phase location at 17.77 ± 0.67%.

## 💻 Interactive Dashboards & Portal
1. **`index.html`**: Master research portal, study abstract, official conference figures viewer (Figures 1, 2, and 3), cross-day metrics synthesis table, and supplementary interactive bar charts.
2. **`gyro_synchronization_dashboard.html`**: 1. Gyroscope synchronization dashboard — Kinematic cross-correlation synchronization based on resultant angular velocity ($G_{res}$), verifying $+103.3$ ppm hardware clock drift correction and $0.516$ ms residual lag.
3. **`rowing_cycle_dissection_dashboard.html`**: 2. Rowing cycle dissection dashboard — Catch-to-Catch cycle segmentation, drive/recovery phase decomposition (71.5% Finish Event), and complete 295-stroke searchable metric table.
4. **`raw_multichannel_rowing_dashboard.html`**: 3. Raw multi-channel dashboard — Continuous synchronized physical time series (295 strokes) with separated loadcell handle force, palmar hand force, thumb force, footplate forces, and 3-axis gyroscopes.

---

## 📄 License
This open science dataset and visualization software are distributed under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.

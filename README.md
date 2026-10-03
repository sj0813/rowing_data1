# Multi-Modal Rowing Ergometer Telemetry and Biomechanical Decoupling Dataset

[![Dataset Version](https://img.shields.io/badge/Dataset-v1.0%20(2026)-blue.svg)](https://sj0813.github.io/rowing_data1/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-emerald.svg)](https://creativecommons.org/licenses/by/4.0/)
[![GCBME 2026](https://img.shields.io/badge/Conference-GCBME%202026-rose.svg)](https://sj0813.github.io/rowing_data1/)

Official companion open dataset and interactive telemetry dashboards for the paper:  
**"Multi-Modal Sensor Synchronization and Palmar Force Metrology in Indoor Rowing Ergometry"**  
Presented at *The 7th Global Conference on Biomedical Engineering & Annual Meeting of Taiwanese Society of Biomedical Engineering (GCBME 2026 / TSME)*.

**Live Portal & Interactive Dashboards:** [https://sj0813.github.io/rowing_data1/](https://sj0813.github.io/rowing_data1/)

---

## 👥 Authors & Affiliations
* **Shing-Jye Chen, Ph.D.**<sup>1,*</sup> (Lead Investigator & Corresponding Author, `chen.sj@tiss.org.tw`)
* **Tegar Anugrah Firdaus**<sup>2</sup>
* **Achmad Syaifudin, S.T., M.T.**<sup>2</sup>

<sup>1</sup> **Department of Sports Biomechanics, Taiwan Institute of Sports Science (TISS)**, No. 419, Shibo Rd., Zuoying Dist., Kaohsiung 813013, Taiwan  
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
  * Custom Handle Tensile Loadcell ($0–500$ N, $500$ Hz)
  * Novel Palmar & Dorsal Metrology ($500$ Hz, $450$ N range)
  * 3-Way Noraxon 3D IMU/Gyroscopes ($500$ Hz, $\pm 2000$ °/s)
  * Instrumented Footplate Transducers ($0–550$ N)
* **Pooled Biomechanical Metrics (Mean ± SD)**:
  * Peak Handle Pull Force: **$242.1 \pm 33.6$ N**
  * Stroke Cadence: **$20.05 \pm 0.81$ SPM**
  * Cycle Duration: **$2.997 \pm 0.122$ s** (Drive: $2.05 \pm 0.06$ s / $68.4\%$; Recovery: $0.94 \pm 0.10$ s / $31.6\%$)
  * Duplicate Packet Suppression: **$63.52\%$** (Novel BLE telemetry pipeline)

---

## 💻 Files & Interactive Dashboards
1. **`index.html`**: Master research portal, cross-day metrics synthesis table, and interactive bar charts (Publication Figure 2).
2. **`raw_multichannel_rowing_dashboard.html`**: Continuous synchronized physical time series (295 strokes) with separated loadcell handle force, palmar hand force, thumb force, footplate forces, and 3-axis gyroscopes.
3. **`gyro_synchronization_dashboard.html`**: Kinematic cross-correlation synchronization based on resultant angular velocity ($G_{res}$), verifying $+103.3$ ppm hardware clock drift correction and $0.516$ ms residual lag.
4. **`rowing_cycle_dissection_dashboard.html`**: Catch-to-Catch cycle segmentation, drive/recovery phase decomposition, and 182-cycle searchable metric table.

---

## 📄 License
This open science dataset and visualization software are distributed under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.

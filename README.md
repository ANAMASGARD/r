# R Test Solutions

This repository consolidates all my GSoC 2026 test submissions for the animint2 project.

Each solution is implemented in R and includes an interactive visualization hosted on GitHub Pages.

---

## Solutions

### 1. Easy Test Solution

- **NYC Air Quality Month Selector**: [GitHub Pages Link](https://anamasgard.github.io/airquality-pages/)
- **Source Code**: [airquality-source/airquality.R](https://github.com/ANAMASGARD/airquality-source/blob/main/airquality.R)
- **Error demonstration**: When `animint2` is loaded at the same time as standard `ggplot2`, function masking occurs, leading to conflicts.
  ```
  Attaching package: 'animint2'
  The following objects are masked from 'package:ggplot2':
  ```
  Functions like `geom_point`, `geom_line`, `geom_rect`, `geom_segment`, `geom_text` are masked by `animint2` versions.

---
### 2. Medium Test Solutions

**Confidence Interval Visualization**
- Demo: [GitHub Pages Link](https://anamasgard.github.io/conf-int-animint/)
- Source Code: [conf_int_viz.R](https://github.com/ANAMASGARD/conf-int-animint/blob/main/conf_int_viz.R)

---

**Bootstrap i.i.d. Resampling**
- **Demo**: [GitHub Pages Link](https://anamasgard.github.io/boot-iid-animint/)
- **Source Code**: [boot_iid_viz.R](https://github.com/ANAMASGARD/boot-iid-animint/blob/main/boot_iid_viz.R)

---

**k-Fold Cross Validation**
- **Demo**: [GitHub Pages Link](https://anamasgard.github.io/cv-ani-animint/)
- **Source Code**: [cv_ani_viz.R](https://github.com/ANAMASGARD/cv-ani-animint/blob/main/cv_ani_viz.R)

---

### 3. Medium-Hard Test Solution

- **Gallery URL**: [GitHub Pages Link](https://anamasgard.github.io/Gaurav-Animint-Gallery/)
- **Source Code**: [index.Rmd](https://github.com/ANAMASGARD/Gaurav-Animint-Gallery/blob/gh-pages/index.Rmd)

---

### 4. Hard Test Solution

- **Video Demonstration**: [YouTube](https://youtu.be/nRcdeblYdmY?si=u6BNbREhlXkWZvku)
- **Pull Request**: [animint/animint2#310](https://github.com/animint/animint2/pull/310)

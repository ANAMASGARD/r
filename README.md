# r

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
## Medium

**Confidence Interval Visualization**
- Demo: [GitHub Pages Link](https://anamasgard.github.io/conf-int-animint/)
- Source Code: [conf_int_viz.R](https://github.com/ANAMASGARD/conf-int-animint/blob/main/conf_int_viz.R)


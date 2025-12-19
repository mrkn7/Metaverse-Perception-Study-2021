# Perceptions of the Metaverse at the Peak of the Hype Cycle

### A Cross-Sectional Study Among Turkish University Students (December 2021)

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![R](https://img.shields.io/badge/R-4.1.2+-blue.svg)](https://www.r-project.org/)
[![Python](https://img.shields.io/badge/Python-3.8+-yellow.svg)](https://www.python.org/)
[![Status](https://img.shields.io/badge/Status-Completed-success.svg)]()

## 📌 Overview

This repository contains the dataset, statistical analysis code, and visualizations for the study **"Perceptions of the Metaverse at the Peak of the Hype Cycle."**

Conducted in **December 2021**—during the global peak of interest in the Metaverse—this study provides a historical snapshot of early adoption skepticism among **381 Turkish university students**. Unlike previous studies assuming demographic determinism, this research utilizes **Fisher's Exact Tests** and **Binary Logistic Regression** to demonstrate that adoption is driven by **normative beliefs and psychological safety**, rather than gender, age, or digital literacy.

## 🔑 Key Findings

| Metric | Result | Interpretation |
| :--- | :--- | :--- |
| **Adoption Rate** | **8.7%** | Low overall willingness to spend time in the Metaverse. |
| **Top Driver (+)** | **Human Rights Optimism** | Belief in positive rights transformation increases adoption odds by **7.79x** ($p=0.021$). |
| **Top Barrier (-)** | **Cyber Syndrome** | Fear of psychological harm decreases adoption odds by **85%** ($p=0.032$). |
| **Demographics** | **Not Significant** | Gender ($p=0.85$), Education ($p=0.74$), and VR Experience ($p=0.70$) do not predict adoption. |
| **Social Media** | **No Correlation** | Heavy social media usage does not correlate with Metaverse willingness ($p=0.67$). |

---


## Contributions

- **First Turkish study** of Metaverse perceptions at peak-hype period
- **Empirical evidence** of perception-driven over demographic-driven adoption
- **Transparent reporting** of null findings (demographics, VR experience, social media)
- **Robust methods:** Fisher's Exact Tests for sparse tables; logistic regression with proper fit assessment
- **Reproducible research:** Complete scripts and anonymized data provided

---

## 📂 Repository Structure

```
├── data/
│   ├── raw_survey_data.csv          
│   └── processed_data.csv           
├── scripts/
│   └── cleaning_merging_translation_visualization.R  
├── notebooks/
│   └── all_analysis.ipynb          
├── figures/                      
├── paper/                          
├── README.md                      
└── requirements.txt
```          
---
## 📊 Data & Methodology

### Sampling
* **Method:** Convenience snowball sampling via university networks.
* **Period:** December 6–20, 2021.
* **Sample Size:** $N = 398$ (Raw) $\to$ $N = 381$ (Final Analytical Sample).

### Variables of Interest
The analysis focuses on predicting `Willingness to Spend Time` (Binary: High vs. Low/Neutral) using:
* **Demographics:** Gender, Education Level, Faculty.
* **Digital History:** Daily Social Media Usage, Prior VR Experience.
* **Perception Metrics (Likert):** Ethical concerns, Cyber-syndrome fears, Compatibility issues, Human rights expectations.

### Statistical Approach
* **Fisher's Exact Test:** Used for bivariate associations due to sparse contingency tables (expected cell frequencies < 5).
* **Cramér's V:** To measure effect size for categorical variables.
* **Binary Logistic Regression:** Multivariate modeling to identify independent predictors while controlling for confounders.
* **Model Fit:** Nagelkerke $R^2 = 0.226$, Hosmer-Lemeshow Goodness-of-Fit.

---

## 🚀 Reproducibility

### 1. Data Cleaning & Visualization (R)
The file `scripts/cleaning_merging_translation_visualization.R` handles the preprocessing pipeline:
* Standardizing language (TR $\to$ EN).
* Recoding Likert scales.
* Generating demographic distribution plots (`ggplot2`).

```
# To run the visualization script in RStudio or Console

source("scripts/cleaning_merging_translation_visualization.R")
```

### 2. Statistical Modeling (Python)
The notebook `notebooks/all_analysis.ipynb` contains the inferential statistics:
* **Fisher's Exact Tests implementation.**
* **Logistic Regression** using `statsmodels`.
* **Odds Ratio** calculation and diagnostics.

```
# Dependencies
`pandas`, `numpy`, `scipy`, `statsmodels`, `matplotlib`, `seaborn`

# Install dependencies
pip install -r requirements.txt

# Launch Notebook
jupyter notebook notebooks/all_analysis.ipynb
```

## 📜 Citation
If you use this dataset or code in your research, please cite the following preprint:



## License

This dataset and analysis are licensed under the **Creative Commons Attribution 4.0 International (CC-BY-4.0)** license.

See [LICENSE](LICENSE) file for details.




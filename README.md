# Perceptions of the Metaverse at the Peak of the Hype Cycle

### A Cross-Sectional Study Among Turkish University Students (December 2021)

[![Status](https://img.shields.io/badge/Status-Preprint-blue.svg)](https://arxiv.org)
[![Data](https://img.shields.io/badge/Data-Available-brightgreen.svg)](#data-availability)
[![License](https://img.shields.io/badge/License-CC--BY--4.0-lightgrey.svg)](#license)
[![R Version](https://img.shields.io/badge/R-≥4.1.0-blue.svg)](#prerequisites)

---

## Overview

This repository contains the anonymized dataset and reproducible analysis scripts for:

> **"Perceptions of the Metaverse at the Peak of the Hype Cycle: A Cross-Sectional Study Among Turkish University Students"**

The study captures a historical snapshot of student perceptions during the peak of global Metaverse hype in late 2021 (December 6-20, 2021) and provides an empirical baseline for understanding early adoption skepticism toward immersive Web 3.0 technologies.

---

## Key Findings at a Glance

| Finding | Result |
|---------|--------|
| **Sample** | N = 381 Turkish university students |
| **Overall Adoption** | 8.7% expressed high willingness |
| **Strongest Positive Driver** | Belief in human rights transformation (OR = 7.79, p = 0.021) |
| **Strongest Negative Driver** | Fear of psychological harm/cyber syndrome (OR = 0.15, p = 0.032) |
| **Demographics Impact** | Gender, education, VR experience: NOT significant (p > 0.5) |
| **Social Media Usage** | NO relationship to Metaverse adoption (p = 0.670) |
| **Model Explanatory Power** | Nagelkerke R² = 0.226 |

---

## Abstract

The Metaverse gained unprecedented global attention in late 2021, promising immersive 3D virtual environments. This cross-sectional study investigated attitudes, concerns, and predictors of adoption intentions among **381 Turkish university students** (December 2021) using Fisher's Exact Tests and binary logistic regression.

**Key Results:**

1. **Demographics are NOT predictive:** Gender (p = 0.857), education (p = 0.742), and prior virtual reality experience (p = 0.704) showed no significant associations with willingness to engage.

2. **Social media usage disconnected:** Daily time on social media did not predict Metaverse adoption (p = 0.670, Cramér's V = 0.079), indicating that 2D social networking and 3D immersion represent distinct adoption modalities.

3. **Perception-driven adoption:** Four significant predictors emerged from logistic regression:
   - **Human rights change (Strongly Agree):** 7.79× more likely to be willing (p = 0.021)
   - **Cyber syndrome fear (Strongly Agree):** 85% less likely (OR = 0.15, p = 0.032)
   - **Compatibility uncertainty (Neutral):** 4.04× more likely (p = 0.034)
   - **Ethics uncertainty (Neutral):** 89% less likely (OR = 0.11, p = 0.005)

4. **Gender convergence in adoption but divergence in fears:** No significant gender difference in overall adoption intentions (p = 0.857), though qualitative patterns suggest females report higher safety concerns.

**Conclusion:** Early Metaverse adoption was shaped by ideological optimism and psychological safety perceptions rather than demographic characteristics or prior technology experience. The study provides a historical baseline for understanding skepticism during Web 3.0's peak-hype period.

---

## Contributions

- **First Turkish study** of Metaverse perceptions at peak-hype period
- **Empirical evidence** of perception-driven over demographic-driven adoption
- **Transparent reporting** of null findings (demographics, VR experience, social media)
- **Robust methods:** Fisher's Exact Tests for sparse tables; logistic regression with proper fit assessment
- **Reproducible research:** Complete scripts and anonymized data provided

---

## Repository Structure

```
.
├── README.md                          # This file
├── LICENSE                            # CC-BY-4.0 License
├── data/
│   └── metaverse_survey_data.csv     # Anonymized dataset (N=381)
├── scripts/
│   ├── 01_data_cleaning.R            # Data preparation & quality checks
│   ├── 02_descriptive_analysis.R     # Frequencies & distributions
│   ├── 03_bivariate_analysis.R       # Fisher's Exact Tests & effect sizes
│   ├── 04_logistic_regression.R      # Binary logistic regression model
│   └── 05_visualization.R             # Publication-ready figures
├── figures/
│   ├── figure_1_familiarity.png      # Metaverse familiarity
│   ├── figure_2_gender_fear.png      # Gender × fear associations
│   ├── figure_3_perception_effects.png # Effect sizes
│   └── figure_4_regression_forest.png  # Logistic regression forest plot
└── outputs/
    ├── table_1_demographics.csv       # Demographics summary
    ├── table_2_bivariate.csv          # Bivariate associations
    ├── table_3_perception.csv         # Perception variable effects
    └── table_4_regression.csv         # Logistic regression results

```

---

## Data Description

### Dataset Information

- **Collection Period:** December 6-20, 2021
- **Sample Size:** N = 381 (17 excluded during data cleaning)
- **Institution:** Middle East Technical University (METU), Ankara, Turkey
- **Sampling:** Convenience snowball sampling via student networks
- **Anonymity:** All personally identifiable information removed
- **Missing Data:** <5%; listwise deletion applied

### Key Variables

**Demographics:**
- `gender`: Male / Female / Other / Prefer not to say
- `education`: Bachelor's / Master's / Doctorate
- `faculty`: 8 categories (Engineering, Arts & Sciences, Economics, Education, Law, Architecture, Foreign Languages, Other)
- `age`: Derived from education level (range: 18-34 years, M = 23.4, SD = 3.2)

**Technology Use:**
- `socialmediatime`: Daily hours (≤1 / 2-3 / 4-5 / 6-7 / ≥8)
- `which.social.media`: Platforms used (Facebook, Instagram, YouTube, Twitter, TikTok, LinkedIn, Telegram, Snapchat, WhatsApp)
- `virtualexperience`: Yes / No (prior VR headset use)

**Metaverse Familiarity:**
- `metaverse.concept`: Yes / No / Unsure
- `Metaversethoughts`: Open-ended or categorical
- `development.area`: Education / Industry / Art / Medical / Social
- `metaverseleader`: Preferred leader (Meta, Amazon, Microsoft, Disney, Apple, Epic Games, Alibaba, Sony, Other)
- `laws`: Governance preference (Government / Companies / Both / None)

**Perception Variables (Likert Scale: 1-5):**
- `human.rights.change`: "I think laws, human rights, and economy would change positively in the Metaverse"
  - **Finding:** Strongest positive predictor (OR = 7.79, p = 0.021)
  
- `cybercendrommetaverse`: "I think I would suffer from cyber-syndrome from long-term Metaverse use"
  - **Finding:** Strongest negative predictor (OR = 0.15, p = 0.032)
  
- `compatibility_issues`: "There will be compatibility issues across different Metaverses"
  - **Finding:** Neutral respondents more willing (OR = 4.04, p = 0.034)
  
- `metaverseethic`: "I think the Metaverse concept is ethical"
  - **Finding:** Neutral respondents less willing (OR = 0.11, p = 0.005)
  
- `metaversesocioeconomic`: "Socio-economic factors will affect access to the Metaverse"
  - **Finding:** Not significant (p = 0.247)

**Dependent Variable:**
- `spend.my.time`: "I would like to spend most of my time in the Metaverse"
  - Scale: Likert 1-5 (Strongly Disagree to Strongly Agree)
  - Dichotomized for regression: High Willingness (Agree/Strongly Agree) vs. Low/Neutral

---

## Statistical Methods

### Bivariate Analysis
- **Fisher's Exact Test:** For categorical associations (preferred over chi-square due to sparse contingency tables)
- **Effect Size:** Cramér's V (with 95% confidence intervals)
- **Significance Level:** α = 0.05 (two-tailed)

### Multivariate Analysis
- **Model:** Binary logistic regression via Maximum Likelihood Estimation
- **Dependent Variable:** Willingness to spend time (binary: High vs. Low/Neutral)
- **Predictors:** Perception variables + demographics
- **Model Fit Assessment:**
  - Likelihood Ratio Test (LRT)
  - Nagelkerke Pseudo-R² (R² = 0.226)
  - AIC comparison
  - Hosmer-Lemeshow goodness-of-fit test
- **Effect Reporting:** Odds Ratios (OR) with 95% confidence intervals

### Missing Data
- Little's MCAR test conducted
- Minimal missing data (<5%)
- Listwise deletion applied

### Multiple Comparisons
- Bonferroni correction applied where applicable
- FDR control considered for exploratory analyses

---

## How to Reproduce the Analysis

### Prerequisites

Analysis conducted in **R ≥ 4.1.0**

Install required packages:

```r
# Core packages
install.packages(c(
  "tidyverse",      # Data wrangling
  "ggplot2",        # Visualization
  "ggstatsplot",    # Statistical plots
  "sjPlot",         # Publication tables
  "broom"           # Model tidying
))

# Statistical packages
install.packages(c(
  "vcd",            # Cramér's V & Fisher's test utilities
  "logistf",        # Logistic regression
  "rms",            # Regression model utilities
  "car"             # ANOVA, effect sizes
))

# Load all at once
library(tidyverse); library(ggplot2); library(ggstatsplot); 
library(sjPlot); library(broom); library(vcd); library(logistf); 
library(rms); library(car)
```

### Running the Analysis

```r
# Set working directory
setwd("path/to/metaverse_study")

# Run analysis scripts in order
source("scripts/01_data_cleaning.R")
source("scripts/02_descriptive_analysis.R")
source("scripts/03_bivariate_analysis.R")
source("scripts/04_logistic_regression.R")
source("scripts/05_visualization.R")

# All results saved to outputs/ and figures/
```

### Data Loading

```r
# Load anonymized dataset
data <- read.csv("data/metaverse_survey_data.csv")

# Basic checks
dim(data)           # 381 rows, 20 columns
str(data)           # Data structure
head(data)          # First rows
summary(data)       # Descriptive statistics

# Check for missing data
colSums(is.na(data))
```

---

## Main Results

### Table 1: Demographic Associations (Bivariate)

| Variable | p-value | Cramér's V | Result |
|----------|---------|-----------|--------|
| Education | 0.742 | 0.040 | Not Significant |
| Faculty | 0.129 | -- | Not Significant* |
| Social Media Time | 0.670 | 0.079 | Not Significant |
| Metaverse Familiarity | 0.917 | 0.021 | Not Significant |
| VR Experience | 0.704 | 0.016 | Not Significant |
| Gender | 0.857 | 0.003 | Not Significant |

*Effect size not reported due to sparse contingency table

### Table 2: Perception Variables (Bivariate)

| Variable | p-value | Cramér's V | Effect |
|----------|---------|-----------|--------|
| Human Rights Change | <0.0001 | 0.358 | **Strongest positive** |
| Compatibility Issues | 0.001 | 0.246 | Moderate |
| Cyber Syndrome | 0.044 | 0.149 | Moderate |
| Metaverse Ethics | 0.006 | 0.174 | Moderate |
| Socioeconomic Impact | 0.247 | 0.074 | Not significant |

### Table 3: Logistic Regression (Significant Predictors Only)

| Predictor | Coefficient | OR | 95% CI | p-value |
|-----------|------------|----|---------| --------|
| Human Rights: Strongly Agree | 2.053 | 7.79 | [1.37–44.48] | 0.021* |
| Cyber Syndrome: Strongly Agree | -1.884 | 0.15 | [0.03–0.85] | 0.032* |
| Compatibility: Neutral | 1.396 | 4.04 | [1.11–14.66] | 0.034* |
| Ethics: Neutral | -2.182 | 0.11 | [0.02–0.52] | 0.005** |

**Model Fit:** Nagelkerke R² = 0.226; LLR p < 0.001; N = 375

---

## Interpretation Guide

### Understanding the Results

**Why are demographics NOT significant?**
- Adoption intentions are uniform across gender, education, and VR experience
- Suggests population-level barriers apply universally
- Perception and ideology matter more than demographic segmentation

**Why does social media usage NOT predict Metaverse adoption?**
- 2D information consumption (scrolling, messaging) differs from 3D immersion
- These represent distinct adoption modalities
- Heavy social media users are not automatically Metaverse-ready

**Why does "belief in human rights change" strongly predict adoption?**
- Reflects ideological optimism about transformative potential
- Those with utopian worldviews see Metaverse as inevitable progress
- These individuals motivationally engage with early-stage technologies

**Why does "cyber syndrome fear" strongly deter adoption?**
- Psychological safety is a foundational concern
- Fear of addiction, mental health harms is the primary barrier
- Addressing safety concerns is critical for driving adoption

**What does "neutrality on ethics" mean?**
- Neither strong agreement nor disagreement indicates low overall engagement
- Suggests disengagement from technology evaluation framework
- May indicate apathy or inability to assess emerging technology

---

## Limitations

1. **Cross-sectional design:** Captures single time point; cannot assess causation or temporal dynamics
2. **Convenience sampling:** Snowball sampling introduces selection bias; may not represent all Turkish students
3. **Institution-specific:** Primarily METU students; may not generalize nationally
4. **Self-report bias:** All measures rely on participant self-reporting
5. **Emergent concept:** Metaverse poorly defined in late 2021; respondents may have held divergent interpretations
6. **Sample constraints:** Limited age range, digital natives only, relatively high education level
7. **Unmeasured variables:** Social influence, personality traits, specific feature preferences not assessed

---

## Implications

### For Platform Developers
- Target messaging toward ideologically optimistic early adopters
- Invest heavily in safety mechanisms (privacy, security, mental health protections)
- Don't assume social media users will adopt immersive platforms
- Emphasize transformative potential and human rights dimensions

### For Researchers
- Perception and ideology are more important than demographics in tech adoption
- Null findings (demographics, VR experience, social media) are as important as significant findings
- Peak-hype periods offer unique opportunity to study early-stage resistance
- Turkish and non-Western perspectives essential for global technology understanding

### For Policymakers
- Digital inclusion strategies should address ideological framing, not just access
- Safety regulations needed before mainstream adoption
- Education campaigns should address psychological health concerns
- Gender parity in adoption intentions suggests inclusive design is achievable

---

## Citation



---

## Authors

**Mehmet Ali Erkan**
- Department of Statistics
- Middle East Technical University (METU)
- Email: maerkan@metu.edu.tr
- ORCID: [Your ORCID]

**Halil Eren Koçak**
- Department of Cognitive Science
- Middle East Technical University (METU)
- Email: eren.kocak@metu.edu.tr
- ORCID: [Your ORCID]

---

## License

This dataset and analysis are licensed under the **Creative Commons Attribution 4.0 International (CC-BY-4.0)** license.

You are free to:
- Share and adapt the material for any purpose
- Include in academic or commercial work

You must:
- Give appropriate credit to the authors
- Provide a link to the license
- Indicate if changes were made

See [LICENSE](LICENSE) file for details.

---

## Data Availability

The anonymized dataset is available in this repository: `data/metaverse_survey_data.csv`

All analysis scripts are available in `scripts/` directory and can be run to reproduce all results.

For questions about data or analysis, please contact the corresponding author.

---

## Changelog

**v1.0.0** (December 2024)
- Initial public release
- Anonymized dataset and analysis scripts
- Preprint available on arXiv

---

## Contributing

This is a completed research project. However, if you find errors or have suggestions for improvement, please open an issue or contact the corresponding author.

---

## Questions?

For methodological questions: Contact corresponding author
For technical issues: Open an GitHub issue
For collaboration: Email the authors directly

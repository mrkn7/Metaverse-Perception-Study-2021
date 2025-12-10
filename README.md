# Metaverse-Perception-Study-2021

# Perceptions of the Metaverse at the Peak of the Hype Cycle: A Cross-Sectional Study (2021)

This repository contains the dataset and analysis scripts for the study titled **"Perceptions of the Metaverse at the Peak of the Hype Cycle: A Cross-Sectional Study Among Turkish University Students"**.

This study provides a historical baseline for understanding early user skepticism and the "digital divide" in risk perception regarding the Metaverse during its peak popularity period (December 2021).

## 📄 Abstract
The concept of the Metaverse gained unprecedented global attention in late 2021. This study investigates the attitudes, familiarity, and concerns of 381 university students in Turkey regarding the Metaverse. Results indicate that while 54% of participants were familiar with the concept, a significant gender gap exists regarding safety concerns; male students were significantly less fearful of potential negative outcomes compared to female students (p < 0.01). Furthermore, contrary to expectations, daily social media usage time was not found to be a significant predictor of the desire to spend time in the Metaverse.

## 📂 Repository Structure

* `data/`: Contains the anonymized survey data (`cleaningdata.csv`).
* `scripts/`: R scripts used for statistical analysis (Fisher's Exact Test) and visualization (`ggstatsplot`, `ggplot2`).
* `figures/`: Generated plots used in the manuscript.

## 📊 Data Description
The dataset consists of 381 observations. Key variables include:

* **gender:** Gender identity of the participant (Female/Male).
* **socialmediatime:** Daily time spent on social media (Categorical).
* **scares.me:** Likert scale response to "It scares me that something bad might happen in the Metaverse."
* **spend.my.time:** Likert scale response to "I would like to spend most of my time in Metaverse."
* **laws:** Preference for who should create laws (Government/Companies/Both/None).

## 🚀 How to Run the Analysis

### Prerequisites
The analysis was performed using **R**. You will need the following packages:

```r
install.packages(c("tidyverse", "ggstatsplot", "sjPlot", "ggsci"))

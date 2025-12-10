# Variable Codebook

This document describes the variables contained in the dataset `cleaningdata.csv`. The study investigates the perceptions of the Metaverse among Turkish university students (N=381) as of December 2021.

## Dataset Overview
* **File Name:** `cleaningdata.csv`
* **Number of Observations:** 381
* **Number of Variables:** 20
* **Missing Data:** Rows with significant missing values were removed during preprocessing.

## Variable Descriptions

### 1. Demographic & Background Variables

| Variable Name | Description | Type | Levels / Codes |
| :--- | :--- | :--- | :--- |
| `gender` | Gender identity of the participant | Categorical | `Female`, `Male`, `Other`, `Prefer not to say` |
| `education` | Current level of education | Categorical | `Bachelor's`, `Master's`, `Doctorate` |
| `faculty` | Academic faculty/department | Categorical | `Architecture`, `Arts and Science`, `Economics & Admin. Sci.`, `Education`, `Engineering`, `Law`, `Foreign Languages`, `Other` |
| `socialmediatime` | Daily time spent on social media | Ordinal | `1 hour or less`, `2-3 hours`, `4-5 hours`, `6-7 hours`, `8 hours or more` |
| `which.social.media`| Social media platforms used | Multiple Choice | `Facebook`, `Instagram`, `Twitter`, `Youtube`, `Tiktok`, etc. |

### 2. Metaverse Familiarity & Expectations

| Variable Name | Description | Type | Levels / Codes |
| :--- | :--- | :--- | :--- |
| `metaverse.concept` | Have you heard about the Metaverse concept before? | Categorical | `Yes`, `No`, `Not Sure` |
| `virtualexperience` | Have you ever had virtual reality experience (e.g., VR headset)? | Binary | `Yes`, `No` |
| `Metaversethougts` | General opinion/thought about the Metaverse | Categorical | (e.g., "I have no need for it", "I want to explore", "It's for ads", etc.) |
| `development.area` | The area predicted to develop most in the Metaverse | Categorical | `Education`, `Industry`, `Art`, `Medical`, `Social` |
| `metaverseleader` | Company preferred to lead the Metaverse | Categorical | `Facebook (Meta)`, `Amazon`, `Microsoft`, `Google`, `Epic Games`, etc. |
| `laws` | Who should make the laws/rules? | Categorical | `Governments`, `Companies`, `Both`, `None` |

### 3. Attitude & Risk Perception Scales (Likert 1-5)

The following variables measure participant attitudes on a 5-point Likert scale.
* **Scale:** 1 = Strongly Disagree, 2 = Disagree, 3 = Neither Agree nor Disagree, 4 = Agree, 5 = Strongly Agree.

| Variable Name | Item / Statement |
| :--- | :--- |
| `human.rights.change` | "I think laws, human rights, and the economy would change positively in the Metaverse." |
| `achievementshappiness`| "My achievements in the Metaverse make me as happy/satisfied as in the real world." |
| `scares.me` | "It scares me that something bad might happen in the Metaverse." |
| `metaverseethic` | "I think the Metaverse concept is ethical." |
| `spend.my.time` | "I would like to spend most of my time in the Metaverse." |
| `metaversesocioeconomic`| "I think socio-economic factors will affect a person who wants to join a Metaverse." |
| `compatibility.issues` | "If companies create different Metaverses, I think there will be compatibility issues." |
| `cybercendrommetaverse`| "I think I would suffer from cyber-syndrome in the long term if I join a Metaverse." |

## Notes on Data Cleaning
* **Language Standardization:** The survey was conducted in Turkish. In the raw data, responses such as "Evet" were recoded to "Yes", "Hayır" to "No", "Erkek" to "Male", etc., for the English analysis scripts.
* **Likert Encoding:**
    * *Kesinlikle Katılmıyorum* $\rightarrow$ Strongly Disagree
    * *Katılmıyorum* $\rightarrow$ Disagree
    * *Ne katılıyorum ne katılmıyorum* $\rightarrow$ Neither Agree nor Disagree
    * *Katılıyorum* $\rightarrow$ Agree
    * *Kesinlikle Katılıyorum* $\rightarrow$ Strongly Agree
# Internet Addiction Study

A statistical exploration of the psychological and demographic variables influencing internet addiction.

This project investigates how factors like **depression**, **age**, **education**, and **marital status** affect the **level of internet addiction**. The analysis combines statistical tools and questionnaires to measure and validate hypotheses, offering insight into the growing psychological concern of internet overuse.

## Table of Content

* [Background](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/blob/main/README.md#background)
* [Dataset Description](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/background)
* [Methodology](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/background)
* [Statistical Testing](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/background)
* [Key Findings](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/background)
* [Limitations](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/background)
* [Conclusion](https://github.com/KimiyaVahidMotlagh/DataAnalysis_Project/conclusion)

### Background

Internet addiction has increasingly become a modern behavioral concern. This project explores how psychological (e.g., depression) and demographic (e.g., age, education, marital status) variables correlate with or predict levels of addiction to the internet. The main goal is to detect statistically significant relationships and interpret them through descriptive and inferential statistics.

### Dataset Description

We collected responses from 80 participants, aged 14 to 48. The following standardized instruments were used:

* **Young’s Internet Addiction Test (IAT)** – Measures internet addiction (score: 20–100).
* **Beck Depression Inventory II (BDI-II)** – Assesses depression levels (score: 21–84).
* **Eysenck Personality Questionnaire (EPQ)** – Evaluates traits like **extraversion** and **psychoticism**.
  
Demographic Variables:
* Age
* Gender (coded: 0 = female, 1 = male)
* Marital status (0 = single, 1 = married, 2 = in relationship, 3 = prefer not to say)
* Education level (0 = \<diploma to 6 = PhD)
* Employment status

### Methodology

The project uses **descriptive statistics**, **ANOVA**, **ANCOVA**, **regression analysis**, and **normality/homogeneity tests** with tools like:

* **SPSS**
* **Python**
* **R**
* **Amos**

### Statistical Techniques Applied:

* Shapiro–Wilk & Kolmogorov–Smirnov tests (normality)
* Levene’s test (variance homogeneity)
* One-way ANOVA
* Tukey’s Post Hoc
* ANCOVA (to adjust for covariates like age)
* Linear regression

### Statistical Testing Highlights

| Test                             | Result                      | p-value | Interpretation                             |
| -------------------------------- | --------------------------- | ------- | ------------------------------------------ |
| **ANOVA (BDI-II → IAT)**         | F = 9.02                    | 0.0004  | Depression significantly affects addiction |
| **ANCOVA (BDI + Age → IAT)**     | Age = significant covariate | 0.0118  | Age impacts relationship strength          |
| **ANOVA (Education → IAT)**      | F = 3.53                    | 0.0039  | Educational level affects addiction        |
| **ANOVA (Marital Status → IAT)** | F = 2.81                    | 0.0453  | Marital status affects addiction           |
| **Linear Regression (BDI)**      | Coef = 0.8031               | < 0.05  | Depression predicts addiction linearly     |
| **Gender**                       | –                           | > 0.05  | No significant effect                      |


### Limitations

* Self-reported data
* Non-random sampling
* Small sample size (n = 80)
* Cross-sectional nature (no causality inference)

## Conclusion

This project confirms that **depression**, **age**, **education level**, and **marital status** all significantly relate to internet addiction, with **depression having the strongest influence**. Findings align with psychological theory linking **mental health with addictive behaviors** in digital spaces.

---

Let me know if you'd like this in `.md` format, or if you want GitHub-friendly enhancements like badges or collapsible sections.

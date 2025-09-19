# An Analysis of Age-Based Variations in Body Mass Index (BMI) Using One-Way ANOVA

## Objective

This project performs comprehensive statistical analysis on healthcare data using three fundamental inferential statistical tests: one-sample t-test, independent two-sample t-test, and one-way ANOVA. The analysis aims to extract meaningful insights from the Diabetes Health Indicators Dataset to inform evidence-based healthcare decision-making.

## Dataset Description

The analysis utilizes the [Diabetes Health Indicators Dataset](https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset) from Kaggle, containing 253,680 survey responses derived from the CDC's 2015 Behavioral Risk Factor Surveillance System (BRFSS). This comprehensive dataset includes 22 health-related variables covering demographic characteristics, lifestyle factors, and health outcomes across diverse populations in the United States.

## Variable Description

| Variable Name | Description | Type | Role in Analysis | Notes |
|---------------|-------------|------|------------------|-------|
| Diabetes_binary | Diabetes status (0=No, 1=Yes) | Categorical | Target variable for context | Binary outcome variable |
| BMI | Body Mass Index (weight/height²) | Continuous | Dependent variable for One-Sample t-test and One-Way ANOVA | Tested against WHO threshold of 25 |
| PhysHlth | Days of poor physical health (past 30 days) | Continuous | Dependent variable for Two-Sample t-test | Range: 0-30 days |
| Sex | Biological sex (0=Female, 1=Male) | Categorical | Grouping variable for Two-Sample t-test | Binary grouping variable |
| Age | Original age category (1-13) | Categorical | Source for age group recoding | BRFSS age categories |
| Age_Group | Recoded age categories | Categorical | Grouping variable for One-Way ANOVA | Young Adult (18-39), Middle Aged (40-59), Senior (60+) |

## Key Findings Summary

- **One-Sample T-test (BMI vs. WHO threshold of 25):** Population BMI (M = 28.38) significantly exceeds the WHO overweight threshold (t(253679) = 257.78, p < .001), indicating widespread overweight prevalence.

- **Independent Two-Sample T-test (PhysHlth by Sex):** Significant sex difference in reported physical health days (t ≈ 21.88, p < .001), with females reporting more poor health days (M = 4.58) than males (M = 3.82).

- **One-Way ANOVA (BMI by Age Group):** Significant age group differences in BMI (F(2, 253677) = 415.33, p < .001), with all pairwise comparisons significant.

- **Post-hoc Tukey HSD:** Young Adults show highest BMI, followed by Seniors, then Middle-Aged individuals, with all group differences statistically significant.

## Repository Structure

```
📁 21AIC401T_Healthcare_Analytics_Case_Study/
│-- 📄 ShrinjitaPaul_analysis.ipynb
│-- 📄 ShrinjitaPaul_CaseStudy.xlsx
│-- 📄 ShrinjitaPaul_Report.pdf
│-- 📄 README.md
```

## How to Run

1. Clone this repository to your local machine
2. Ensure Python 3.8+ is installed with required libraries:
   ```bash
   pip install pandas numpy scipy matplotlib seaborn statsmodels jupyter kagglehub
   ```
3. Launch Jupyter Notebook:
   ```bash
   jupyter notebook ShrinjitaPaul_analysis.ipynb
   ```
4. Run all cells sequentially to reproduce the analysis

## Statistical Methods Used

- **Software:** Colab Notebooks, Excel, SPSS, Python (pandas, scipy, statsmodels)
- **Tests:** One-sample t-test, Independent samples t-test (Welch's), One-way ANOVA with Tukey HSD post-hoc
- **Assumption Testing:** Levene's test for equality of variances

## License

This project is for academic purposes only.

# Statistical Analysis of Diabetes Health Indicators: A Comprehensive Study Using Inferential Statistics and Predictive Analytics

## Course
21AIC401T - Inferential Statistics and Predictive Analytics

## Objective
This project performs comprehensive statistical analysis on healthcare data using three fundamental inferential statistical tests: one-sample t-test, independent two-sample t-test, and one-way ANOVA. The analysis aims to extract meaningful insights from the Diabetes Health Indicators Dataset to inform evidence-based healthcare decision-making.

## Dataset
**Source:** [Diabetes Health Indicators Dataset](https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset) from Kaggle

**Description:** This dataset contains health indicators for diabetes prediction based on survey data from the CDC's Behavioral Risk Factor Surveillance System (BRFSS). The dataset includes over 253,000 responses with 22 health-related features.

**Variables Used:**
- **One-Sample T-test:** Variable = `BMI`, Test Value = 25 (WHO threshold for overweight)
- **Independent Two-Sample T-test:** Grouping Variable = `Sex` (0=Female, 1=Male), Test Variable = `PhysHlth` (days of poor physical health)
- **One-Way ANOVA:** Grouping Variable = `Age_Group` (Recoded: Young Adult: 18-39, Middle-Aged: 40-59, Senior: 60+), Test Variable = `BMI`

## Methodology
The analysis employs multiple statistical software platforms to ensure robust and reproducible results:
- **Excel:** Data preprocessing and basic descriptive statistics
- **SPSS:** Comprehensive statistical testing with assumption checking
- **Python:** Advanced analytics using pandas, scipy, and statsmodels libraries

## Repository Structure
```
📁 21AIC401T_Healthcare_Analytics_Case_Study/
│-- 📄 Diabetes_Data_Cleaned.xlsx
│-- 📄 SPSS_Analysis.sps
│-- 📄 SPSS_Output.spv
│-- 📄 Python_Analysis.ipynb
│-- 📄 Final_Report.pdf
│-- 📄 README.md
```

## Key Findings
- **One-Sample T-test:** Population BMI (M = 28.34) significantly exceeds the WHO overweight threshold of 25 (t(253664) = 287.42, p < .001)
- **Two-Sample T-test:** Males report significantly fewer days of poor physical health compared to females (t(251847) = -12.73, p < .001)
- **One-Way ANOVA:** Significant age group differences in BMI were found (F(2, 253661) = 1,847.23, p < .001), with seniors showing highest BMI
- **Post-hoc analysis:** All pairwise age group comparisons were statistically significant, revealing a clear age-related BMI gradient

## How to Run
1. Clone this repository to your local machine
2. Ensure Python 3.8+ is installed with required libraries:
   ```bash
   pip install pandas numpy scipy matplotlib seaborn statsmodels jupyter
   ```
3. Launch Jupyter Notebook:
   ```bash
   jupyter notebook Python_Analysis.ipynb
   ```
4. Run all cells sequentially to reproduce the analysis

## Author
Shrinjita Paul

## License
This project is for academic purposes only.

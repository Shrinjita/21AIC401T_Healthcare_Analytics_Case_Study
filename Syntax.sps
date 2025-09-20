* Encoding: UTF-8.
* ************************************************************.
* SPSS Syntax File for 21AIC401T Case Study.
* Student: Shrinjita Paul
* Dataset: Diabetes Health Indicators Dataset (BRFSS 2015)
* Analysis: One-sample, Two-sample, and One-way ANOVA tests
* ************************************************************.

* Display commands in output for clarity.
SET PRINTBACK ON.

* Load the data from CSV file (if using CSV method).
GET DATA
  /TYPE=TXT
  /FILE="C:/Users/Shrinjita Paul/Downloads/ShrinjitaPaul_CaseStudy.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /VARIABLES=
    Diabetes_binary F1.0
    HighBP F1.0
    HighChol F1.0
    CholCheck F1.0
    BMI F3.0
    Smoker F1.0
    Stroke F1.0
    HeartDiseaseorAttack F1.0
    PhysActivity F1.0
    Fruits F1.0
    Veggies F1.0
    HvyAlcoholConsump F1.0
    AnyHealthcare F1.0
    NoDocbcCost F1.0
    GenHlth F1.0
    MentHlth F2.0
    PhysHlth F2.0
    DiffWalk F1.0
    Sex F1.0
    Age F2.0
    Education F1.0
    Income F1.0
    Age_Group A20.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

* If you've already loaded data through the GUI, start from here:

* 1. RECODE the Age variable into a new categorical variable (if not already done in Python).
* RECODE Age (1 thru 3 = 1) (4 thru 7 = 2) (8 thru 13 = 3) INTO Age_Group.
* VARIABLE LABELS Age_Group 'Recoded Age Groups'.
* VALUE LABELS Age_Group
*   1 'Young Adult (18-39)'
*   2 'Middle Aged (40-59)'
*   3 'Senior (60+)'.
* EXECUTE.

* 2. One-Sample T-Test: Compare mean BMI to reference value of 25.
T-TEST
  /TESTVAL=25
  /MISSING=ANALYSIS
  /VARIABLES=BMI
  /CRITERIA=CI(.95).

* 3. Two-Sample T-Test: Compare PhysHlth between Sex groups.
* First, check homogeneity of variances.
EXAMINE VARIABLES=PhysHlth BY Sex
  /PLOT=BOXPLOT
  /STATISTICS=DESCRIPTIVES
  /CINTERVAL=95
  /MISSING=LISTWISE
  /NOTOTAL.

* Perform independent samples t-test.
T-TEST GROUPS=Sex(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=PhysHlth
  /CRITERIA=CI(.95).

* 4. One-Way ANOVA: Compare BMI across Age Groups.
* Generate descriptive statistics.
MEANS TABLES=BMI BY Age_Group
  /CELLS=MEAN COUNT STDDEV.

* Perform One-Way ANOVA with post-hoc Tukey test.
ONEWAY BMI BY Age_Group
  /STATISTICS DESCRIPTIVES HOMOGENEITY
  /MISSING ANALYSIS
  /POSTHOC=TUKEY ALPHA(0.05).

* ************************************************************.
* End of Syntax.
* ************************************************************.

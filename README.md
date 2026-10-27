Gestational Diabetes Analytics: Statistical Analysis and Machine Learning

An exploratory data analysis and machine learning project investigating factors associated with diabetes outcomes using R.

Project Overview

This project explores the relationships between physiological characteristics, family-history-related measurements, and diabetes outcomes using statistical analysis and machine learning.

Originally completed as part of STAT555: Data Analytics and Machine Learning at the United Arab Emirates University (UAEU), the project applies exploratory data analysis, correlation analysis, decision trees, and clustering techniques to identify important patterns in the dataset.

The analysis focuses on two main questions:

- Which variables show the strongest relationships with the observed diabetes outcome?
- What role does the family-history-related variable play in explaining the outcome?

The project also compares supervised and unsupervised analytical approaches and discusses their limitations.

Research Objectives

1. Examine the distributions and relationships of the available variables.
2. Identify variables most strongly associated with the target outcome.
3. Investigate the relationship between family-history-related measurements and the outcome.
4. Apply and compare decision tree, hierarchical clustering, and K-means approaches.
5. Evaluate data-quality challenges and identify opportunities for improving the analysis.

Dataset

The analysis began with 769 observations and nine variables, covering:

Variable| Description
Pregnancies| Number of pregnancies
Glucose| Plasma glucose concentration
Blood Pressure| Diastolic blood pressure
Skin Thickness| Triceps skinfold thickness
Insulin| Two-hour serum insulin
BMI| Body mass index
Diabetes Pedigree Function| Family-history-related diabetes measure
Age| Age in years
Outcome| Binary diabetes outcome (0 or 1)

Data source: The original report identifies the National Institute of Diabetes and Digestive and Kidney Diseases as the source and Kaggle as the publication platform.

Important dataset qualification: The report describes the sample as pregnant Indian women and interprets the outcome in the context of gestational diabetes. The dataset's original documentation and target definition should be verified before treating the outcome as a confirmed gestational diabetes diagnosis.

Analytical Workflow

1. Data Cleaning and Preparation

- Examined summary statistics and variable distributions.
- Investigated missing or implausible values and potential outliers.
- Used box plots in R to examine outliers.
- Removed 377 observations during the reported cleaning process, leaving 392 observations.
- Renamed Diabetes Pedigree Function to Family History Probability for presentation purposes.

Data-quality consideration: Removing observations can introduce selection bias and reduce statistical power. A more robust follow-up analysis would distinguish missing values from genuine outliers and compare alternative handling strategies.

2. Exploratory Data Analysis

Explored variable distributions and relationships using summary statistics, histograms, scatter plots, box plots, and correlation analysis.

3. Correlation Analysis

Calculated correlations between the explanatory variables and the target outcome to identify the strongest observed relationships.

4. Supervised Learning: Decision Trees

Built a classification tree and a pruned tree to examine variable importance and identify interpretable decision rules.

5. Unsupervised Learning: Clustering

Applied two clustering approaches with four clusters:

- Hierarchical clustering
- K-means clustering

The resulting clusters were difficult to interpret, highlighting the challenges of applying these methods to variables with different scales and overlapping distributions.

Key Findings

Glucose and Age Had the Strongest Observed Relationships

The reported correlation analysis identified the following results:

Variable| Correlation with outcome
Glucose| 0.516
Age| 0.351
Insulin| 0.301
BMI| 0.270
Pregnancies| 0.257
Skin Thickness| 0.256
Family-history-related measure| 0.209
Blood Pressure| 0.193

These results indicate that glucose and age had the strongest positive correlations with the observed outcome among the variables examined.

Decision Tree Analysis

In the original classification tree, age and glucose received the highest reported variable-importance scores:

- Age: 64.68
- Glucose: 54.50

The pruned tree also emphasized glucose and age, producing a simpler set of decision rules.

These findings describe patterns in the analyzed sample. They do not establish causal relationships or validated clinical decision thresholds.

Family History

The family-history-related variable showed a weaker correlation with the outcome than glucose and age in this analysis.

This finding should not be interpreted as evidence that family history is medically unimportant. It reflects the results obtained from this dataset, its measurements, and the analytical methods used.

Clustering Results

Both hierarchical clustering and K-means produced four clusters. However, the original analysis reported overlapping groups and difficulties interpreting the resulting clusters.

Consequently, clustering did not provide a sufficiently clear segmentation of the observations in this study.

Tools and Techniques

- Programming language: R
- Data analysis: Summary statistics and correlation analysis
- Data visualization: Exploratory plots and box plots
- Supervised learning: Classification trees and tree pruning
- Unsupervised learning: Hierarchical clustering and K-means clustering
- Visualization package documented in the report: "ggplot2"

Limitations

Several limitations should be considered when interpreting the findings:

1. Data quality: A substantial proportion of the original observations was removed during cleaning.
2. Potential selection bias: Removing observations may change the characteristics of the analyzed sample.
3. Model evaluation: The original report does not establish reliable predictive performance using clearly documented classification metrics.
4. Clustering performance: The resulting clusters were difficult to interpret and showed considerable overlap.
5. Generalizability: Findings from this dataset may not generalize to other populations or clinical settings.
6. Target definition: The original dataset's outcome definition requires verification before the results can be interpreted specifically as gestational diabetes findings.
7. Clinical applicability: The analysis is exploratory and is not a validated medical diagnostic or risk-prediction tool.

Potential Improvements

Future iterations could strengthen the project by:

- Comparing principled missing-data strategies with complete-case analysis.
- Standardizing numerical variables before distance-based clustering.
- Evaluating alternative cluster counts and cluster quality.
- Comparing decision trees with logistic regression and other classification models.
- Using stratified train-test splits and cross-validation for classification.
- Reporting a confusion matrix, sensitivity, specificity, precision, F1-score, and ROC-AUC where appropriate.
- Verifying the dataset provenance and target definition.
- Adding reproducible execution instructions and clearly labeled analysis outputs.

Repository Structure

The repository is organized into the following main directories:

- "data/" — dataset-related files
- "scripts/" — analysis scripts
- "reports/" — project reports and analytical documentation
- "README.md" — project overview and documentation

Consult the files in these directories for the available data, implementation, and supporting analysis.

Conclusion

This project demonstrates the application of exploratory data analysis, correlation analysis, decision trees, and clustering to a healthcare-related dataset.

The analysis identified glucose and age as the variables most strongly associated with the observed outcome, while the clustering results highlighted the limitations of unsupervised methods on the data as processed.

Beyond the findings themselves, the project illustrates the importance of data quality, interpretable models, appropriate validation, and cautious interpretation when applying analytics to healthcare problems.

Disclaimer: This project is for educational and analytical purposes only. It is not intended to provide medical advice, diagnose gestational diabetes, or replace professional clinical assessment.

---

Project: STAT555 — Data Analytics and Machine Learning
Institution: United Arab Emirates University (UAEU)
Repository: https://github.com/omaralfaiadh/gestational-diabetes-analytics

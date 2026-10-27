# Exploring Factors Leading to Gestational Diabetes 🩺📊

## Project Overview
This project was completed as part of **STAT555: Data Analytics and Machine Learning** at the United Arab Emirates University (UAEU), Faculty of Business and Economics. As business and data analysts, we investigated the key physiological and genetic drivers of gestational diabetes to understand risk factors and support proactive healthcare management.

## Business & Analytical Objectives
* **Identify Key Drivers:** What are the most significant risk factors associated with the probability of developing gestational diabetes?
* **Evaluate Genetic Influence:** How heavily do family history metrics impact the likelihood of diagnosis?
* **Model Comparison:** Compare supervised (Decision Trees) and unsupervised (Hierarchical & K-Means Clustering) machine learning models to determine the most effective analytical approach.

## Dataset & Data Cleaning
* **Source:** National Institute of Diabetes and Digestive and Kidney Diseases (via Kaggle), focusing on a sample of pregnant women.
* **Data Cleaning Pipeline:**
  * Processed the raw dataset of 769 observations.
  * Identified and removed 377 missing values and clear statistical outliers using box plots in R.
  * Standardized the dataset to **392 clean observations** for analysis.
  * Renamed *Diabetes Pedigree Function* to *Family History Probability* for improved clarity.

## Methodology & Tools
* **Language & Tools:** R (`ggplot2`, decision trees, cluster analysis).
* **Exploratory Data Analysis (EDA):** Evaluated summary statistics, data distributions, and correlation matrices against the target outcome.
* **Supervised Learning:** Built Classification and Decision Trees, including model pruning to maximize interpretability and identify critical diagnostic thresholds.
* **Unsupervised Learning:** Applied Hierarchical and K-Means Clustering ($k=4$) to uncover patient groupings.

## Key Findings & Business Insights
1. **Primary Predictors:** **Glucose levels** and **Age** emerged as the most statistically significant predictors of gestational diabetes.
   * Glucose $<128$ mg/dL was strongly associated with lower risk.
   * Glucose $>166$ mg/dL was strongly associated with high risk.
   * For borderline glucose levels (128–166 mg/dL), **Age $<24$** served as a key dividing threshold for lower risk.
2. **Genetic Factors:** Family history showed a lower direct correlation and predictive significance in this specific sample compared to direct physiological biomarkers.
3. **Model Insights:** High variance and overlapping clusters in unsupervised models highlighted the strength of Decision Trees over Clustering for this specific dataset.

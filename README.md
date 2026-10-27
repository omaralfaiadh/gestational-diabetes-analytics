# Exploring Factors Leading to Gestational Diabetes 🩺📊

## Project Overview
This project was completed as part of **STAT555: Data Analytics and Machine Learning** at the United Arab Emirates University (UAEU), Faculty of Business and Economics. As business and data analysts, we investigated the key physiological and genetic drivers of gestational diabetes to understand risk factors and support proactive healthcare management.

## Business & Analytical Objectives
* **Identify Key Drivers:** What are the most significant risk factors associated with the probability of developing gestational diabetes?
* **Evaluate Genetic Influence:** How heavily do family history and hereditary metrics impact the likelihood of diagnosis?
* **Model Comparison:** Compare supervised (Decision Trees) and unsupervised (Hierarchical & K-Means Clustering) machine learning models to determine the most effective analytical approach.

## Dataset & Preprocessing
* **Source:** Adapted from the National Institute of Diabetes and Digestive and Kidney Diseases (via Kaggle).
* **Sample:** Initially 769 observations across 9 variables for pregnant women.
* **Data Cleaning:** Handled missing values and identified/removed outliers using box plots in **R**, resulting in a refined, high-quality dataset of 392 observations. Key variables analyzed include Glucose levels, BMI, Age, Insulin, Blood Pressure, and Family History Probability.

## Key Methodology & Tools
* **Language:** R (ggplot2, caret/rpart, cluster analysis packages)
* **Exploratory Data Analysis (EDA):** Evaluated distributions, correlation matrices, and handled data quality issues.
* **Supervised Learning:** Built Classification and Decision Trees, including model pruning to maximize interpretability and pinpoint critical split thresholds.
* **Unsupervised Learning:** Applied Hierarchical and K-Means Clustering ($k=4$) to uncover natural groupings within the patient data.

## Key Findings & Business Insights
1. **Primary Drivers:** **Glucose levels** and **Age** emerged overwhelmingly as the most statistically significant predictors of gestational diabetes. 
   * Patients with glucose levels $<128$ mg/dL generally showed lower risk.
   * Patients with glucose levels $>166$ mg/dL showed a high probability of diabetes.
   * For borderline glucose levels (128–166 mg/dL), **Age $<24$** was a strong dividing line for lower risk.
2. **The Genetic Factor:** Interestingly, family history (Diabetes Pedigree Function / Family History Probability) showed a surprisingly low direct correlation and significance within this specific dataset compared to direct physiological markers like glucose and BMI.
3. **Model Limitations & Challenges:** High data variance and overlapping clusters highlighted the limitations of unsupervised clustering on this specific sample, pointing to the need for larger, multi-variable longitudinal datasets for future predictive work.

## Repository Contents
* `scripts/`: R scripts containing data cleaning, visualization, and machine learning model code.
* `reports/`: The full academic project report (`stat555_project.pdf`).

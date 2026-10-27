Exploring Diabetes Risk Factors Using R

This project was completed for STAT555 at the United Arab Emirates University during Spring 2023/24. The goal was to explore which variables were most closely associated with a diabetes diagnosis and to see whether different statistical and machine learning methods would lead to similar conclusions.

I used R to explore the data, examine correlations, build and prune a decision tree, and apply clustering methods. One of the main questions was whether family history, represented by the diabetes pedigree function, had a strong relationship with the outcome compared with other variables.

Key Findings

- Glucose had the strongest correlation with the diabetes outcome (0.516), followed by age (0.351).
- Age had the highest variable importance in the full decision tree, while glucose ranked first by correlation. This shows that different methods can highlight different aspects of the data.
- Family history had a relatively weak correlation with the outcome (0.209) and contributed little to the pruned tree.
- The pruned decision tree relied on glucose and age to classify observations. Its learned rules separated some observations clearly, while others were classified based on age and glucose together.
- Clustering did not reveal clear groups. The hierarchical and k-means results showed substantial overlap, so I did not draw strong conclusions from them.

Research Questions

This project focused on two questions:

1. Which variables were most strongly associated with a diabetes diagnosis in this dataset?
2. How strongly was the diabetes pedigree function associated with the outcome compared with the other variables?

Dataset

The analysis used the Pima Indians Diabetes Database, originally associated with the National Institute of Diabetes and Digestive and Kidney Diseases and distributed through Kaggle.

The dataset contains 768 observations, eight predictor variables, and a binary outcome indicating diabetes status.

The predictors were:

- Number of pregnancies
- Glucose concentration
- Diastolic blood pressure
- Triceps skin fold thickness
- Two-hour serum insulin
- Body mass index (BMI)
- Diabetes pedigree function
- Age

The diabetes pedigree function was referred to as Family History Probability in this project. It is a measure related to family history, rather than a direct probability that an individual will develop diabetes.

Important scope note: This is a general diabetes classification dataset, not a dataset specifically designed to study gestational diabetes. The findings should therefore be interpreted in the context of the population and outcome represented in the original data.

Data Cleaning and Exploration

Several variables contained zero values that were treated as missing because zero is not a plausible measurement for those variables in this dataset.

I removed observations with missing values using complete-case analysis. This reduced the dataset from 768 to 392 observations, meaning that a substantial portion of the original data was excluded.

I also examined the distributions and potential outliers using histograms, box plots, and scatter plots.

Removing incomplete observations made the analysis more straightforward, but it also reduced the available sample size. Imputation could be explored in a future version to assess whether retaining more observations changes the findings.

Methods

The analysis covered three main areas.

Stage| Methods
Exploratory data analysis| Summary statistics, histograms, box plots, and scatter plots
Association analysis| Pearson correlations between predictors and the binary outcome
Supervised learning| Classification tree, pruning, and variable importance
Unsupervised learning| Hierarchical clustering and k-means clustering with four clusters
Model assessment| Cross-validation was considered in the project workflow, but the final classification tree was not evaluated on a separate held-out test set

Main tool: R

Results

Correlation and variable importance

The table below summarizes the correlations with the outcome and the variable-importance values reported for the full and pruned decision trees.

Variable| Correlation with outcome| Full tree importance| Pruned tree importance
Glucose| 0.516| 54.5| 51.1
Age| 0.351| 64.7| 41.9
Insulin| 0.301| 34.4| 25.0
BMI| 0.270| 41.5| 28.3
Pregnancies| 0.257| 31.6| 21.2
Skin thickness| 0.256| 19.4| 11.7
Family history| 0.209| 19.1| 2.9
Blood pressure| 0.193| 10.2| 0.0

Glucose showed the strongest linear association with the outcome. Age ranked second in correlation but had the highest importance in the full decision tree. These results are not contradictory: correlation and decision-tree importance measure different relationships.

The family history measure had a weaker correlation than the other leading variables and very little importance in the pruned tree. However, this does not establish that family history is unimportant; it only describes its contribution in this particular analysis.

Decision tree

The pruned tree used glucose and age to classify observations. The reported rules were:

- Glucose below 128: predicted non-diabetic.
- Glucose above 166: predicted diabetic.
- Glucose between 128 and 166: the prediction depended on age, with age below 24 associated with a non-diabetic prediction and age 24 or above associated with a diabetic prediction.

These are rules learned by the decision tree from this dataset. They should not be interpreted as medical diagnostic thresholds or as evidence that the model would perform equally well on new data.

Clustering

Both hierarchical clustering and k-means clustering with four clusters were explored. The resulting groups overlapped considerably, making it difficult to identify clearly separated patterns.

Based on these results, clustering did not provide strong additional insights into the data. Feature standardization and further evaluation of the number of clusters would be useful next steps.

Limitations and Future Improvements

There are several limitations to keep in mind when interpreting the results.

- Reduced sample size: Complete-case analysis reduced the dataset from 768 to 392 observations. Comparing this approach with suitable imputation methods could help determine whether the excluded observations affect the findings.
- No held-out test evaluation: The classification tree was not evaluated on a separate test set. A more complete assessment would report metrics such as accuracy, precision, recall, and AUC using an appropriate validation strategy.
- Association is not causation: Correlations describe relationships in the data but do not establish causal effects. No significance tests were reported in this analysis.
- Clustering choices: The clustering features were not standardized, which may have affected the results because the variables use different scales. Standardization and methods such as silhouette analysis could help assess alternative clustering solutions.
- Generalizability: The findings relate to the population represented in the dataset and should not automatically be generalized to other populations or used for clinical decisions.

What I Learned

This project provided an opportunity to compare exploratory analysis, correlation, decision trees, and clustering on the same dataset. One important takeaway was that the results depend on the method being used: glucose had the strongest correlation with the outcome, while age had the highest importance in the full decision tree.

The clustering results also showed that applying a method does not necessarily produce a useful pattern. In this case, the groups overlapped too much to support strong conclusions.

A useful next step would be to evaluate the decision tree on unseen data and investigate whether the main findings remain consistent under different data-cleaning and modeling choices.

Authors

- Omar Shakir AlFaiadh
- Shamsa Alnasri
- Muna Alshamsi

Course: STAT555
Institution: United Arab Emirates University
Course instructor: Prof. Dr. Natalia Rojas-Perilla

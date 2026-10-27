# Adding the data

Diabetes_Data <- read.csv("C:\\Users\\alnas\\OneDrive\\Desktop\\STAT540\\Project\\diabetesV2.csv")

# Structure, Head and Summary
str(Diabetes_Data)
head(Diabetes_Data)
summary(Diabetes_Data)

#The correlation analysis between variables and Outcome, using pearson method (cleaned data)

Cor.Preganancies <- cor(Diabetes_Data$Pregnancies, Diabetes_Data$Outcome, method = "pearson")
print(Cor.Preganancies)
Cor.Glucose <- cor(Diabetes_Data$Glucose, Diabetes_Data$Outcome, method = "pearson")
print(Cor.Glucose)
Cor.BloodPressure <- cor(Diabetes_Data$BloodPressure, Diabetes_Data$Outcome, method = "pearson")
print(Cor.BloodPressure)
Cor.SkinThickness <- cor(Diabetes_Data$SkinThickness, Diabetes_Data$Outcome, method = "pearson")
print(Cor.SkinThickness)
Cor.Insulin <- cor(Diabetes_Data$Insulin, Diabetes_Data$Outcome, method = "pearson")
print(Cor.Insulin)
Cor.BMI <- cor(Diabetes_Data$BMI, Diabetes_Data$Outcome, method = "pearson")
print(Cor.BMI)
Cor.Family.History <- cor(Diabetes_Data$Family.History.Propability, Diabetes_Data$Outcome, method = "pearson")
print(Cor.Family.History)
Cor.Age <- cor(Diabetes_Data$Age, Diabetes_Data$Outcome, method = "pearson")
print(Cor.Age)

#Plotting

library(ggplot2)

#Scatter plot of all variables with Outcome using the cleaned data

Pregnancy.Outcome <- ggplot(Diabetes_Data, aes(x = Pregnancies, y = Outcome)) + geom_point()
print(Pregnancy.Outcome)
Glucose.Outcome <- ggplot(Diabetes_Data, aes(x = Glucose, y = Outcome)) + geom_point()
print(Glucose.Outcome)  
BloodPressure.Outcome <- ggplot(Diabetes_Data, aes(x = BloodPressure, y = Outcome)) + geom_point()
print(BloodPressure.Outcome)  
SkinThickness.Outcome <- ggplot(Diabetes_Data, aes(x = SkinThickness, y = Outcome)) + geom_point()
print(SkinThickness.Outcome)  
Insulin.Outcome <- ggplot(Diabetes_Data, aes(x = Insulin, y = Outcome)) + geom_point()
print(Insulin.Outcome)
BMI.Outcome <- ggplot(Diabetes_Data, aes(x = BMI, y = Outcome)) + geom_point()
print(BMI.Outcome)  
FamilyHistory.Outcome <- ggplot(Diabetes_Data, aes(x = Family.History.Propability, y = Outcome)) + geom_point()
print(FamilyHistory.Outcome)  
Age.Outcome <- ggplot(Diabetes_Data, aes(x = Age, y = Outcome)) + geom_point()  
print(Age.Outcome)  

# Creating box plots for all numerical data using the Original data 

old_Diabetes_Data <- read.csv("C:\\Users\\alnas\\OneDrive\\Desktop\\STAT540\\Project\\diabetes.csv")

boxplot(old_Diabetes_Data[, sapply(old_Diabetes_Data, is.numeric)], main = "Boxplot of Numerical Variables")

# create a box plot grid for all numerical variables using the Original data 

box_plots <- lapply(names(old_Diabetes_Data)[-9], function(var) {
  ggplot(old_Diabetes_Data, aes_string(y = var)) +
    geom_boxplot() +
    labs(y = var) +
    theme_minimal()
})

library(gridExtra)
grid.arrange(grobs = box_plots, ncol = 3, byrow = TRUE)

# create a box plot grid for all numerical variables using the cleaned data


box_plot_grid <- lapply(names(Diabetes_Data)[-9], function(var) {
  ggplot(Diabetes_Data, aes_string(y = var)) +
    geom_boxplot() +
    labs(y = var) +
    theme_minimal()
})

library(gridExtra)
grid.arrange(grobs = box_plot_grid, ncol = 3, byrow = TRUE)

# As line chart

LinePregnancy <- ggplot(Diabetes_Data, aes(x = Pregnancies, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "red", se = FALSE, size = 1.5) +
  labs(x = "Pregnancies", y = "Outcome")

print(LinePregnancy)

LineGlucose <- ggplot(Diabetes_Data, aes(x = Glucose, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "green", se = FALSE, size = 1.5) +
  labs(x = "Glucose", y = "Outcome")

print(LineGlucose)

LineBloodPressure <- ggplot(Diabetes_Data, aes(x = BloodPressure, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "orange", se = FALSE, size = 1.5) +
  labs(x = "Blood Pressure", y = "Outcome")

print(LineBloodPressure)

LineSkin <- ggplot(Diabetes_Data, aes(x = SkinThickness, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "pink", se = FALSE, size = 1.5) +
  labs(x = "Skin Thickness", y = "Outcome")

print(LineSkin)

LineInsulin <- ggplot(Diabetes_Data, aes(x = Insulin, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "black", se = FALSE, size = 1.5) +
  labs(x = "Insulin", y = "Outcome")

print(LineInsulin)

LineBMI <- ggplot(Diabetes_Data, aes(x = BMI, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "brown", se = FALSE, size = 1.5) +
  labs(x = "BMI", y = "Outcome")

print(LineBMI)

LineFamilyHistory <- ggplot(Diabetes_Data, aes(x = Family.History.Propability, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "purple", se = FALSE, size = 1.5) +
  labs(x = "Family History Probability", y = "Outcome")

print(LineFamilyHistory)

LineAge <- ggplot(Diabetes_Data, aes(x = Age, y = Outcome)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", color = "gray", se = FALSE, size = 1.5) +
  labs(x = "Age", y = "Outcome")

print(LineAge)

# line chart side by side

library(gridExtra)

grid.arrange(
  LinePregnancy + ggtitle("Pregnancies"),
  LineGlucose + ggtitle("Glucose"),
  LineBloodPressure + ggtitle("Blood Pressure"),
  LineSkin + ggtitle("Skin Thickness"),
  LineInsulin + ggtitle("Insulin"),
  LineBMI + ggtitle("BMI"),
  LineFamilyHistory + ggtitle("Family History Probability"),
  LineAge + ggtitle("Age"),
  ncol = 2
)

# Charts


BMIHist <- ggplot(Diabetes_Data, aes(x = BMI)) + geom_histogram(bins = 15)

GlucoseHist <- ggplot(Diabetes_Data, aes(x = Glucose)) + geom_histogram(bins = 15)

AgePregScatter <- ggplot(Diabetes_Data, aes(x = Age, y = Pregnancies)) + geom_point()

GlucoseOutBarchart <- ggplot(Diabetes_Data, aes(x = Glucose, y = Outcome)) + geom_col()

FamilyGlucoseScatter <- ggplot(Diabetes_Data, aes(x = Family.History.Propability, y = Glucose)) + geom_point()

grid.arrange(
BMIHist,
GlucoseHist,
AgePregScatter,
GlucoseOutBarchart,
FamilyGlucoseScatter,
ncol = 2
)
  
# Tree and pruned tree plotting

library(rpart)
library(rpart.plot)

tree <- rpart(Outcome ~ ., data = Diabetes_Data, method = "class")
prp(tree)

library(caret)

importance <- varImp(tree)
print(importance)

pruned_tree <- rpart(Outcome ~ ., data = Diabetes_Data, method = "class", cp = 0.05)
prp(pruned_tree)

importance2 <- varImp(pruned_tree)
print(importance2)

# Clustering using hierarchical method

library(cluster)
library(factoextra)

res.dist <- dist(Diabetes_Data, method = "euclidean")
as.matrix(res.dist)[1:6, 1:6]
res.hc <- hclust(d = res.dist, method = "ward.D2")
res.hc

fviz_dend(res.hc, k = 4, cex = 0.4, horiz = TRUE, k_colors = "jco",
          rect = TRUE, rect_border = "jco", rect_fill = TRUE)


# Optimal numbers of clusters in k-means

library(cluster)
library(factoextra)

df <- Diabetes_Data
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)


# Clustering K-Means

k <- 4
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)
set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)

print(km.res)

aggregate(Diabetes_Data, by = list(cluster = km.res$cluster), mean)

dd <- cbind(Diabetes_Data, cluster = km.res$cluster)
head(dd)

km.res$cluster
km.res$size
km.res$centers


fviz_cluster(km.res , data = df)


# Cluster Representation

cluster_centroids <- km.res$centers
print(cluster_centroids)

# Model testing

# K-fold

library(caret)

cluster_centroids <- km.res$centers

data <- na.omit(Diabetes_Data)

num_folds <- 4

folds <- createFolds(1:nrow(data), k = num_folds)

evaluation_results <- list()

for (fold in 1:4) {
  train_data <- data[-folds[[fold]], ]
  test_data <- data[folds[[fold]], ]
  
  km_res_fold <- kmeans(train_data, centers = k)
  
  cluster_centroids_fold <- km_res_fold$centers
  
  sse <- sum((test_data - cluster_centroids_fold[km_res_fold$cluster, ])^2)
  
  evaluation_results[[fold]] <- sse
}

average_sse <- mean(unlist(evaluation_results))
print(average_sse)


library(readr)
Iris <- read_csv("Semester Exams/SEM 6/DAV/Coding/Lab/Datasets/Iris.csv")
View(Iris)

#1. Line Plot
plot(Iris$SepalLengthCm, type="l", main="Line plot of Sepal Length", 
     xlab="Sample Index", ylab="Sepal Length(cm)")

#2. Scatter Plot 
plot(Iris$SepalLengthCm, Iris$SepalWidthCm, main="Scatter Plot: Sepal Length vs Sepal Width",
     xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)")

#3. Bar Plot
barplot(table(Iris$Species), main="Bar Plot of Class Counts",
        xlab="Species", ylab="Count")

#4. Histogram 
hist(Iris$SepalLengthCm,breaks=20, main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)", ylab = "Frequency")

#5. Box Plot
boxplot(Iris$SepalLengthCm, main="Box Plot of Sepal Length", 
        ylab="Sepal Length (cm)")
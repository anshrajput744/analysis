#r project

1>
# Install packages if you haven't already
install.packages(c("ggplot2", "dplyr", "tidyr", "GGally"))

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(GGally)

2>
# Load the Iris dataset
data(iris)
# View the first few rows of the dataset
head(iris)

3>
# Structure of the dataset
str(iris)

# Summary statistics
summary(iris)

4>
# Histogram for each numeric variable
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_histogram(bins = 30, fill = "blue", alpha = 0.7) + 
  labs(title = "Distribution of Sepal Length")

ggplot(iris, aes(x = Sepal.Width)) + 
  geom_histogram(bins = 30, fill = "green", alpha = 0.7) + 
  labs(title = "Distribution of Sepal Width")

ggplot(iris, aes(x = Petal.Length)) + 
  geom_histogram(bins = 30, fill = "red", alpha = 0.7) + 
  labs(title = "Distribution of Petal Length")

ggplot(iris, aes(x = Petal.Width)) + 
  geom_histogram(bins = 30, fill = "purple", alpha = 0.7) + 
  labs(title = "Distribution of Petal Width")


5>
# Boxplots to identify outliers
ggplot(iris, aes(x = Species, y = Sepal.Length)) + 
  geom_boxplot() + 
  labs(title = "Boxplot of Sepal Length by Species")

ggplot(iris, aes(x = Species, y = Sepal.Width)) + 
  geom_boxplot() + 
  labs(title = "Boxplot of Sepal Width by Species")

ggplot(iris, aes(x = Species, y = Petal.Length)) + 
  geom_boxplot() + 
  labs(title = "Boxplot of Petal Length by Species")

ggplot(iris, aes(x = Species, y = Petal.Width)) + 
  geom_boxplot() + 
  labs(title = "Boxplot of Petal Width by Species")


6>
# Scatter plot of Sepal Length vs. Sepal Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() + 
  labs(title = "Sepal Length vs. Sepal Width")

# Scatter plot of Petal Length vs. Petal Width
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) + 
  geom_point() + 
  labs(title = "Petal Length vs. Petal Width")

# Pair plot to see relationships between all numeric variables
ggpairs(iris, aes(color = Species))

7>
ggsave("sepal_length_histogram.png", width = 8, height = 5)


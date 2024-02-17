# 01_data_exploration.R

# Set the working directory
setwd("C:/Users/julien/Desktop/GITHUB/plant")

# Load necessary libraries
library(ggplot2)

# Load the PlantGrowth dataset
PlantGrowth <- read.csv("C:/Users/julien/Desktop/GITHUB/plant/PlantGrowth.csv")

# View the first few rows of the dataset
head(PlantGrowth)

# 1. Summary Statistics
summary(PlantGrowth)

# 2. Data Structure
str(PlantGrowth)

# 3. Handling Missing Values
# Check for missing values
sum(is.na(PlantGrowth))

# 4. Basic Visualizations

# Histogram of weights
ggplot(PlantGrowth, aes(x = weight)) + 
  geom_histogram(binwidth = 0.1, fill = "blue", color = "black") +
  ggtitle("Distribution of Plant Weights")

# Boxplot for weight across different groups
ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) + 
  geom_boxplot() +
  ggtitle("Plant Weight by Treatment Group")

# 03_data_visualization.R

# Set the working directory
setwd("C:/Users/julien/Desktop/GITHUB/plant")

# Load necessary libraries
library(ggplot2)

# Load the PlantGrowth dataset
PlantGrowth <- read.csv("C:/Users/julien/Desktop/GITHUB/plant/PlantGrowth.csv")

# Basic Boxplot Visualization
ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) + 
  geom_boxplot() +
  ggtitle("Boxplot of Plant Weights by Treatment Group") +
  theme_minimal()

# Advanced Visualization - Highlighting Significant Differences
# Assuming trt2 and trt1 show a significant difference
ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) +
  geom_boxplot() +
  geom_text(label = "trt2 significantly higher than trt1", 
            x = 1.5, y = max(PlantGrowth$weight), 
            vjust = 2, hjust = 0.5, 
            color = "black") +
  ggtitle("Boxplot of Plant Weights with Significant Differences") +
  theme_minimal()



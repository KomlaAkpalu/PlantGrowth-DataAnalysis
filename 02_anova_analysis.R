# 02_anova_analysis.R

# Set the working directory
setwd("C:/Users/julien/Desktop/GITHUB/plant")

# Load necessary libraries
library(ggplot2)

# Load the PlantGrowth dataset
PlantGrowth <- read.csv("C:/Users/julien/Desktop/GITHUB/plant/PlantGrowth.csv")

# Ensure that the 'group' variable is a factor
PlantGrowth$group <- as.factor(PlantGrowth$group)

# Performing the ANOVA Test
anova_result <- aov(weight ~ group, data = PlantGrowth)
summary_anova <- summary(anova_result)

# Displaying the ANOVA summary
print(summary_anova)

# We need to make sure we are extracting the p-value correctly from the summary
p_value <- summary_anova[[1]]["group", "Pr(>F)"]

# ANOVA suggests significant differences, proceed with post-hoc test
if (!is.null(p_value) && p_value < 0.05) {
  post_hoc_result <- TukeyHSD(anova_result)
  print(post_hoc_result)
  # Tukey's HSD will show pairwise comparisons between groups.
} else {
  cat("Post-hoc test is not needed as the ANOVA result is not significant or p-value not found.\n")
}

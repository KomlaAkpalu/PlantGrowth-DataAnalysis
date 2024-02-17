# PlantGrowth Dataset Analysis Summary

## Introduction

The `PlantGrowth` dataset analysis aimed to identify the impact of different treatments on the growth of plants. Three groups were analyzed: a control group and two treatment groups.

## Data Exploration

The dataset was composed of three groups with ten plants in each. Descriptive statistics for each group were as follows:

- Control (ctrl): Mean weight = 5.032, SD = 0.583
- Treatment 1 (trt1): Mean weight = 4.661, SD = 0.794
- Treatment 2 (trt2): Mean weight = 5.526, SD = 0.443

## ANOVA Results

The one-way ANOVA indicated that there were statistically significant differences in plant weights among the different treatment groups (F(2, 27) = 4.846, p = 0.01591).

## Post-hoc Analysis

A Tukey's HSD post-hoc test was conducted due to the significant ANOVA result. It revealed that:

- The weight of plants in the `trt2` group was significantly higher than those in the `trt1` group.
- No significant differences were found between the control group and either of the treatment groups.

## Visualizations

Boxplots were created to visualize the distribution of weights within each group. The visualization highlighted the central tendency and variability within each group, with the `trt2` group showing the highest mean weight.

### Boxplot of Plant Weights by Treatment Group

This boxplot visualizes the spread and central tendencies of plant weights in each treatment group.

![Boxplot of Plant Weights by Treatment Group](/C:/Users/julie/Desktop/GITHUB/plant/plant_growth_boxplot.png)

### Boxplot of Plant Weights with Significant Differences

This annotated boxplot highlights the significant difference in plant growth between the `trt2` and `trt1` treatment groups.

![Boxplot of Plant Weights with Significant Differences](/C:/Users/julie/Desktop/GITHUB/plant/plant_growth_annotated_boxplot.png)

## Conclusions

The analysis suggests that the treatment corresponding to `trt2` notably enhances plant growth compared to `trt1`. These results may guide future agricultural or botanical research in selecting treatments to promote plant growth.

## Reflections
The process of conducting this analysis highlighted the importance of statistical testing in experimental data analysis. Through this project, the practical application of ANOVA and post-hoc testing in R was demonstrated, as well as the creation of informative visualizations using `ggplot2`.

The analytical process emphasized the critical role of statistical methods in interpreting experimental data. It provided insights into the importance of post-hoc analysis when significant differences are detected by ANOVA.

---

For inquiries or further discussion regarding this analysis, please contact me at julienakpalu2@gmail.com 

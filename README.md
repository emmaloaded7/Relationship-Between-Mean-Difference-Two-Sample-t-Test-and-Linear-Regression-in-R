# Relationship Between Group Means, Two-Sample t-Test, and Linear Regression in R

## Overview
This project demonstrates the statistical relationship between group mean comparison, 
the independent two-sample t-test, and simple linear regression using a goat husbandry dataset.

The analysis investigates whether the average weight of goats differs between male and female animals and 
shows how the same research question can be answered using three different statistical approaches.

## Research Question
Is there a significant difference in mean weight between male and female goats?

## Dataset
https://github.com/emmaloaded7/Relationship-Between-Mean-Difference-Two-Sample-t-Test-and-Linear-Regression-in-R/blob/master/goat_dataset.csv

Variables used in the analysis:
* Weight (kg): Response variable
* Sex: Categorical predictor variable
* 0 = Female
* 1 = Male

## Statistical Methods
1. Group Mean Comparison

The mean weight of male and female goats was calculated separately.

Fmean <- mean(dataset$Weight[dataset$Sex=="0"])
Mmean <- mean(dataset$Weight[dataset$Sex=="1"])

This provides a direct measure of the difference between the two groups.

2. Independent Two-Sample t-Test

A two-sample t-test was conducted to determine whether the observed difference in mean weight 
between male and female goats was statistically significant.

Hypotheses:

Null Hypothesis (H₀): Male and female goats have equal mean weights.
Alternative Hypothesis (H₁): Male and female goats have different mean weights.

3. Linear Regression

A simple linear regression model was fitted:
lm(Weight ~ Sex, data = dataset)

## Key Statistical Concept

This project demonstrates an important statistical principle:

For a categorical predictor with two groups, the significance test of the regression coefficient is mathematically 
equivalent to the independent two-sample t-test.
## Note:
The p-value from the regression coefficient test corresponds to the p-value from the t-test.
Three methods lead to the same statistical conclusion.
## Software
* R Programming Language
* Base R Statistical Functions

## Skills Demonstrated
* Data inspection and preparation
* Descriptive statistics
* Group mean comparison
* Independent two-sample t-test
* Linear regression analysis
* Interpretation of categorical predictors
* Statistical inference

## Learning Outcome

This project illustrates how descriptive statistics, hypothesis testing, and regression analysis are interconnected. 
It provides a practical example of how different statistical techniques can be used to answer the same research question 
and arrive at equivalent conclusions.

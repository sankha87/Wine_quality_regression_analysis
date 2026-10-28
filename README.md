# Red Wine Quality Regression Analysis

This project explores the physicochemical characteristics associated with red-wine quality using R. Exploratory data analysis and multiple linear regression were used to compare three progressively simplified models.

## Dataset

`redwine.csv` contains 1,599 red-wine observations and 12 numeric variables. The response variable is `quality`; the remaining 11 columns contain physicochemical measurements used as regression predictors.

## Variables

- `fixacid`: fixed acidity
- `volacid`: volatile acidity
- `citric`: citric acid
- `residsugar`: residual sugar
- `chlorides`: chloride concentration
- `freeSO2`: free sulphur dioxide
- `totalSO2`: total sulphur dioxide
- `density`: density
- `pH`: acidity/alkalinity measure
- `sulphates`: sulphate concentration
- `alcohol`: alcohol content
- `quality`: expert-assigned wine quality rating

Run the R script from the repository root so its relative path, `data/redwine.csv`, resolves correctly.


## Methodology

- Explored the dataset structure, summary statistics and missing values
- Visualised the distribution of wine-quality ratings using ggplot2
- Developed a full multiple linear regression model with 11 predictors
- Removed statistically non-significant predictors to produce simpler models
- Compared three regression models using adjusted R-squared and coefficient significance

## Key Findings

The final model retained six predictors:

- Volatile acidity
- Chlorides
- Total sulphur dioxide
- pH
- Sulphates
- Alcohol

The final model achieved an adjusted R-squared of approximately 0.317. This indicates moderate explanatory power and suggests that additional factors may be required for stronger predictions.

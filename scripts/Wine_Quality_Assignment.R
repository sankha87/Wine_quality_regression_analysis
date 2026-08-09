# ============================================================
# Assignment 2 - Wine Quality Regression Analysis
#
# ============================================================

# ============================================================
# PART 1 - INITIAL EXPLORATION OF THE DATA
# ============================================================

# Load the wine dataset
wine <- read.csv("data/redwine.csv")

# Inspect dimensions and structure
dim(wine)
str(wine)

# Summary statistics
summary(wine)

# First and last few observations
head(wine)
tail(wine)

# Check for missing values
colSums(is.na(wine))


# ------------------------------------------------------------
# Frequency distribution of wine quality ratings
# ------------------------------------------------------------


library(ggplot2)

ggplot(wine, aes(x = quality)) +
  geom_bar() +
  labs(
    title = "Frequency Distribution of Wine Quality Ratings",
    x = "Wine Quality Rating",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# PART 2 - MULTIPLE LINEAR REGRESSION
# ============================================================

# ------------------------------------------------------------
# Model 1: Full model
# ------------------------------------------------------------

model1 <- lm(formula = wine$quality ~ wine$fixacid + wine$volacid + wine$citric + 
               wine$residsugar + wine$chlorides + wine$freeSO2 + wine$totalSO2 +
               wine$density + wine$pH + wine$sulphates + wine$alcohol,
  data = wine
)

summary(model1)


# ------------------------------------------------------------
# Model 2
# Remove fixacid, residsugar and density
# ------------------------------------------------------------

model2 <- lm(formula = wine$quality ~ wine$volacid + wine$citric + wine$chlorides +
    wine$freeSO2 + wine$totalSO2 + wine$pH + wine$sulphates + wine$alcohol,
  data = wine
)

summary(model2)


# ------------------------------------------------------------
# Model 3: Final model
# Remove citric and freeSO2
# ------------------------------------------------------------

model3 <- lm(formula = wine$quality ~ wine$volacid + wine$chlorides + wine$totalSO2 +
               wine$pH + wine$sulphates + wine$alcohol,
  data = wine
)

summary(model3)

# End of script

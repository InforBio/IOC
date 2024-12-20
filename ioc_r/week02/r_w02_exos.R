### R script for the hands-on examples
### Week 2

## Data Types in R -------------------------------------------------------------

## Create variables to store the following types of biological data and check their class in R:
# - The name of a gene (e.g., *BRCA1*).
# - The number of samples in an experiment (e.g., 50).
# - Whether a sample is treated or not (TRUE/FALSE).
# - The four bases in DNA sequence: A, T, G, C.





## Vectors ---------------------------------------------------------------------

# You have the following concentrations of a drug measured in five samples (in µM):
# 2.3, 5.1, 3.8, 6.4, 4.9.

# Perform the following tasks:

# - Create a numeric vector to store the concentrations.
# - Calculate the mean and standard deviation of the concentrations.
# - Subset the concentrations greater than 4 µM



## Matrices --------------------------------------------------------------------

# You’re working with expression levels of three genes (*geneA*, *geneB*, *geneC*)
# across five samples. The expression levels are as follows:
# sample1: 10, 12, 15
# sample2: 20, 18, 22
# sample3: 14, 16, 19
# sample4: 8, 9, 7
# sample5: 25, 30, 28

# - Create a matrix to represent this data, with genes in rows and samples in columns.
# - Add row and column names to the matrix.
# - Calculate the mean expression for each gene (row-wise).
# - Subset the data to show only samples where `geneC` expression is greater than 20.  



## Test the Normality on Simulated Data ----------------------------------------

### Height
# Use following code to generate the height (in cm) of 100 students
set.seed(1)
heights <- round(rnorm(n = 100, mean = 170, sd = 10), 1)
heights


### Check normality
shapiro.test(heights)


### Visualize the distribution with histogram
# Histogram
hist(
  heights, probability = TRUE, col = "lightblue",
  main = "Histogram with Bell Curve", xlab = "Heights (cm)", ylab = "Density"
)
# Add bell curve
curve(
  dnorm(x, mean = mean(heights), sd = sd(heights)),
  col = "red", lwd = 2, add = TRUE
)
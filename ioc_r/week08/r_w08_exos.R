### R script for the hands-on examples
### Week 8


## Install {tidyverse} and Load the Package ---------------------------------------




## Mini Data Project -------------------------------------------------------------

# A researcher has measured the expression levels of 20 genes (anonymed as 1 to 20) using the RT-qPCR technique.
# The gene expression was assessed in two structures of the mouse brain.
# Mice ranged in age from 10 to 60 days (10, 15, 20, 25, 30, 35, 40, 45, 50, 60 days),
# and the experiment was repeated with both male and female mice,
# with 6 animals (named from A to F) in each group.

# According to the researcher, the data was stored in two files, one for each brain structure.
# Within each file, rows represent the different ages,
# and columns represent the gene, sex, and animal.

# A small Gaussian noise has been added to the original data, preserving the overall structure.

# The data is available in two CSV files:
# - data_anonym_struc1_noise.csv
# - data_anonym_struc2_noise.csv

# We will focus on the data from the brain structure 1.

# 1. Please download the `data_anonym_struc1_noise.csv` file.
# Observe your data file (for example with a text editor or via terminal):
# - Is there a header line? 
# - What is the separator between columns?
# - Which character was used for decimal points?
# - Which character was used for missing data (between two seperators where there's no value)?

# 2. Import the `data_anonym_struc1_noise.csv` into RStudio, you can use either:
# - the `read_csv2()` from the package {`readr`} (`?readr::read_csv2`), or
# - use the click-button way and copy-paste the code in your script.

## Don't forget to use/select the appropriate parameters to make sure you import correctly the data.

# Name the data as `data1`.
# Convert your imported data to tibble format if it's not the case.

# What is the data dimension?


# 3. Show the first 10 columns of your data.


# 4. What are the column names?


# 5. Rename the first column as `age`.


# 6. Reshape data to long format with the `pivot_longer()` function.
# What are the columns to be included to pivot into longer format?
 

# 7. Add a column `struc` which contains the name of the measured structure `s1`.


# 8. Extract information about gene, sex and animal from the column `id` using the `extract()` function. Name the new columns as "gene_id", "sex" and "animal".

# Hint: Find the patterns for the extraction.
# You can use AI to help you to write the regular expression.



# Now, the data is ready for downstream analysis. Let's focus on gene 1.

# 9. At age of 10 days, which animal has the highest expression value for gene 1 overall?
# And which animal has the highest expression value in each sex?


# 10. Is there any missing value for gene 1?
# If yes, how to remove lines with NA?


# 11. After removing NAs, how many animals are there for each sex in gene 1?


# 12. Summarize the median, mean, and standard deviation of gene 1 expression for both sexes.


# 13. Draw a boxplot to show gene 1 expression level (with NA removed) for both sex at different time point (age).


# At age of 10 days, it seems that there's a difference between male and female at all age.
# Let's perform a linear regression to test it.

# fit the model
res_g1_d10 <- lm(
  formula = value ~ sex,
  data = data1_long |> filter(gene_id == "1" & age == 10)
)
# View the summary of model
summary(res_g1_d10)


## Bonus

# Use the `read.table()` function to import the data and continue to reshape the data based on the imported data.
# (Check the approporiate parameters to be included with `?read.table`)

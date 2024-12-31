### R script for the hands-on examples
### Week 4

## Import Data -------------------------------------------------------------

# A gene-level diffenrential expression (DE) analysis was performed
# to compare SET1 samples to WT samples using data from `read-counts.csv`.

# The analysis result is available via this link:
# https://raw.githubusercontent.com/InforBio/IOC/refs/heads/main/ioc_r/week04/toy_DEanalysis.csv

## - Please donwload the result file and upload it to your data folder.
## - Import the data using `read.csv()` function.
## (See the documentation with `?read.csv`)
## Name the imported results `de_res`.

de_res



## Exercises -------------------------------------------------------------

## 1. Check the structure of `de_res` using an appropriate R function.
##    What are the dimensions?



# The result contains following columns:

# - `gene_name`: gene name
# - `baseMean`: mean of normalized counts for all samples
# - `log2FoldChange`: log2 fold change
# - `lfcSE`: standard error
# - `stat`: Wald statistic
# - `pvalue`: Wald test p-value
# - `padj`: adjusted p-values (Benjamini-Hochberg procedure)

## 2. Extract results for these genes: RNR1, PIR3, SRP68.


## 3. Order the result by decreasing p-value using the `order()` function.
##    (See `?order()`)
##    Hints:
##    - `order()` can return the indices of the vector elements in
##       ascending or descending order
##    - Apply `order()` to the desired column
##    - Use the returned indices to rearrange the dataframe



## 4. Use `ifelse()` to categorize genes.
##    Add a new column, `gene_category`, that assigns categories:
##    - "up" if `log2FoldChange > 0.5`.
##    - "down" if `log2FoldChange < -0.5`.
##    - "neutral" otherwise.


## 5. Use `table()` to count the occurrences of each gene category.



## 6. Write the code to create a subset of significant upregulated genes with:
##    - Adjusted p-value (`padj`) < 0.05.
##    - Log2 fold change (`log2FoldChange`) > 1.


## 7. Write the code to create a subset for genes that meet
##    any of the following conditions:
##    - `pvalue < 0.01` and `log2FoldChange > 0.5`.
##    - `pvalue < 0.01` and `log2FoldChange < -0.5`.


## 8. Write a function to automate "de_res" filtering for genes
##    with a p-value less than or equal to a custom cutoff.



## 9. Based on the function created in question 8, modify the function
##    to allow output ordered by any desired column in `de_res`.
## Hints: You need an extra parameter to specify the wanted
##        column and another parameter to fix the cutoff.


## 10. Based on the function created in question 9,
##     add a step in the body of the function to extract
##     the gene names that met the filter condition.
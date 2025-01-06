### R script for the hands-on examples
### Week 1

## Create an R project ---------------------------------------------------------

# 1. In RStudio, create a new project in your folder.
#    Some rules for naming your project:
#     - be descriptive and keep it short
#     - use snake case (only lowercase letters and underscores allowed),
#       avoid special characters (such as `!`, `#`, ) and spaces
#     - the name cannot starts with numbers
# 2. Open your R project, create three new folders,
#    *i.e.*, `data`, `scripts`, `outputs`.

## Data ------------------------------------------------------------------------

# Please download the zipped data folder to your computer, unzip it if need.
## Link: https://monashbioinformaticsplatform.github.io/r-more/r-more-files.zip


## Import data -----------------------------------------------------------------

# Please import the file "read-counts.csv" into R using the click button way,
# call the imported data "counts".
counts <- read.csv("path/to/read-counts.csv") # replace by your path



## Play with Basic R Commands --------------------------------------------------

# 1.What is the absolute file path of the count data?
#   What is its absolute path?
#   Verify your answer using the function file.exists().




# 2.Check the “Environment” panel or use the function dim().
#   What is the dimension of the data frame?
#   In the “Environment” panel,
#   click on the tabular icon next to the dataset to visualize the it.
dim(counts)


## We can extract all gene expressions for the sample named “WT:2” using counts[["WT:2"]].
counts[["WT:2"]]

# 3. Try mode() on the expression data for “WT:2”, what does it return?
mode(counts[["WT:2"]])


# 4.Calculate the average expression (mean()) and
#   standard deviation (sd()) of genes from the sample “WT:2”.

mean(counts[["WT:2"]])
sd(counts[["WT:2"]])


# 5. Generate descriptive statistics for all genes from the sample “WT:2” using summary().
summary(counts[["WT:2"]])


# 6. Generate a histogram for the “WT:2” sample using hist().
#    What does the distribution look like?
hist(counts[["WT:2"]])


# Re draw the histogram with the log2 transformed data,
# what does the distribution look like now?
hist(log2(counts[["WT:2"]]))
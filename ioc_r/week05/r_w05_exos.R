### R script for the hands-on examples
### Week 4

## Install New Packages -------------------------------------------------------------

# We will use a couple of additional R packages for this training in sessions 8 and 9:
# - {[tidyr](https://tidyr.tidyverse.org)}: provides functions that help you get to tidy data
# - {[dplyr](https://dplyr.tidyverse.org)}: for data manipulation
# - {[tibble](https://tibble.tidyverse.org/)}: a modern re-imagining of the data frame
# - {[stringr](https://stringr.tidyverse.org/)}: provides functions designed to make working with strings as easy as possible
# - {[readr](https://readr.tidyverse.org)}: provides fast and friendly way to read rectangular data 

# Instead of installing them one by one, we can install the {[tidyverse](https://www.tidyverse.org)} package (a collection of previous packages designed for data science).

## 1. Install the {`tidyverse`} package.
install.packages("tidyverse") # you only need to install it once


## 2. Check if you can find `{dplyr}` and `{tidyr}` 
##    in the "Packages" panel in RStudio.

## 3. Please use the following code to create a data frame of
##    all installed packages in your system.
##    Show a couple of first lines of the data frame.
my_pkgs <- as.data.frame(installed.packages()[, c(1, 3:4)])


## 4. According to `my_pkgs`, how many packages are installed in your system?


## 5. Extract the rows for the "ggplot2", "tidyr", "dplyr" packages from `my_pkgs`.



## Create a Basic ggplot -------------------------------------------------------------

# We'll use the built-in data set `iris`.

## 0. Load the {`ggplot2`} package.

## 1. Create a violin for the petal length by species.


## 2. Modify labels:
##    - Remove x-axis title
##    - Change y-axis title to "Petal Length (cm)"
##    - Add a plot title "Distribution of iris' petal length"
##    - Add a subtitle "The data were collected by Anderson, Edgar (1935)"



## 3. Add a layer of boxplot on the violin plot.
##    - Color the boxes by species.
##    - Use the `alpha` parameter to let boxes be semi-transparent.


## 4. Change the theme to `theme_minimal()`. 


## 5. With the `theme()` function:
##    - Increase the font size of x-axis' text.
##    - Move the legend to the top of the plot.


## Create a Volcanot Plot with ggplot2 --------------------------------------------

# We will use the same diffenrential expression (DE) analysis result as in the hands-on example of session 4, which is also available [here](https://raw.githubusercontent.com/InforBio/IOC/refs/heads/main/ioc_r/exos_data/toy_DEanalysis.csv).

## 1. Import the results file in R and name it `de_res`.


## 2. Create a new column (`gene_signif`) which indicates
##    whether the adjusted p-value is smaller than 0.05.


## 3. Create a volcano plot using the DE results `de_res`.
##    - Let the log2 fold change be on the x-axis.
##    - Transform the adjusted p-value to `-log10()`,
##      then let them be on the y-axis.
##    - Color the points by whether the adjusted p-value is smaller than 0.05
##      (*i.e.*, the `gene_signif` column).
##    - Use the shape 18 for the points.
##    - Increase the points size to 3.
##    - Use the `alpha` parameter to make points transparent.
##    - Add a title for the plot, show number of analysed genes in the subtitle.
##    - Use the `theme_bw()` for the plot.
##    - Hide the legend.

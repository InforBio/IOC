## Data from Lorette
library(readr)
visceral_fat <- read_csv("visceral_fat.csv")

## Modify data for exercise
visceral_fat <- visceral_fat[, 1:6]
colnames(visceral_fat) <- gsub(
  "\\)|mean_", "", gsub(" |\\(", "_", colnames(visceral_fat))
)
visceral_fat[["diastolic_bp__mmhg"]][27] <- 284
write_csv(visceral_fat, file = "ioc_r/data/visceral_fat.csv")
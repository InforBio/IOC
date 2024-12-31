library(DESeq2)

read_counts <- read.table(
  file = "ioc_r/week03/read-counts.csv",
  header = TRUE, sep = ",", row.names = 1
)
pheno <- data.frame(
  id = colnames(read_counts)[1:20],
  group = factor(rep(c("wt", "set1"), each = 10), levels = c("wt", "set1"))
)

dds <- DESeqDataSetFromMatrix(
  countData = as.matrix(read_counts[, 1:20]),
  colData = pheno,
  design = ~ group
)

dds <- DESeq(dds)
res <- results(dds)

write.csv(
  data.table::as.data.table(res, keep.rownames = "gene_name"),
  file = "projects/IOC_R/data/toy_DEanalysis.csv", quote = FALSE, row.names = FALSE
)

# save(
#   dds, res,
#   file = "toy_DEanalysis.RData"
# )
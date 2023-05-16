library(circlize)
library(ComplexHeatmap)

data <- read.csv("heatmap_data.csv")
data_matrix <- as.matrix(data)

col_fun = colorRamp2(c(-2, 0, 2), c("blue", "white", "red"))
Heatmap(data_matrix, name = "data_matrix", col = col_fun,
    show_row_dend = FALSE, show_column_dend = FALSE)

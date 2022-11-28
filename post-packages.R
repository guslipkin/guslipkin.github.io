needed <- c(
  "data.table",
  "glue",
  "gridExtra",
  "kableExtra",
  "lubridate",
  "openxlsx",
  "rbenchmark",
  "reticulate",
  "sparklyr",
  "tidytext",
  "tidyverse"
)

needed <- needed[!(needed %in% installed.packages())]

for(package in needed) {
  install.packages(package)
}
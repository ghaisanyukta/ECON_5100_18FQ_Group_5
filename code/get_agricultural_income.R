library(here)
library(foreign)

# input Stata file
# Education: General Education
agg2_data <- read.dta(here("raw_data/glss4/aggregates","agg2.dta"))

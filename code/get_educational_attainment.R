library(here)
library(foreign)

# input Stata file
# Education: General Education
sec2a_data <- read.dta(here("raw_data/glss4","sec2a.dta"))

# Education: Educational Career
sec2b_data <- read.dta(here("raw_data/glss4","sec2b.dta"))



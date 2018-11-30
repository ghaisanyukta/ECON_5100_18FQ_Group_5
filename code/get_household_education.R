#SEC2A Education: General Education
#SEC2B Education: Educational Career
#SEC2C Education: Literacy /Apprenticeship

library(here)
library(foreign)

# input Stata file
# Education: General Education
sec2a_data <- read.dta(here("raw_data/glss4","sec2a.dta"))

# Education: Educational Career
sec2b_data <- read.dta(here("raw_data/glss4","sec2b.dta"))

# Education: Literacy /Apprenticeship
sec2c_data <- read.dta(here("raw_data/glss4","sec2c.dta"))

#rm(list=ls())
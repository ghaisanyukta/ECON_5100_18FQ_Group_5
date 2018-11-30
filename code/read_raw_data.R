library(here)
library(foreign)

# input Stata file
# Employment: Screening questions and list of occupations in past 12 months
sec4a_data <- read.dta(here("raw_data/glss4","sec4a.dta"))

# Employment: Characteristics of the main occupation
sec4b_data <- read.dta(here("raw_data/glss4","sec4b.dta"))

# Employment: Secondary occupation during the past 12 months
sec4c_data <- read.dta(here("raw_data/glss4","sec4c.dta"))

# Employment: Third occupation during the past 12 months
sec4d_data <- read.dta(here("raw_data/glss4","sec4d.dta"))

# Employment: Fourth occupation during the past 12 months
sec4e_data <- read.dta(here("raw_data/glss4","sec4e.dta"))

# Employment: Employment search in the past 12 months
sec4f_data <- read.dta(here("raw_data/glss4","sec4f.dta"))

# Employment: Activity status and employment search in the last 7 days
sec4g_data <- read.dta(here("raw_data/glss4","sec4g.dta"))

# Employment: Employment history
sec4h_data <- read.dta(here("raw_data/glss4","sec4h.dta"))

# Employment: Housekeeping
sec4j_data <- read.dta(here("raw_data/glss4","sec4j.dta"))

# Migration
sec5_data <- read.dta(here("raw_data/glss4","sec5.dta"))

# Identification of respondents for sections 8,9,and 10
sec6_data <- read.dta(here("raw_data/glss4","sec6.dta"))

# Housing
sec7_data <- read.dta(here("raw_data/glss4","sec7.dta"))


#rm(list=ls())


library(tidyverse)
#library(bit64)


colnames(sec2a_data)
educ_data <- sec2a_data %>%
  select(nh, pid, clust, s2aq1, s2aq2, s2aq3) %>%
  rename(hhid = nh,pid = pid, 
         attended_school = s2aq1, highest_educ_level = s2aq2,
         highest_educ_qualification = s2aq3) %>%
  mutate(attended_school = if_else(attended_school == 1, 1, 0),
         highest_educ_level = if_else((attended_school == 0), 0, highest_educ_level),
         highest_educ_qualification = if_else((attended_school == 0), 0, highest_educ_qualification))

#highest education per household


#education of head of household
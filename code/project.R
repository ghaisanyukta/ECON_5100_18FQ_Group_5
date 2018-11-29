install.packages('dplyr')

library(foreign)
library(dplyr)

setwd("/Users/nancyjain/Documents/nancy/SeattleUniversity/1/StatisticalApplicationsAndQuantitativeMethods/glss4")

sec0a <- read.dta("sec0a.dta")
head(sec0a, n=10)

sec2a_data <- read.dta("sec2a.dta")

sec1 <- read.dta("sec1.dta")
head(sec1, n=10)

sec4a <- read.dta("sec4a.dta")
head(sec4a, n=10)

colnames(sec0a)
head_hh <- sec0a %>%
  select(region, district, nh, clust, loc2, loc5, loc3)

colnames(sec1)
head_rel <- sec1 %>%
  select(nh, clust, pid, rel)
head_rel <- filter(head_rel, rel == "1")

#colnames(sec4a)
#employment <- sec4a %>%
#  select(nh, pid, clust, s4aq3) %>%
#  rename(nh = nh, pid = pid, clust = clust, worked_on_farm_1yes_2no = s4aq3)

colnames(sec2a_data)
educ_data <- sec2a_data %>%
  select(nh, pid, clust, s2aq1, s2aq2, s2aq3) %>%
  rename(nh = nh,pid = pid, 
         attended_school = s2aq1, highest_educ_level = s2aq2,
         highest_educ_qualification = s2aq3) %>%
  mutate(attended_school = if_else(attended_school == 1, 1, 0),
         highest_educ_level = if_else((attended_school == 0), 0, highest_educ_level),
         highest_educ_qualification = if_else((attended_school == 0), 0, highest_educ_qualification))



total1 <- merge(x = head_rel, y = educ_data, by = c('nh','pid','clust'), all.x = TRUE )

#merge two dataframes
#total2 <- merge(x = head_hh, y = employment, by = c("nh","clust"), all = TRUE)

total <- merge(total1, head_hh, by=c("nh","clust"), all.x = TRUE)
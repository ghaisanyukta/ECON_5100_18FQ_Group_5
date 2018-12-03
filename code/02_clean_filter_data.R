
# Clean and filter education data
#colnames(sec2a_data)
educ_data <- sec2a_data %>%
  select(nh, pid, clust, s2aq1, s2aq2, s2aq3) %>%
  rename(attended_school = s2aq1, highest_educ_level = s2aq2,
         highest_educ_qualification = s2aq3) %>%
  mutate(attended_school = if_else(attended_school == 1, 1, 0),
         highest_educ_level = if_else((attended_school == 0), 0, highest_educ_level),
         highest_educ_qualification = if_else((attended_school == 0), 0, highest_educ_qualification))

#highest education per household


#education of head of household


# Clean Region Data
region_info_data <- sec0a_data %>%
                select(region, district, nh, clust, loc2, loc5, loc3)

# Get head of households
hh_head_data <- sec1_data %>%
  select(nh, clust, pid, rel) %>%
  filter(rel, rel == "1")
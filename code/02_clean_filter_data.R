
# Clean and filter education data
#colnames(sec2a_data)
educ_data <- sec2a_data %>%
  select(nh, pid, clust, s2aq1, s2aq2, s2aq3) %>%
  rename(attended_school = s2aq1, highest_educ_level = s2aq2,
         highest_educ_qualification = s2aq3) %>%
  mutate(attended_school = if_else(attended_school == 1, 1, 0),
         highest_educ_level = if_else((attended_school == 0), 0, highest_educ_level),
         highest_educ_qualification = if_else((attended_school == 0), 0, highest_educ_qualification)) %>%
  filter(highest_educ_level < 96)

#Highest education per household Data
# Select highest education per household while eliminating other educational levels
# Here 96 stands for other education level
highest_educ <- educ_data %>%
  select(nh, clust, highest_educ_level) %>%
  group_by(clust, nh) %>%
  arrange(desc(highest_educ_level),.by_group = TRUE) %>%
  filter(row_number() == 1) 

# Filter out top and bottom 5 rows to eliminate outliers
agri_data <- agg2_data %>%
  arrange(agri1c) %>%
  filter(row_number() > 5 & row_number() <= n()-5 )

# Clean Region Data
region_info_data <- sec0a_data %>%
                select(region, district, nh, clust, loc2, loc5, loc3)

# Get head of households
hh_head_data <- sec1_data %>%
                select(nh, clust, pid, rel) %>%
                filter(rel, rel == "1")



# Clean and filter community data
# Merge using columns region / district / eanum

#colnames(cs2_data)
infrastructure_data <- cs2_data %>%
  select(region, district, eanum, s2q4, s2q5, s2q8, s2q9, s2q10, s2q11, s2q25) %>%
  rename(motorable_road = s2q4, motorable_road_distance = s2q5, electricity_y_n = s2q8,
         electricity_most_few = s2q9, water_y_n = s2q10, water_most_few = s2q11, 
         public_transport_distance = s2q25)

#colnames(cs5b_data)
agricultural_practices_data <- cs5b_data %>%
  select(region, district, eanum, s5bq5, s5bq6, s5bq10, s5bq13, s5bq14, s5bq15, s5bq16, s5bq17) %>%
  rename(extension_centre = s5bq5, extension_centre_distance = s5bq6, cooperative = s5bq10,
         no_of_tractors = s5bq13, rice_husking_machine = s5bq14, chemical_fertilizer = s5bq15, 
         insecticides_herbicides = s5bq16, irrigated_fields = s5bq17)


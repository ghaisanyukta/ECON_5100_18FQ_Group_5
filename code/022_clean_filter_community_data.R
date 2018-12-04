# Clean and filter community data

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
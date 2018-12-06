
#education of head of household
educ_hh_head <- merge(x = hh_head_data, y = educ_data, by = c('nh','pid','clust'), all.x = TRUE )

# Education of each household using head of household
educ_head <- educ_hh_head %>%
              select(nh, clust, highest_educ_level)

# Merge aggricultural profit with education by household head 
agri_hh_educ <- merge(x = agri_data, y = educ_head, by = c('nh','clust'), all.x = TRUE) %>%
              select(nh, clust, agri1c, hh_highest_educ = highest_educ_level)

# Merge aggricultural profit with education by household head 
agri_educ <- merge(x = agri_hh_educ, y = highest_educ, by = c('nh','clust'), all.x = TRUE) %>%
  select(nh, clust, agri1c, hh_highest_educ, highest_educ_level)

#merge two dataframes
#educ_hh_head_region <- merge(educ_head, region_info_data, by=c("nh","clust"), all.x = TRUE)

# select only regions which is classified as Rural
region_info_data <- merge(x = region_info_data, y = loc2_data,
                          by = c("loc2"), all.x = TRUE)

# merge region and region_info_data to have good names
region_dist_data <- merge(x = region_info_data, y = region,
                          by = c("region", "district"), all.x = TRUE)

# Merge community data with the rest of the data using columns region / district / eanum
# merge community data frames cs2_data and cs5b_data to have redion's infrastructure and agricultural data

infrastructure_agricultural_practices_data <- merge(x = infrastructure_data, y = agricultural_practices_data,
                                                    by = c("region", "district", "eanum"), all = TRUE)

# merge income at household level data with education by household head
income_educ <- merge(x=agg4_data,y=educ_data, by = c('nh','clust'),all.x = TRUE) %>%
                            select(nh, clust, imprt, highest_educ_level)

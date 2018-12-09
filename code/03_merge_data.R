
#education of head of household
educ_hh_head <- merge(x = hh_head_data, y = educ_data, by = c('clust', 'nh','pid'), all.x = TRUE )

# drop irrelevant columns from "educ_hh_head"
# Education of each household using head of household
educ_head <- educ_hh_head %>%
              select(nh, clust, highest_educ_level)

# Merge aggricultural profit with education by household head 
agri_hh_educ <- merge(x = agri_data, y = educ_head, by = c('clust','nh'), all.x = TRUE) %>%
              select(nh, clust, agri1c, hh_highest_educ = highest_educ_level)

# Merge aggricultural profit with highest education in a household
agri_educ <- merge(x = agri_hh_educ, y = highest_educ, by = c('clust','nh'), all.x = TRUE) %>%
  select(nh, clust, agri1c, hh_highest_educ, highest_educ_level)

<<<<<<< HEAD
=======
# Merge agricultural profit with gender in a household head
agri_hh_gender <- merge(x= agri_hh_educ, y = gender_data, by = c('nh','clust'),all.x = TRUE) %>%
                        select(nh, clust, agri1c, sex)

# select only regions which is classified as Rural
# merge region and region_info_data to have good names
region_info_data <- merge(x = region_info_data, y = loc2_data,
                          by = c("loc2"), all.x = TRUE)
region_info_data <- merge(x = region_info_data, y = region,
                          by = c("region", "district"), all.x = TRUE) %>%
  select(nh, clust, region, district, region_name, district_name, locality)


>>>>>>> c405ff1a34d7488829b2dc1e6b20cb4bab45d14a
#merge two dataframes agri_educ with region_info_data (rural regions)
agri_educ_region <- merge(agri_educ, region_info_data, by=c("clust","nh"), all.x = TRUE)

# merge Actual and imputed rental income at household level data with agri_educ_region
agri_educ_region_income <- merge(x=agri_educ_region,y=agg4_data, by = c('clust','nh'),all.x = TRUE)

# Merge community data with the rest of the data using columns region / district / eanum
infrastructure_agricultural_practices_data <- merge(x = infrastructure_data, y = agricultural_practices_data,
                                                    by = c("region", "district", "eanum"), all = TRUE)

# Merge community with agri_educ_region_income 
agri_educ_region_income_community <- merge(x = agri_educ_region_income, 
                                                           y = infrastructure_agricultural_practices_data, by = c("region", "district", "eanum"), all.x = TRUE)


# Merge agri_educ_region_income_community with employment
agri_educ_region_income_community_employ <- merge(x = agri_educ_region_income_community,
                                                  y = empl_data, by = c('clust','nh'),all.x = TRUE)

  
  
  

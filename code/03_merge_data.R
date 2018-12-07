
#education of head of household
educ_hh_head <- merge(x = hh_head_data, y = educ_data, by = c('nh','pid','clust'), all.x = TRUE )

# drop irrelevant columns from "educ_hh_head"
# Education of each household using head of household
educ_head <- educ_hh_head %>%
              select(nh, clust, highest_educ_level)

# dataset 1 -- agriculture profit by educ of Household head
# Merge aggricultural profit with education by household head 
agri_hh_educ <- merge(x = agri_data, y = educ_head, by = c('nh','clust'), all.x = TRUE) %>%
              select(nh, clust, agri1c, hh_highest_educ = highest_educ_level)

# doubt : i think we should have 2 dataset, (1. agri profit by educ of HH head 
#                                           (2. agri profit by highest educ of HH not only head )
#                 (3. agri profit by combination of both above)

# this should be inner join instead of outer?????
# Merge aggricultural profit with education by household head 
agri_educ <- merge(x = agri_hh_educ, y = highest_educ, by = c('nh','clust'), all.x = TRUE) %>%
  select(nh, clust, agri1c, hh_highest_educ, highest_educ_level)

#merge two dataframes
#educ_hh_head_region <- merge(educ_head, region_info_data, by=c("nh","clust"), all.x = TRUE)

# select only regions which is classified as Rural
# merge region and region_info_data to have good names
region_info_data <- merge(x = region_info_data, y = loc2_data,
                          by = c("loc2"), all.x = TRUE)
region_info_data <- merge(x = region_info_data, y = region,
                          by = c("region", "district"), all.x = TRUE) %>%
  select(nh, clust, region, district, region_name, district_name, locality)

# Merge community data with the rest of the data using columns region / district / eanum
# merge community data frames cs2_data and cs5b_data to have redion's infrastructure and agricultural data

infrastructure_agricultural_practices_data <- merge(x = infrastructure_data, y = agricultural_practices_data,
                                                    by = c("region", "district", "eanum"), all = TRUE)

# merge income at household level data with education by household head
income_educ <- merge(x=agg4_data,y=educ_data, by = c('nh','clust'),all.x = TRUE) %>%
                            select(nh, clust, imprt, highest_educ_level)



# merging agri_hh_educ (agri prof by educ of hh head) with region_info_data (rural data with good names)
agri_hh_educ_rural <- merge(x = agri_hh_educ, y = region_info_data,
                            by = c("nh", "clust"))

##### merging agri_educ (agri prof by highest educ of hh not only head) with region_info_data (rural data with good names)
##### agri_educ_rural <- merge(x = agri_educ, y = region_info_data,
#####                            by = c("nh", "clust"))

# merging agri_hh_educ_rural with community practice data left outer join needed, below code not working
###agri_hh_educ_rural_com <- merge(x = agri_hh_educ_rural, y = infrastructure_agricultural_practices_data,
###                                by = c("region", "district"), all.x = TRUE)
  
  
  
  
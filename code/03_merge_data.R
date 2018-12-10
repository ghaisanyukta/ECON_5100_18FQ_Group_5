
#education of head of household
educ_hh_head <- merge(x = hh_head_data, y = educ_data, by = c('clust', 'nh','pid'), all.x = TRUE )

# Merge gender with household head
educ_gender_hh_head <- merge(x=educ_hh_head, y = gender_data, 
                        by = c("clust", "nh", "pid"), all.x = TRUE)

# Merge employment data
empl_data <- merge(x=empl_occupation_data,
                   y=empl_status_data, by = c('clust','nh', 'pid'),all.x = TRUE)

# Merge household head with employment of head
educ_gender_hh_head_employ <- merge(x = educ_gender_hh_head,
                                    y = empl_data, by = c('clust','nh', 'pid'),all.x = TRUE)

# Education of each household using head of household
# drop irrelevant columns from "educ_gender_hh_head_employ"
educ_gender_hh_head_employ <- educ_gender_hh_head_employ %>%
              select(nh, clust, highest_educ_level, is_male, employment_status)

# Merge aggricultural profit with education by household head 
agri_hh_educ_gender_employ <- merge(x = agri_data, y = educ_gender_hh_head_employ, by = c('clust','nh'), all.x = TRUE) %>%
              select(nh, clust, agri1c, hh_highest_educ = highest_educ_level, hh_is_male = is_male, employment_status)

# Merge aggricultural profit with highest education in an household
agri_educ_gender_employ <- merge(x = agri_hh_educ_gender_employ, y = highest_educ, by = c('clust','nh'), all.x = TRUE) %>%
            select(nh, clust, agri1c, hh_highest_educ, highest_educ_level, hh_is_male, employment_status)

#merge two dataframes agri_educ_gender_employ with region_info_data (rural regions)
agri_educ_gender_employ_region <- merge(agri_educ_gender_employ, region_info_data, by=c("clust","nh"), all.x = TRUE)

# merge Actual and imputed rental income at household level data with agri_educ_gender_employ_region
agri_educ_gender_employ_region_income <- merge(x=agri_educ_gender_employ_region,
                                               y=agg4_data, by = c('clust','nh'),all.x = TRUE)

# Distinct Region, District and eanums
#distinct_region_district_eanum <- distinct(region_info_data, region,district,eanum, .keep_all= TRUE)
                                  

# Merge infrastructure with region to get clust and nh
# infrastructure_data_region_farming <- merge(x=distinct_region_district_eanum,
#                                     y=infrastructure_data,
#                                     by=c('region','district','eanum'),
#                                     all.x = TRUE)
infrastructure_data_region_farming <- merge(x=infrastructure_data,
                                   y=region_info_data,
                                   by=c('region','district','eanum'),
                                   all.y = TRUE)
  
agricultural_practices_infrastructure_data_region <- merge(x=infrastructure_data_region_farming,
                                     y=agricultural_practices_data,
                                     by=c('region','district','eanum'),
                                     all.x = TRUE)

# Remove duplicates from agricultural_practices_infrastructure_data_region data
agricultural_practices_infrastructure_data_region <- agricultural_practices_infrastructure_data_region[
                                                    !duplicated(agricultural_practices_infrastructure_data_region), ]

# Merge agri_educ_gender_employ_region_income with infrastructure data
agri_educ_gender_employ_region_income_infra_agripractice <- merge(x=agri_educ_gender_employ_region_income,
                                               y= agricultural_practices_infrastructure_data_region, 
                                               by = c('clust','nh','eanum','region','district','ez','loc2'),
                                               all.x = TRUE)

base <- agri_educ_gender_employ_region_income_infra_agripractice %>%
  select(agri1c, hh_highest_educ, highest_educ_level, hh_is_male, employment_status, 
         imprt, motorable_road, electricity_y_n, water_y_n, public_transport_y_n,
         extension_centre, cooperative, no_of_tractors, rice_husking_machine, chemical_fertilizer,
         insecticides_herbicides, irrigated_fields, region, ez) %>%
  rename(agriculture_profit = agri1c) %>%
  drop_na()

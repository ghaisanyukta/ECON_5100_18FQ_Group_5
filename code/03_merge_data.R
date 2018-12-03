

educ_hh_head <- merge(x = hh_head_data, y = educ_data, by = c('nh','pid','clust'), all.x = TRUE )

#merge two dataframes
educ_hh_head_region <- merge(educ_hh_head, region_info_data, by=c("nh","clust"), all.x = TRUE)
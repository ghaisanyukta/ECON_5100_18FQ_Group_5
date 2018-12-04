# merge community data frames cs2_data and cs5b_data to have redion's infrastructure and agricultural data

infrastructure_agricultural_practices_data <- merge(x = infrastructure_data, y = agricultural_practices_data,
                                                    by = c("region", "district", "eanum"), all = TRUE)
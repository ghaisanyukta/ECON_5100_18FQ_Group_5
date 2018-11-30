hh_head_data <- sec1_data %>%
              select(nh, clust, pid, rel) %>%
              filter(rel, rel == "1")
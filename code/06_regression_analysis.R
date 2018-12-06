lm_agri_educ <- lm(agri1c~highest_educ_level, data = agri_educ)

res_lm_agri_educ <- resid(lm_agri_educ) # extract model residuals
std_res_lm_agri_educ <- rstandard(lm_agri_educ) #compute regression
fit_res_lm_agri_educ <- fitted(lm_agri_educ) # 

breaks <- pretty(range(std_res_lm_agri_educ), n = nclass.FD(std_res_lm_agri_educ), min.n = 1)
bwidth <- breaks[2]-breaks[1]
qplot(std_res_lm_agri_educ, 
      geom="histogram", 
      binwidth = bwidth)
ggplot(lm_agri_educ, 
       aes(x=fit_res_lm_agri_educ, y=std_res_lm_agri_educ)) +
  geom_point(shape=1) 
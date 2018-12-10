colnames(base)
model1 <- lm(log(agriculture_profit) ~ highest_educ_level
             + I(hh_highest_educ^2) + hh_is_male + empl_cash_crops_y
             + imputed_income + motorable_road_y + electricity_y + water_y
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + ez + farm_area_acres, data = base)
summary(model1)

res_model1 <- resid(model1) # extract model residuals
std_res_model1 <- rstandard(model1) #compute regression
fit_model1 <- fitted(model1) # 

breaks <- pretty(range(std_res_model1), n = nclass.FD(std_res_model1), min.n = 1)
bwidth <- breaks[2]-breaks[1]
qplot(std_res_model1, 
      geom="histogram", 
      binwidth = bwidth,
      xlab = "standardized residuals",
      ylab = "agricultural profit")
#xlab("Fitted Residuals"), ylab("Standardized Residuals"),
ggplot(model1, 
       aes(x=fit_model1, y=std_res_model1)) +
  geom_point(shape=1) 


# Analysis of dummies

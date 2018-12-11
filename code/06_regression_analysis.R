colnames(base)
model1 <- lm(log(agriculture_profit) ~ highest_educ_level
             + I(hh_highest_educ^2) + factor(hh_is_male) + factor(empl_cash_crops_y)
             + imputed_income + motorable_road_y + electricity_y + factor(water_y)
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + factor(ez) + farm_area_acres, data = base)
summary(model1)

summary(model1)$r.squared
summary(model1)$coef

res_model1 <- resid(model1) # extract model residuals
std_res_model1 <- rstandard(model1) #compute regression
fit_model1 <- fitted(model1) # 

breaks1 <- pretty(range(std_res_model1), n = nclass.FD(std_res_model1), min.n = 1)
bwidth1 <- breaks1[2]-breaks1[1]
qplot(std_res_model1, 
      geom="histogram", 
      binwidth = bwidth1,
      xlab = "standardized residuals",
      ylab = "agricultural profit")
ggsave(here("figures", "Standardized_Histogram_1.pdf"))

#xlab("Fitted Residuals"), ylab("Standardized Residuals"),
ggplot(model1, 
       aes(x=fit_model1, y=std_res_model1)) +
  geom_point(shape=1) 
ggsave(here("figures", "Residuals_VS_Fitted_1.pdf"))

# Analysis of dummies
# Our Hedonic Equation Coefficients
b0 <- coef(model1)["(Intercept)"]
b1 <- coef(model1)["base$highest_educ_level"]
b2 <- coef(model1)["base$I(hh_highest_educ^2)"]
b3 <- coef(model1)["base$hh_is_male"]
b4 <- coef(model1)["base$empl_cash_crops_y"]
b5 <- coef(model1)["base$imputed_income"]
b6 <- coef(model1)["base$motorable_road_y"]
b7 <- coef(model1)["base$electricity_y"]
b8 <- coef(model1)["base$water_y"]
b9 <- coef(model1)["base$public_transport_y"]
b10 <- coef(model1)["base$extension_centre_y"]
b11 <- coef(model1)["base$cooperative_y"]
b12 <- coef(model1)["base$no_of_tractors"]
b13 <- coef(model1)["base$insecticides_herbicides_y"]
b14 <- coef(model1)["base$rice_husking_machine_y"]
b15 <- coef(model1)["base$chemical_fertilizer_y"]
b16 <- coef(model1)["base$irrigated_fields_y"]
b17 <- coef(model1)["base$region"]
b18 <- coef(model1)["base$ez"]
b19 <- coef(model1)["base$farm_area_acres"]

# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * ez + b19 * farm_area_acres

# model without hh_is_male
model2a <- lm(log(agriculture_profit) ~ highest_educ_level
                      + I(hh_highest_educ^2) + empl_cash_crops_y
                      + imputed_income + motorable_road_y + electricity_y + water_y
                      + public_transport_y + extension_centre_y + cooperative_y
                      + no_of_tractors + insecticides_herbicides_y
                      + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
                      + region + ez + farm_area_acres, data = base)
summary(model2a)
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * 0 + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * ez + b19 * farm_area_acres

summary(model2a)$r.squared
summary(model2a)$coef

res_model2a <- resid(model2a) # extract model residuals
std_res_model2a <- rstandard(model2a) #compute regression
fit_model2a <- fitted(model2a) # 

breaks2a <- pretty(range(std_res_model2a), n = nclass.FD(std_res_model2a), min.n = 1)
bwidth2a <- breaks2a[2]-breaks2a[1]
qplot(std_res_model2a, 
      geom="histogram", 
      binwidth = bwidth2a,
      xlab = "standardized residuals",
      ylab = "agricultural profit")
ggsave(here("figures", "Standardized_Histogram_2a.pdf"))

#xlab("Fitted Residuals"), ylab("Standardized Residuals"),
ggplot(model2a, 
       aes(x=fit_model2a, y=std_res_model2a)) +
  geom_point(shape=1) 
ggsave(here("figures", "Residuals_VS_Fitted_2a.pdf"))


# model with extra effect of hh_is_male
model2b <- lm(log(agriculture_profit) ~ highest_educ_level
             + hh_is_male * I(hh_highest_educ^2) + empl_cash_crops_y
             + imputed_income + motorable_road_y + electricity_y + water_y
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + ez + farm_area_acres, data = base)
summary(model2b)
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * 1 + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * ez + b19 * farm_area_acres
#                           + b20 * 1 * hh_highest_educ^2

summary(model2b)$r.squared
summary(model2b)$coef

res_model2b <- resid(model2b) # extract model residuals
std_res_model2b <- rstandard(model2b) #compute regression
fit_model2b <- fitted(model2b) # 

breaks2b <- pretty(range(std_res_model2b), n = nclass.FD(std_res_model2b), min.n = 1)
bwidth2b <- breaks2b[2]-breaks2b[1]
qplot(std_res_model2b, 
      geom="histogram", 
      binwidth = bwidth2b,
      xlab = "standardized residuals",
      ylab = "agricultural profit")
ggsave(here("figures", "Standardized_Histogram_2b.pdf"))

#xlab("Fitted Residuals"), ylab("Standardized Residuals"),
ggplot(model2b, 
       aes(x=fit_model2b, y=std_res_model2b)) +
  geom_point(shape=1) 
ggsave(here("figures", "Residuals_VS_Fitted_2b.pdf"))


# model without water_y
model3a <- lm(log(agriculture_profit) ~ highest_educ_level
             + I(hh_highest_educ^2) + hh_is_male + empl_cash_crops_y
             + imputed_income + motorable_road_y + electricity_y
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + ez + farm_area_acres, data = base)
summary(model3a)
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * 0
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * ez + b19 * farm_area_acres

# model without empl_cash_crops_y
model4 <- lm(log(agriculture_profit) ~ highest_educ_level
             + I(hh_highest_educ^2) + hh_is_male 
             + imputed_income + motorable_road_y + electricity_y + water_y
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + ez + farm_area_acres, data = base)
summary(model4)
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * 0 + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * ez + b19 * farm_area_acres

# model with different ez
# Consider ez = 3 as the Case 0
# variable ez_a: 1 if 1, else 0
# variable ez_b: 1 if 2, else 0
base2 <- base %>%
  mutate(ez_1 = if_else((ez == 1), 1, 0),
         ez_2 = if_else((ez == 2), 1, 0))

model5 <- lm(log(agriculture_profit) ~ highest_educ_level
             + I(hh_highest_educ^2) + hh_is_male + empl_cash_crops_y
             + imputed_income + motorable_road_y + electricity_y + water_y
             + public_transport_y + extension_centre_y + cooperative_y
             + no_of_tractors + insecticides_herbicides_y
             + rice_husking_machine_y + chemical_fertilizer_y + irrigated_fields_y
             + region + ez_1 + ez_2 + farm_area_acres, data = base)
summary(model5)

# ez is 1
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * 1 + b19 * 0
#                           + b20 * farm_area_acres

# ez is 2
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * 0 + b19 * 1
#                           + b20 * farm_area_acres

# ez is 3
# equation would be log(y) = b0 + b1 * highest_educ_level + b2 * hh_highest_educ^2 
#                           + b3 * hh_is_male + b4 * empl_cash_crops_y + b5 * imputed_income 
#                           + b6 * motorable_road_y + b7 * electricity_y + b8 * water_y
#                           + b9 * public_transport_y + b10 * extension_centre_y + b11 * cooperative_y
#                           + b12 * no_of_tractors + b13 * insecticides_herbicides_y 
#                           + b14 * rice_husking_machine_y + b15 * chemical_fertilizer_y 
#                           + b16 * irrigated_fields_y + b17 * region + b18 * 0 + b19 * 0
#                           + b20 * farm_area_acres





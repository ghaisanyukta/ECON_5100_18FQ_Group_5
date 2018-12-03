# creating new data frame
region <- data.frame(matrix(ncol = 4, nrow = 0))
x <- c("region_id", "district_id", "region_name", "district_name")
colnames(region) <- x

# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 01,
                                   "region_name" = "Western Region",
                                   "district_name" = "Jomoro"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 02,
                                   "region_name" = "Western Region",
                                   "district_name" = "Nzema"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 03,
                                   "region_name" = "Western Region",
                                   "district_name" = "Ahanta West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 04,
                                   "region_name" = "Western Region",
                                   "district_name" = "Shama-Ahanta East"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 05,
                                   "region_name" = "Western Region",
                                   "district_name" = "Mpohor-Wassa East"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 06,
                                   "region_name" = "Western Region",
                                   "district_name" = "Wassa West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 07,
                                   "region_name" = "Western Region",
                                   "district_name" = "Wassa Amemfi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 08,
                                   "region_name" = "Western Region",
                                   "district_name" = "Aowin-Suaman"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 09,
                                   "region_name" = "Western Region",
                                   "district_name" = "Juabeso-Bia"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 10,
                                   "region_name" = "Western Region",
                                   "district_name" = "Sefwi-Wiawso"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 11,
                                   "region_name" = "Western Region",
                                   "district_name" = "Bibiani/Anhwiaso/Wekwai"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 01,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Komenda/Edina/Eguafo/Abirem"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 02,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Cape coast"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 03,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Abura/Asebu Kwamankese"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 04,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Mfantsiman"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 05,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Gomoa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 06,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Awutu/Efutu Senya"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 07,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Agona"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 08,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Asikuma/Odoben/Brakwa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 09,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Ajumako/Enyan/Essiam"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 10,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Assin"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 11,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Twifo/Heman/Lower Denkyira"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 02,
                                   "district_id" = 12,
                                   "region_name" = "CENTRAL Region",
                                   "district_name" = "Upper Denkyira"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 01,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "South Tongu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 02,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Keta"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 03,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Ketu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 04,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Akatsi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 05,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "North Tongu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 06,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Ho"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 07,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Hohoe"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 08,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Kpandu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 09,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Jasikan"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 10,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Kadjebi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 11,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Nkwanta"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 05,
                                   "district_id" = 12,
                                   "region_name" = "VOLTA Region",
                                   "district_name" = "Krachi"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 01,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Bole"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 02,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "West Gonja"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 03,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "East Gonja"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 04,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Nanumba"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 05,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Zabzugu-Tatale"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 06,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Chereponi-Saboba"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 07,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Yendi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 08,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Gushiegu-Karaga"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 09,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Savelugu-Nanton"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 10,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Tamale"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 11,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "Tolon-Kumbungu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 12,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "West Mamprusi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 08,
                                   "district_id" = 13,
                                   "region_name" = "NORTHERN Region",
                                   "district_name" = "East mamprusi"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 01,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Asunafo"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 02,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Asutifi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 03,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Tanaso"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 04,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Sunyani"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 05,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Dormaa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 06,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Jaman"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 07,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Berekum"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 08,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Wenchi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 09,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Techiman"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 10,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Nkroranza"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 11,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Kintampo"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 12,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Atebubu"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 07,
                                   "district_id" = 13,
                                   "region_name" = "BRONG AHAFO Region",
                                   "district_name" = "Sene"))
#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 01,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Birim North"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 02,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Birim South"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 03,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "West Akim"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 04,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Kwaebibirem"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 05,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Suhum/Kraboa/Coaltar"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 06,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "East Akim"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 07,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Fanteakwa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 08,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "New Juaben"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 09,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Akwapim South"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 10,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Akwapim North"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 11,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Yilo Krobo"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 12,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Manya Krobo"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 13,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Asuagyaman"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 14,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Afram Plains"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 04,
                                   "district_id" = 15,
                                   "region_name" = "EASTERN Region",
                                   "district_name" = "Kwahu South"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 01,
                                   "region_name" = "GREATER ACCRA Region",
                                   "district_name" = "Accra"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 02,
                                   "region_name" = "GREATER ACCRA Region",
                                   "district_name" = "Ga"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 03,
                                   "region_name" = "GREATER ACCRA Region",
                                   "district_name" = "Tema"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 04,
                                   "region_name" = "GREATER ACCRA Region",
                                   "district_name" = "Dangbe West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 03,
                                   "district_id" = 05,
                                   "region_name" = "GREATER ACCRA Region",
                                   "district_name" = "Dangbe East"))
#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 09,
                                   "district_id" = 01,
                                   "region_name" = "UPPER WEST Region",
                                   "district_name" = "Wa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 09,
                                   "district_id" = 01,
                                   "region_name" = "UPPER WEST Region",
                                   "district_name" = "Nadowli"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 09,
                                   "district_id" = 01,
                                   "region_name" = "UPPER WEST Region",
                                   "district_name" = "Sissala"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 09,
                                   "district_id" = 01,
                                   "region_name" = "UPPER WEST Region",
                                   "district_name" = "Jirapah-Lambussie"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 09,
                                   "district_id" = 01,
                                   "region_name" = "UPPER WEST Region",
                                   "district_name" = "Lawra"))

#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 01,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Builsa"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 02,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Kassena-Nankani"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 03,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Bongo"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 04,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Bolgatanga"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 05,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Bawku West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 10,
                                   "district_id" = 06,
                                   "region_name" = "UPPER EAST Region",
                                   "district_name" = "Bawku East"))
#------------------------------
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 01,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Atwima"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 02,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Amansie West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 03,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Amansie East"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 04,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Adansi West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 05,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Adansi East"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 06,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Asante Akim South"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 07,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Asante Akim North"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 08,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Ejisu Juaben"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 09,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Bosomtwi/Atwima/Kwanwoma"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 10,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Kumasi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 11,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Afigya/Kwabre"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 12,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Afigya Sekyere"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 13,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Sekyere East"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 14,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Sekyere West"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 15,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Ejisu/Sekyedumasi"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 16,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Offinso"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 17,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Ahafo Ano South"))
# adding rows to dataframe
region <- rbind(region, data.frame("region_id" = 06,
                                   "district_id" = 18,
                                   "region_name" = "ASHANTI Region",
                                   "district_name" = "Ahafo Ano North"))


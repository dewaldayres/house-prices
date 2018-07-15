
# ==========
# map zoning 
# ==========

data_mapping_zoning <- function(df) {
  
  df$MSZoning[df$MSZoning=="A"] <- "Agriculture"
  df$MSZoning[df$MSZoning=="C"] <- "Commercial"
  df$MSZoning[df$MSZoning=="FV"] <- "Floating Village Residential"
  df$MSZoning[df$MSZoning=="I"] <- "Industrial"
  df$MSZoning[df$MSZoning=="RH"] <- "Residential High Density"
  df$MSZoning[df$MSZoning=="RL"] <- "Residential Low Density"
  df$MSZoning[df$MSZoning=="RP"] <- "Residential Low Density Park"
  df$MSZoning[df$MSZoning=="RM"] <- "Residential Medium Density"
  
  return(df)
}

# ==========
# map street 
# ==========

data_mapping_street <- function(df) {
  
  df$Street[df$Street=="Grvl"] <- "Gravel"
  df$Street[df$Street=="Pave"] <- "Paved"
  
  return(df)
}

# =========
# map alley 
# =========

data_mapping_alley <- function(df) {
  
  df$Alley[df$Alley=="Grvl"] <- "Gravel"
  df$Alley[df$Alley=="Pave"] <- "Paved"
  df$Alley[is.na(df$Alley)] <- "No alley"
  
  return(df)
}

# =============
# map lot shape 
# =============

data_mapping_lot_shape <- function(df) {
  
  df$LotShape[df$LotShape=="Reg"] <- "Regular"
  df$LotShape[df$LotShape=="IR1"] <- "Slightly irregular"
  df$LotShape[df$LotShape=="IR2"] <- "Moderately Irregular"
  df$LotShape[df$LotShape=="IR3"] <- "Irregular"
  
  return(df)
}

# =============
# map lot shape 
# =============

data_mapping_land_contour <- function(df) {
  
  df$LandContour[df$LandContour=="Lvl"] <- "Near Flat/Level"
  df$LandContour[df$LandContour=="Bnk"] <- "Banked - Quick and significant rise from street grade to building"
  df$LandContour[df$LandContour=="HLS"] <- "Hillside - Significant slope from side to side"
  df$LandContour[df$LandContour=="Low"] <- "Depression"
  
  return(df)
}

# =============
# map utilities 
# =============

data_mapping_utilities <- function(df) {
  
  df$Utilities[df$Utilities=="AllPub"] <- "All public Utilities (E,G,W,& S)"
  df$Utilities[df$Utilities=="NoSewr"] <- "Electricity, Gas, and Water (Septic Tank)"
  df$Utilities[df$Utilities=="NoSeWa"] <- "Electricity and Gas Only"
  df$Utilities[df$Utilities=="ELO"] <- "Electricity only"
  
  return(df)
}

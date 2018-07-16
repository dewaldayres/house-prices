
# ==========
# map zoning 
# ==========

data_mapping_zoning <- function(df) {
  
  df$zoning[df$zoning=="A"] <- "Agriculture"
  df$zoning[df$zoning=="C (all)"] <- "Commercial"
  df$zoning[df$zoning=="FV"] <- "Floating Village Residential"
  df$zoning[df$zoning=="I"] <- "Industrial"
  df$zoning[df$zoning=="RH"] <- "Residential High Density"
  df$zoning[df$zoning=="RL"] <- "Residential Low Density"
  df$zoning[df$zoning=="RP"] <- "Residential Low Density Park"
  df$zoning[df$zoning=="RM"] <- "Residential Medium Density"
  
  return(df)
}

# ==========
# map street 
# ==========

data_mapping_street <- function(df) {
  
  df$street[df$street=="Grvl"] <- "Gravel"
  df$street[df$street=="Pave"] <- "Paved"
  
  return(df)
}

# =========
# map alley 
# =========

data_mapping_alley <- function(df) {
  
  df$alley[df$alley=="Grvl"] <- "Gravel"
  df$alley[df$alley=="Pave"] <- "Paved"
  df$alley[is.na(df$alley)] <- "No alley"
  
  return(df)
}

# =============
# map lot shape 
# =============

data_mapping_lot_shape <- function(df) {
  
  df$lot_shape[df$lot_shape=="Reg"] <- "Regular"
  df$lot_shape[df$lot_shape=="IR1"] <- "Slightly irregular"
  df$lot_shape[df$lot_shape=="IR2"] <- "Moderately Irregular"
  df$lot_shape[df$lot_shape=="IR3"] <- "Irregular"
  
  return(df)
}

# ================
# map land contour
# ================

data_mapping_land_contour <- function(df) {
  
  df$land_contour[df$land_contour=="Lvl"] <- "Near Flat/Level"
  df$land_contour[df$land_contour=="Bnk"] <- "Banked - Quick and significant rise from street grade to building"
  df$land_contour[df$land_contour=="HLS"] <- "Hillside - Significant slope from side to side"
  df$land_contour[df$land_contour=="Low"] <- "Depression"
  
  return(df)
}

# =============
# map utilities 
# =============

data_mapping_utilities <- function(df) {
  
  df$utilities[df$utilities=="AllPub"] <- "All public Utilities (E,G,W,& S)"
  df$utilities[df$utilities=="NoSewr"] <- "Electricity, Gas, and Water (Septic Tank)"
  df$utilities[df$utilities=="NoSeWa"] <- "Electricity and Gas Only"
  df$utilities[df$utilities=="ELO"] <- "Electricity only"
  
  return(df)
}

# ==============
# map lot config 
# ==============

data_mapping_lot_config <- function(df) {
  
  df$lot_config[df$lot_config=="Inside"] <- "Inside lot"
  df$lot_config[df$lot_config=="Corner"] <- "Corner lot"
  df$lot_config[df$lot_config=="CulDSac"] <- "Cul-de-sac"
  df$lot_config[df$lot_config=="FR2"] <- "Frontage on 2 sides of property"
  df$lot_config[df$lot_config=="FR3"] <- "Frontage on 3 sides of property"
  
  return(df)
}

# ==============
# map land slope
# ==============

data_mapping_land_slope <- function(df) {
  
  df$land_slope[df$land_slope=="Gtl"] <- "Gentle slope"
  df$land_slope[df$land_slope=="Mod"] <- "Moderate Slope"
  df$land_slope[df$land_slope=="Sev"] <- "Severe Slope"

  return(df)
}

# =================
# map neighbourhood
# =================

data_mapping_neighbourhood <- function(df) {
  
  df$neighbourhood[df$neighbourhood=="Blmngtn"] <- "Bloomington Heights"
  df$neighbourhood[df$neighbourhood=="Blueste"] <- "Bluestem"
  df$neighbourhood[df$neighbourhood=="BrDale"] <- "Briardale"
  df$neighbourhood[df$neighbourhood=="BrkSide"] <- "Brookside"
  df$neighbourhood[df$neighbourhood=="ClearCr"] <- "Clear Creek"
  df$neighbourhood[df$neighbourhood=="CollgCr"] <- "College Creek"
  df$neighbourhood[df$neighbourhood=="Crawfor"] <- "Crawford"
  df$neighbourhood[df$neighbourhood=="Edwards"] <- "Edwards"
  df$neighbourhood[df$neighbourhood=="Gilbert"] <- "Gilbert"
  df$neighbourhood[df$neighbourhood=="IDOTRR"] <- "Iowa DOT and Rail Road"
  df$neighbourhood[df$neighbourhood=="MeadowV"] <- "Meadow Village"
  df$neighbourhood[df$neighbourhood=="Mitchel"] <- "Mitchell"
  df$neighbourhood[df$neighbourhood=="Names"] <- "North Ames"
  df$neighbourhood[df$neighbourhood=="NoRidge"] <- "Northridge"
  df$neighbourhood[df$neighbourhood=="NPkVill"] <- "Northpark Villa"
  df$neighbourhood[df$neighbourhood=="NridgHt"] <- "Northridge Heights"
  df$neighbourhood[df$neighbourhood=="NWAmes"] <- "Northwest Ames"
  df$neighbourhood[df$neighbourhood=="OldTown"] <- "Old Town"
  df$neighbourhood[df$neighbourhood=="SWISU"] <- "South & West of Iowa State University"
  df$neighbourhood[df$neighbourhood=="Sawyer"] <- "Sawyer"
  df$neighbourhood[df$neighbourhood=="SawyerW"] <- "Sawyer West"
  df$neighbourhood[df$neighbourhood=="Somerst"] <- "Somerset"
  df$neighbourhood[df$neighbourhood=="StoneBr"] <- "Stone Brook"
  df$neighbourhood[df$neighbourhood=="Timber"] <- "Timberland"
  df$neighbourhood[df$neighbourhood=="Veenker"] <- "Veenker"

  return(df)
}

# ===============
# map condition 1
# ===============

data_mapping_condition_1 <- function(df) {
  
  df$condition_1[df$condition_1=="Artery"] <- "Adjacent to arterial street"
  df$condition_1[df$condition_1=="Feedr"] <- "Adjacent to feeder street"
  df$condition_1[df$condition_1=="Norm"] <- "Normal"
  df$condition_1[df$condition_1=="RRNn"] <- "Within 200 ft of North-South Railroad"
  df$condition_1[df$condition_1=="RRAn"] <- "Adjacent to North-South Railroad"
  df$condition_1[df$condition_1=="PosN"] <- "Near positive off-site feature--park, greenbelt, etc."
  df$condition_1[df$condition_1=="PosA"] <- "Adjacent to postive off-site feature"
  df$condition_1[df$condition_1=="RRNe"] <- "Within 200 ft of East-West Railroad"
  df$condition_1[df$condition_1=="RRAe"] <- "Adjacent to East-West Railroad"
  
  return(df)
}

# ===============
# map condition 2
# ===============

data_mapping_condition_2 <- function(df) {
  
  df$condition_2[df$condition_2=="Artery"] <- "Adjacent to arterial street"
  df$condition_2[df$condition_2=="Feedr"] <- "Adjacent to feeder street"
  df$condition_2[df$condition_2=="Norm"] <- "Normal"
  df$condition_2[df$condition_2=="RRNn"] <- "Within 200 ft of North-South Railroad"
  df$condition_2[df$condition_2=="RRAn"] <- "Adjacent to North-South Railroad"
  df$condition_2[df$condition_2=="PosN"] <- "Near positive off-site feature--park, greenbelt, etc."
  df$condition_2[df$condition_2=="PosA"] <- "Adjacent to postive off-site feature"
  df$condition_2[df$condition_2=="RRNe"] <- "Within 200 ft of East-West Railroad"
  df$condition_2[df$condition_2=="RRAe"] <- "Adjacent to East-West Railroad"

  return(df)
}


	
	
		
	
	
	
	
	
	


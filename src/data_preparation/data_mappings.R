
# =========================
# perform all data mappings 
# =========================

data_mappings <- function(df) {
  
  df <- data_mapping_zoning(df)
  df <- data_mapping_street(df)
  df <- data_mapping_alley(df)
  df <- data_mapping_lot_shape(df)
  df <- data_mapping_land_contour(df)
  df <- data_mapping_utilities(df)
  df <- data_mapping_lot_config(df)
  df <- data_mapping_land_slope(df)
  df <- data_mapping_neighbourhood(df)
  df <- data_mapping_condition_1(df)
  df <- data_mapping_condition_2(df)
  df <- data_mapping_dwelling_type(df)
  df <- data_mapping_house_style(df)
  df <- data_mapping_roof_style(df)
  df <- data_mapping_roof_material(df)
  df <- data_mapping_ext_covering_1(df)
  df <- data_mapping_ext_covering_2(df)
  df <- data_mapping_masonry_veneer_type(df)
  df <- data_mapping_exterior_quality(df)
  df <- data_mapping_exterior_condition(df)
  df <- data_mapping_foundation(df)
  df <- data_mapping_basement_quality(df)
  df <- data_mapping_basement_condition(df)
  df <- data_mapping_basement_exposure(df)
  df <- data_mapping_basement_rating(df)
  df <- data_mapping_heating(df)
  df <- data_mapping_heating_quality(df)
  df <- data_mapping_central_air(df)
  df <- data_mapping_electrical(df)
  df <- data_mapping_kitchen_quality(df)
  df <- data_mapping_functionality(df)
  df <- data_mapping_fireplace_quality(df)
  df <- data_mapping_garage_type(df)
  df <- data_mapping_garage_finish(df)
  df <- data_mapping_garage_quality_condition(df)
  df <- data_mapping_paved_driveway(df)
  df <- data_mapping_pool_quality(df)
  df <- data_mapping_fence_quality(df)
  df <- data_mapping_misc_features(df)
  df <- data_mapping_sale_type(df)
  df <- data_mapping_sale_condition(df)
  
  return(df)
}

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
  
  df$land_contour[df$land_contour=="Lvl"] <- "Near Level"
  df$land_contour[df$land_contour=="Bnk"] <- "Banked"
  df$land_contour[df$land_contour=="HLS"] <- "Hillside"
  df$land_contour[df$land_contour=="Low"] <- "Depression"
  
  return(df)
}

# =============
# map utilities 
# =============

data_mapping_utilities <- function(df) {
  
  df$utilities[df$utilities=="AllPub"] <- "All Utilities"
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
  df$lot_config[df$lot_config=="FR2"] <- "Frontage on 2 sides"
  df$lot_config[df$lot_config=="FR3"] <- "Frontage on 3 sides"
  
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

# =================
# map dwelling type
# =================

data_mapping_dwelling_type <- function(df) {
  
  df$dwelling_type[df$dwelling_type=="1Fam"] <- "Single-family Detached"
  df$dwelling_type[df$dwelling_type=="2fmCon"] <- "Two-family Conversion"
  df$dwelling_type[df$dwelling_type=="Duplx"] <- "Duplex"
  df$dwelling_type[df$dwelling_type=="TwnhsE"] <- "Townhouse End Unit"
  df$dwelling_type[df$dwelling_type=="TwnhsI"] <- "Townhouse Inside Unit"

  return(df)
}

# ===============
# map house style
# ===============

data_mapping_house_style <- function(df) {
  
  df$house_style[df$house_style=="1Story"] <- "One story"
  df$house_style[df$house_style=="1.5Fin"] <- "One and one-half story: 2nd level finished"
  df$house_style[df$house_style=="1.5Unf"] <- "One and one-half story: 2nd level unfinished"
  df$house_style[df$house_style=="2Story"] <- "Two story"
  df$house_style[df$house_style=="2.5Fin"] <- "Two and one-half story: 2nd level finished"
  df$house_style[df$house_style=="2.5Unf"] <- "Two and one-half story: 2nd level unfinished"
  df$house_style[df$house_style=="SFoyer"] <- "Split Foyer"
  df$house_style[df$house_style=="SLvl"] <- "Split Level"
  
  return(df)
}

# ==============
# map roof style
# ==============

data_mapping_roof_style <- function(df) {
  
  df$roof_style[df$roof_style=="Flat"] <- "Flat"
  df$roof_style[df$roof_style=="Gable"] <- "Gable"
  df$roof_style[df$roof_style=="Gambrel"] <- "Gabrel (Barn)"
  df$roof_style[df$roof_style=="Hip"] <- "Hip"
  df$roof_style[df$roof_style=="Mansard"] <- "Mansard"
  df$roof_style[df$roof_style=="Shed"] <- "Shed"

  return(df)
}

# =================
# map roof material
# =================

data_mapping_roof_material <- function(df) {
  
  df$roof_material[df$roof_material=="ClyTile"] <- "Clay or Tile"
  df$roof_material[df$roof_material=="CompShg"] <- "Standard Shingle"
  df$roof_material[df$roof_material=="Membran"] <- "Membrane"
  df$roof_material[df$roof_material=="Metal"] <- "Metal"
  df$roof_material[df$roof_material=="Roll"] <- "Roll"
  df$roof_material[df$roof_material=="Tar&Grv"] <- "Gravel & Tar"
  df$roof_material[df$roof_material=="WdShake"] <- "Wood Shakes"
  df$roof_material[df$roof_material=="WdShngl"] <- "Wood Shingles"

  return(df)
}

# =======================
# map exterior covering 1
# =======================

data_mapping_ext_covering_1 <- function(df) {
  
  df$ext_covering_1[df$ext_covering_1=="AsbShng"] <- "Asbestos Shingles"
  df$ext_covering_1[df$ext_covering_1=="AsphShn"] <- "Asphalt Shingles"
  df$ext_covering_1[df$ext_covering_1=="BrkComm"] <- "Brick Common"
  df$ext_covering_1[df$ext_covering_1=="BrkFace"] <- "Brick Face"
  df$ext_covering_1[df$ext_covering_1=="CBlock"] <- "Cinder Block"
  df$ext_covering_1[df$ext_covering_1=="CemntBd"] <- "Cement Board"
  df$ext_covering_1[df$ext_covering_1=="HdBoard"] <- "Hard Board"
  df$ext_covering_1[df$ext_covering_1=="ImStucc"] <- "Imitation Stucco"
  df$ext_covering_1[df$ext_covering_1=="MetalSd"] <- "Metal Siding"
  df$ext_covering_1[df$ext_covering_1=="Other"] <- "Other"
  df$ext_covering_1[df$ext_covering_1=="Plywood"] <- "Plywood"
  df$ext_covering_1[df$ext_covering_1=="PreCast"] <- "PreCast"
  df$ext_covering_1[df$ext_covering_1=="Stone"] <- "Stone"
  df$ext_covering_1[df$ext_covering_1=="Stucco"] <- "Stucco"
  df$ext_covering_1[df$ext_covering_1=="VinylSd"] <- "Vinyl Siding"
  df$ext_covering_1[df$ext_covering_1=="Wd Sdng"] <- "Wood Siding"
  df$ext_covering_1[df$ext_covering_1=="WdShing"] <- "	Wood Shingles"

  return(df)
}

# =======================
# map exterior covering 2
# =======================

data_mapping_ext_covering_2 <- function(df) {
  
  df$ext_covering_2[df$ext_covering_2=="AsbShng"] <- "Asbestos Shingles"
  df$ext_covering_2[df$ext_covering_2=="AsphShn"] <- "Asphalt Shingles"
  df$ext_covering_2[df$ext_covering_2=="BrkComm"] <- "Brick Common"
  df$ext_covering_2[df$ext_covering_2=="BrkFace"] <- "Brick Face"
  df$ext_covering_2[df$ext_covering_2=="CBlock"] <- "Cinder Block"
  df$ext_covering_2[df$ext_covering_2=="CemntBd"] <- "Cement Board"
  df$ext_covering_2[df$ext_covering_2=="HdBoard"] <- "Hard Board"
  df$ext_covering_2[df$ext_covering_2=="ImStucc"] <- "Imitation Stucco"
  df$ext_covering_2[df$ext_covering_2=="MetalSd"] <- "Metal Siding"
  df$ext_covering_2[df$ext_covering_2=="Other"] <- "Other"
  df$ext_covering_2[df$ext_covering_2=="Plywood"] <- "Plywood"
  df$ext_covering_2[df$ext_covering_2=="PreCast"] <- "PreCast"
  df$ext_covering_2[df$ext_covering_2=="Stone"] <- "Stone"
  df$ext_covering_2[df$ext_covering_2=="Stucco"] <- "Stucco"
  df$ext_covering_2[df$ext_covering_2=="VinylSd"] <- "Vinyl Siding"
  df$ext_covering_2[df$ext_covering_2=="Wd Sdng"] <- "Wood Siding"
  df$ext_covering_2[df$ext_covering_2=="Wd Shng"] <- "Wood Shingles"
  
  return(df)
}

# =======================
# map masonry veneer type
# =======================

data_mapping_masonry_veneer_type <- function(df) {
  
  df$masonry_veneer_type[df$masonry_veneer_type=="BrkCmn"] <- "Brick Common"
  df$masonry_veneer_type[df$masonry_veneer_type=="BrkFace"] <- "Brick Face"
  df$masonry_veneer_type[df$masonry_veneer_type=="CBlock"] <- "Cinder Block"
  df$masonry_veneer_type[df$masonry_veneer_type=="None"] <- "None"
  df$masonry_veneer_type[df$masonry_veneer_type=="Stone"] <- "Stone"

  return(df)
}

# ====================
# map exterior quality
# ====================

data_mapping_exterior_quality <- function(df) {
  
  df$ext_quality[df$ext_quality=="Ex"] <- "Excellent"
  df$ext_quality[df$ext_quality=="Gd"] <- "Good"
  df$ext_quality[df$ext_quality=="TA"] <- "Average"
  df$ext_quality[df$ext_quality=="Fa"] <- "Fair"
  df$ext_quality[df$ext_quality=="Po"] <- "Poor"
  
  return(df)
}

# ======================
# map exterior condition
# ======================

data_mapping_exterior_condition <- function(df) {
  
  df$ext_condition[df$ext_condition=="Ex"] <- "Excellent"
  df$ext_condition[df$ext_condition=="Gd"] <- "Good"
  df$ext_condition[df$ext_condition=="TA"] <- "Average"
  df$ext_condition[df$ext_condition=="Fa"] <- "Fair"
  df$ext_condition[df$ext_condition=="Po"] <- "Poor"
  
  return(df)
}

# ==============
# map foundation
# ==============

data_mapping_foundation <- function(df) {
  
  df$foundation[df$foundation=="BrkTil"] <- "Brick & Tile"
  df$foundation[df$foundation=="CBlock"] <- "Cinder Block"
  df$foundation[df$foundation=="PConc"] <- "Poured Contrete"
  df$foundation[df$foundation=="Slab"] <- "Slab"
  df$foundation[df$foundation=="Stone"] <- "Stone"
  df$foundation[df$foundation=="Wood"] <- "Wood"
  
  return(df)
}

# ====================
# map basement quality
# ====================

data_mapping_basement_quality <- function(df) {
  
  df$basement_quality[df$basement_quality=="Ex"] <- "Excellent"
  df$basement_quality[df$basement_quality=="Gd"] <- "Good"
  df$basement_quality[df$basement_quality=="TA"] <- "Average"
  df$basement_quality[df$basement_quality=="Fa"] <- "Fair"
  df$basement_quality[df$basement_quality=="Po"] <- "Poor"
  df$basement_quality[is.na(df$basement_quality)] <- "No Basement"

  return(df)
}

# ======================
# map basement condition
# ======================

data_mapping_basement_condition <- function(df) {
  
  df$basement_condition[df$basement_condition=="Ex"] <- "Excellent"
  df$basement_condition[df$basement_condition=="Gd"] <- "Good"
  df$basement_condition[df$basement_condition=="TA"] <- "Average"
  df$basement_condition[df$basement_condition=="Fa"] <- "Fair"
  df$basement_condition[df$basement_condition=="Po"] <- "Poor"
  df$basement_condition[is.na(df$basement_condition)] <- "No Basement"
  
  return(df)
}

# =====================
# map basement exposure
# =====================

data_mapping_basement_exposure <- function(df) {
  
  df$basement_exposure[df$basement_exposure=="Gd"] <- "Good Exposure"
  df$basement_exposure[df$basement_exposure=="Av"] <- "Average Exposure"
  df$basement_exposure[df$basement_exposure=="Mn"] <- "Mimimum Exposure"
  df$basement_exposure[df$basement_exposure=="No"] <- "No Exposure"
  df$basement_exposure[is.na(df$basement_exposure)] <- "No Basement"
  
  return(df)
}

# ===================
# map basement rating
# ===================

data_mapping_basement_rating <- function(df) {
  
  df$basement_rating_1[df$basement_rating_1=="GLQ"] <- "Good Living Quarters"
  df$basement_rating_1[df$basement_rating_1=="ALQ"] <- "Average Living Quarters"
  df$basement_rating_1[df$basement_rating_1=="BLQ"] <- "Below Average Living Quarters"
  df$basement_rating_1[df$basement_rating_1=="Rec"] <- "Average Rec Room"
  df$basement_rating_1[df$basement_rating_1=="LwQ"] <- "Low Quality"
  df$basement_rating_1[df$basement_rating_1=="Unf"] <- "Unfinshed"
  df$basement_rating_1[is.na(df$basement_rating_1)] <- "No Basement"
  
  df$basement_rating_2[df$basement_rating_2=="GLQ"] <- "Good Living Quarters"
  df$basement_rating_2[df$basement_rating_2=="ALQ"] <- "Average Living Quarters"
  df$basement_rating_2[df$basement_rating_2=="BLQ"] <- "Below Average Living Quarters"
  df$basement_rating_2[df$basement_rating_2=="Rec"] <- "Average Rec Room"
  df$basement_rating_2[df$basement_rating_2=="LwQ"] <- "Low Quality"
  df$basement_rating_2[df$basement_rating_2=="Unf"] <- "Unfinshed"
  df$basement_rating_2[is.na(df$basement_rating_2)] <- "No Basement"
  
  return(df)
}

# ===========
# map heating
# ===========

data_mapping_heating <- function(df) {
  
  df$heating[df$heating=="Floor"] <- "Floor Furnace"
  df$heating[df$heating=="GasA"] <- "Gas forced warm air furnace"
  df$heating[df$heating=="GasW"] <- "Gas hot water or steam heat"
  df$heating[df$heating=="Grav"] <- "Gravity furnace"
  df$heating[df$heating=="OthW"] <- "Hot water or steam heat other than gas"
  df$heating[df$heating=="Wall"] <- "Wall furnace"

  
  return(df)
}

# ===================
# map heating quality
# ===================

data_mapping_heating_quality <- function(df) {
  
  df$heating_quality[df$heating_quality=="Ex"] <- "Excellent"
  df$heating_quality[df$heating_quality=="Gd"] <- "Good"
  df$heating_quality[df$heating_quality=="TA"] <- "Average"
  df$heating_quality[df$heating_quality=="Fa"] <- "Fair"
  df$heating_quality[df$heating_quality=="Po"] <- "Poor"

  return(df)
}

# ===============
# map central air
# ===============

data_mapping_central_air <- function(df) {
  
  df$central_air[df$central_air=="Y"] <- "Yes"
  df$central_air[df$central_air=="N"] <- "No"

  return(df)
}

# ==============
# map electrical
# ==============

data_mapping_electrical <- function(df) {
  
  df$electrical[df$electrical=="SBrkr"] <- "Standard Circuit Breakers & Romex"
  df$electrical[df$electrical=="FuseA"] <- "Fuse Box over 60 AMP and all Romex wiring (Average)"
  df$electrical[df$electrical=="FuseF"] <- "60 AMP Fuse Box and mostly Romex wiring (Fair)"
  df$electrical[df$electrical=="FuseP"] <- "60 AMP Fuse Box and mostly knob & tube wiring (poor)"
  df$electrical[df$electrical=="Mix"] <- "Mixed"

  return(df)
}

# ===================
# map kitchen quality
# ===================

data_mapping_kitchen_quality <- function(df) {
  
  df$kitchen_quality[df$kitchen_quality=="Ex"] <- "Excellent"
  df$kitchen_quality[df$kitchen_quality=="Gd"] <- "Good"
  df$kitchen_quality[df$kitchen_quality=="TA"] <- "Average"
  df$kitchen_quality[df$kitchen_quality=="Fa"] <- "Fair"
  df$kitchen_quality[df$kitchen_quality=="Po"] <- "Poor"
    
  return(df)

}

# =================
# map functionality
# =================

data_mapping_functionality <- function(df) {
  
  df$functionality[df$functionality=="Typ"] <- "Typical Functionality"
  df$functionality[df$functionality=="Min1"] <- "Minor Deductions 1"
  df$functionality[df$functionality=="Min2"] <- "Minor Deductions 2"
  df$functionality[df$functionality=="Mod"] <- "Moderate Deductions"
  df$functionality[df$functionality=="Maj1"] <- "Major Deductions 1"
  df$functionality[df$functionality=="Maj2"] <- "Major Deductions 2"
  df$functionality[df$functionality=="Sev"] <- "Severely Damaged"
  df$functionality[df$functionality=="Sal"] <- "Salvage only"
  
  return(df)
  
}

# =====================
# map fireplace quality
# =====================

data_mapping_fireplace_quality <- function(df) {
  
  df$fireplace_quality[df$fireplace_quality=="Ex"] <- "Excellent"
  df$fireplace_quality[df$fireplace_quality=="Gd"] <- "Good"
  df$fireplace_quality[df$fireplace_quality=="TA"] <- "Average"
  df$fireplace_quality[df$fireplace_quality=="Fa"] <- "Fair"
  df$fireplace_quality[df$fireplace_quality=="Po"] <- "Poor"
  df$fireplace_quality[is.na(df$fireplace_quality)] <- "No Fireplace"
  
  return(df)
}
	
# ===============
# map garage type
# ===============

data_mapping_garage_type <- function(df) {
  
  df$garage_type[df$garage_type=="2Types"] <- "More than one type of garage"
  df$garage_type[df$garage_type=="Attchd"] <- "Attached to home"
  df$garage_type[df$garage_type=="Basment"] <- "Basement Garage"
  df$garage_type[df$garage_type=="BuiltIn"] <- "Built-In"
  df$garage_type[df$garage_type=="CarPort"] <- "Car Port"
  df$garage_type[df$garage_type=="Detchd"] <- "Detached from home"
  df$garage_type[is.na(df$garage_type)] <- "No Garage"
  
  return(df)
}
	
# =================
# map garage finish
# =================

data_mapping_garage_finish <- function(df) {
  
  df$garage_finish[df$garage_finish=="Fin"] <- "Finished"
  df$garage_finish[df$garage_finish=="RFn"] <- "Rough Finished"
  df$garage_finish[df$garage_finish=="Unf"] <- "Unfinished"
  df$garage_finish[is.na(df$garage_finish)] <- "No Garage"
  
  return(df)
}
	  
# ================================
# map garage quality and condition
# ================================

data_mapping_garage_quality_condition <- function(df) {
  
  df$garage_quality[df$garage_quality=="Ex"] <- "Excellent"
  df$garage_quality[df$garage_quality=="Gd"] <- "Good"
  df$garage_quality[df$garage_quality=="TA"] <- "Average"
  df$garage_quality[df$garage_quality=="Fa"] <- "Fair"
  df$garage_quality[df$garage_quality=="Po"] <- "Poor"
  df$garage_quality[is.na(df$garage_quality)] <- "No Garage"
  
  df$garage_condition[df$garage_condition=="Ex"] <- "Excellent"
  df$garage_condition[df$garage_condition=="Gd"] <- "Good"
  df$garage_condition[df$garage_condition=="TA"] <- "Average"
  df$garage_condition[df$garage_condition=="Fa"] <- "Fair"
  df$garage_condition[df$garage_condition=="Po"] <- "Poor"
  df$garage_condition[is.na(df$garage_condition)] <- "No Garage"
  
  return(df)
}

# ==================
# map paved driveway
# ==================

data_mapping_paved_driveway <- function(df) {
  
  df$paved_driveway[df$paved_driveway=="Y"] <- "Paved"
  df$paved_driveway[df$paved_driveway=="P"] <- "Partial Pavement"
  df$paved_driveway[df$paved_driveway=="N"] <- "Dirt/Gravel"

  
  return(df)
}

# ================
# map pool quality
# ================

data_mapping_pool_quality <- function(df) {
  
  df$fence_quality[df$fence_quality=="Ex"] <- "Excellent"
  df$fence_quality[df$fence_quality=="Gd"] <- "Good"
  df$fence_quality[df$fence_quality=="TA"] <- "Average/Typical"
  df$fence_quality[df$fence_quality=="Fa"] <- "Fair"
  df$fence_quality[is.na(df$fence_quality)] <- "No Pool"
  
  return(df)
}

# =================
# map fence quality
# =================

data_mapping_fence_quality <- function(df) {
  
  df$fence_quality[df$fence_quality=="GdPrv"] <- "Good Privacy"
  df$fence_quality[df$fence_quality=="MnPrv"] <- "Minimum Privacy"
  df$fence_quality[df$fence_quality=="GdWo"] <- "Good Wood"
  df$fence_quality[df$fence_quality=="MnWw"] <- "Minimum Wood/Wire"
  df$fence_quality[is.na(df$fence_quality)] <- "No Fence"
  
  return(df)
}

# =================
# map misc features
# =================

data_mapping_misc_features <- function(df) {
  
  df$misc_features[df$misc_features=="Elev"] <- "Elevator"
  df$misc_features[df$misc_features=="Gar2"] <- "2nd Garage (if not described in garage section)"
  df$misc_features[df$misc_features=="Othr"] <- "Other"
  df$misc_features[df$misc_features=="Shed"] <- "Shed (over 100 SF)"
  df$misc_features[df$misc_features=="TenC"] <- "Tennis Court"
  df$misc_features[is.na(df$misc_features)] <- "None"

  return(df)
}

# =============
# map sale type
# =============

data_mapping_sale_type <- function(df) {
  
  df$sale_type[df$sale_type=="WD"] <- "Warranty Deed - Conventional"
  df$sale_type[df$sale_type=="CWD"] <- "Warranty Deed - Cash"
  df$sale_type[df$sale_type=="VWD"] <- "Warranty Deed - VA Loan"
  df$sale_type[df$sale_type=="New"] <- "Home just constructed and sold"
  df$sale_type[df$sale_type=="COD"] <- "Court Officer Deed/Estate"
  df$sale_type[df$sale_type=="Con"] <- "Contract 15% Down payment regular terms"
  df$sale_type[df$sale_type=="ConLw"] <- "Contract Low Down payment and low interest"
  df$sale_type[df$sale_type=="ConLI"] <- "Contract Low Interest"
  df$sale_type[df$sale_type=="ConLD"] <- "Contract Low Down"
  df$sale_type[df$sale_type=="Oth"] <- "Other"
  
  return(df)
}

# ==================
# map sale condition
# ==================

data_mapping_sale_condition <- function(df) {
  
  df$sale_condition[df$sale_condition=="Normal"] <- "Normal Sale"
  df$sale_condition[df$sale_condition=="Abnorml"] <- "Abnormal Sale -  trade, foreclosure, short sale"
  df$sale_condition[df$sale_condition=="AdjLand"] <- "Adjoining Land Purchase"
  df$sale_condition[df$sale_condition=="Alloca"] <- "Allocation - two linked properties with separate deeds, typically condo with a garage unit"
  df$sale_condition[df$sale_condition=="Family"] <- "Sale between family members"
  df$sale_condition[df$sale_condition=="Partial"] <- "Home was not completed when last assessed (associated with New Homes)"
  
  return(df)
}




	


	
	
	
	
	
	
	
	
	
	
	
	
		
	
	

	
	
	
	
	
	
	
	
	
	
	
	




	
	

	
	
		
	
	
	
	
	
	


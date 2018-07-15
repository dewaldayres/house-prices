
# ===========
# pre-cleanup
# ===========

rm(list = ls())


# ====================
# source all functions
# ====================

source_path <- "./src/data_preparation/"
files <- list.files(source_path)

for (f in files)
  source(paste(source_path,f, sep=""))


# ============
# loading data
# ============

train <- read.table("./src/data/train.csv", header=T, sep=",", stringsAsFactors=F)
test <- read.table("./src/data/test.csv", header=T, sep=",", stringsAsFactors=F)


# ================
# combine datasets 
# ================

train$Set <- "train"
test$Set <- "test"
test$SalePrice <- NA

houses <- rbind(train, test)


# ===============
# column mappings 
# ===============

houses <- column_mappings(houses)


# =============
# data mappings 
# =============

houses <- data_mapping_zoning(houses)
houses <- data_mapping_street(houses)
houses <- data_mapping_alley(houses)
houses <- data_mapping_lot_shape(houses)
houses <- data_mapping_land_contour(houses)


# ============
# post-cleanup
# ============

# remove all objects except for the "passengers" dataset 
rm(list = ls()[ls()!="houses"])


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

train$set <- "train"
test$set <- "test"
test$SalePrice <- NA

houses <- rbind(train, test)


# ===============
# column mappings 
# ===============

houses <- column_mappings(houses)


# =============
# data mappings 
# =============

houses <- data_mappings(houses)


# ================
# data imputations 
# ================

# 
# year_remodelling - create new column to indicate Y or N if year built differs from year remodelled
# 

# ============
# post-cleanup
# ============

# remove all objects except for the "passengers" dataset 
rm(list = ls()[ls()!="houses"])
